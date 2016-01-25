library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.sine_lut_pkg.all;

package midi_pkg is

  constant audio_freq   : integer := 44100;
  constant audio_period : time    := 1 sec / audio_freq;

  subtype midi_note_t is integer range 21 to 108;


  --To generate midi notes, we must be able to play sine waves at different
  --frequencies. Since waves are generated using a LUT, different frequencies
  --are attained by incrementing counters at varying rates. This table holds
  --the rates at which these counters must be incremented to output those sine
  --waves.
  -- TODO consider range constraining. Is it possible to do this dynamically?
  -- TODO consider unverboseing the above comment.
  type stride_arr_t is array (midi_note_t'low to midi_note_t'high) of integer;
  type period_arr_t is array (midi_note_t'low to midi_note_t'high) of real;

  function calc_periods_in_current_note return period_arr_t;
  function calc_strides return stride_arr_t;

  constant midi_counter_width : integer := 17;
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

  function calc_periods_in_current_note return period_arr_t is
    variable freq : real;
    variable ret  : period_arr_t;
  begin
    for i in midi_note_t'low to midi_note_t'high loop
      freq := calc_freq_from_midi_no(i);

      -- the ideal calculation is real(1.0 sec / freq / audio_period), but
      -- rounding problems.
      ret(i) := 1.0 / freq / (1.0 / real(audio_freq));

    end loop;

    return ret;
  end;

  function calc_strides return stride_arr_t is
    variable freq                          : real;
    variable audio_periods_in_current_note : real;
    variable ret                           : stride_arr_t;
  begin

    for i in midi_note_t'low to midi_note_t'high loop
      freq := calc_freq_from_midi_no(i);

      -- the ideal calculation is real(1.0 sec / freq / audio_period), but that
      -- has rounding problems
      audio_periods_in_current_note := 1.0 / freq / (1.0 / real(audio_freq));

      ret(i) := integer(real(midi_counter_max) / audio_periods_in_current_note);
    end loop;

    return ret;
  end;
end;
