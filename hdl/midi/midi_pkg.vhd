-- Package for helping to implement midi synthesis on an FPGA
-- Midi enumerates musical notes. This package contains functions to help
-- implementation of this on an FPGA.
--
-- To generate notes, we will generate sine waves. this will be implemented
-- using lookup tables which store sin(x).
--
-- the following chart shows the format and scaling of what is stored in the
-- LUT.
--
--  SINE LUT LAYOUT 
--  1.0
--   |
-- s |    ---
-- i |   /   \
-- n |  /     \
-- e | /       \       
--   |          \     /
--   |           \   /
--   |            ---
--   |__________________
--0.0/0.0      x      1.0
--
-- Note that x and y values are both stored in an arbitrary scaling from 0.0 to
-- 1.0 
--
-- 
--
-- ------------------------------------------------------------------------------
-- The most common audio sampling rate is 44.1 kHz. We will thus perform one
-- LUT lookup every 1/44,100 sec. This time is called the 'audio period'

-- Different frequencies are achieved by indexing through this table
-- faster or slower through time.
--
-- Notes that are low frequency will be sampled far apart in the sine wave LUT,
-- as in the following table where samples are indicated by S:
--
--   LOW FREQ NOTE SINE LOOKUP
--   |
--   |    ---
--   |   /   \
--   |  /     \
--   | /       \       
--   |          \     /
--   |           \   /
--   |            ---
--   |__________________
--     S     S     S   
--     <----->
--
--
-- Notes that are high frequency are sampled close together in the sine wave LUT:
--
--   HIGH FREQ NOTE SINE LOOKUP
--   |
--   |    ---
--   |   /   \
--   |  /     \
--   | /       \       
--   |          \     /
--   |           \   /
--   |            ---
--   |__________________
--     S  S  S  S  S  S
--     <-->
--
-- The distance between audio samples (indicated by arrows in the
-- diagrams above) is called the 'stride'
--
--
--
-- ------------------------------------------------------------------------------
-- We need to consider a few implementation details here:
-- * We want to prevent alisaing in the x axis: Because FPGAs have no
--   multiplier, indexing through the LUTs is achieved by successive addition
--   of the stride once per audio period. Thus we should calculate the number
--   of entries in the sine LUT and the size of the counter which indexes into
--   it differently... The counter may need more precision in order to
--   eliminate cumulative error
--
--   I do not know exactly how much error is permissible. There is a wikipedia
--   article on just-noticeable differences (JND) in pitch which states that
--   minimum JND for two different pitches played independently is 0.6%.
--   However the article says that it is easier to tell the difference for
--   chords but it does not give a minimum JND for it. I will thus treat 0.6%
--   as a upper bound for pitch accuracy.
--
--
-- * We want to prevent aliasing in the Y axis. this is a topic that has been
--   well researched. I will implement 16-bit accuracy.
--   
-- * Also the number of LUT entries has an effect on aliasing in both the X and
--   Y axis. I have not reasoned about this yet.
--
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.sine_lut_pkg.all;

package midi_pkg is

  constant sample_rate   : integer := 44_100;
  constant sample_period : time    := 1 sec / sample_rate;

  -- This is the enumeration of midi notes as defined in some midi spec.
  subtype midi_note_t is integer range 21 to 108;

  -- For each midi note, holds the number of sample periods that exist in one
  -- period of that note.
  -- e.g for 440hz, there are 1 sec / 440 * 44100 hz = 100.2 sample periods in
  -- one period of that note.
  type period_arr_t is array (midi_note_t'low to midi_note_t'high) of real;
  function calc_midi_note_periods return period_arr_t;

  -- This table holds the rates at which the sine LUTs must be indexed through
  -- to output sine waves at the correct frequency.
  type stride_arr_t is array (midi_note_t'low to midi_note_t'high) of integer;
  function calc_midi_note_strides return stride_arr_t;

  -- I can't remember how I derived this exact value. See reasoning in the
  -- header for an explanation of the concept.
  constant midi_counter_width : integer := 17;

  -- A type that allows us to use generate statements to build sine generators.
  -- 
  -- TODO: this is very implementation specific. Sounds like it should not
  -- beling here.
  type midi_note_arr_t is array(0 to num_sines - 1) of midi_note_t;


  -----------------------------------------------------------------------------
  -- Common midi data typres
  type errors_t is record
    no_mthd      : std_logic;
    not_format_1 : std_logic;
  end record;


  type chunk_data_t is record
    base_addr : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
    length    : unsigned(31 downto 0);
  end record;
  type chunk_data_t_arr is array(integer range 0 to max_num_tracks - 1) of chunk_data_t;
end;

package body midi_pkg is

  constant midi_counter_max : integer := 2 ** midi_counter_width;


  -- There is a direct formula to convert midi numbers and frequencies.
  -- Sourced from https://newt.phys.unsw.edu.au/jw/notes.html
  function calc_freq_from_midi_no(midi_no : in integer) return real is
  begin
    return
      (2 ** (real(midi_no - 69) /
             12.0))
      * 440.0;
  end;

  function calc_midi_note_periods return period_arr_t is
    variable freq : real;
    variable ret  : period_arr_t;
  begin
    for i in midi_note_t'low to midi_note_t'high loop
      freq := calc_freq_from_midi_no(i);

      -- the ideal calculation is real(1.0 sec / freq / sample_period), but
      -- rounding problems.
      ret(i) := 1.0 / freq / (1.0 / real(sample_rate));

    end loop;

    return ret;
  end;

  function calc_midi_note_strides return stride_arr_t is
    variable freq                    : real;
    variable samples_in_current_note : real;
    variable ret                     : stride_arr_t;
  begin

    for i in midi_note_t'low to midi_note_t'high loop
      freq := calc_freq_from_midi_no(i);

      -- the ideal calculation is real(1.0 sec / freq / sample_rate), but that
      -- has rounding problems
      samples_in_current_note := 1.0 / freq / (1.0 / real(sample_rate));

      ret(i) := integer(real(midi_counter_max) / samples_in_current_note);
    end loop;

    return ret;
  end;
end;
