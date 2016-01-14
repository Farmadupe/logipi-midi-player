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
  type stride_arr_t is array (midi_note_t'range) of integer;

  function calc_strides return stride_arr_t;
end;

package body midi_pkg is
  function calc_strides return stride_arr_t is

    -- There is a direct formula to convert midi numbers and frequencies.
    -- Sourced from https://newt.phys.unsw.edu.au/jw/notes.html
    function calc_freq_from_midi_no(midi_no : in integer) return real is
    begin
      return
        (2 ** ((midi_no - 69) /
               12))
        * 440;
    end;

    function calc_bit_scaling_for_strides(precision : in real) return integer is


      -- Given a desired closeness to the real frequency as a proportion (ie. 1
      -- being an absolute match, calculate how wide a counter will have to be to
      -- achieve that frequency if the counter is incremented)
      function calc_bit_scaling_for_note(
        note      : in midi_note_t;
        precision : in real;
        ) return integer is

        constant freq              : real    := calc_freq_from_midi_no(note);
        constant period            : time    := 1 sec / freq;
        constant num_audio_periods : integer := period / audio_period;
        constant ideal_increment   : real    := sine_lut_pkg.num_lut_entries / num_audio_periods;

        variable current_power_of_2 : integer := 0;
        variable current_precision  : real;

        function calc_current_precision() return real is
          variable current_bit_scaling                                    : real;
          variable exact_multiples_of_current_scaling_for_ideal_increment : real;
          variable int_multiples_of_current_scaling                       : integer;
          variable ret                                                    : real;
        begin
          current_bit_scaling := 2**-(current_power_of_2);
          exact_multiples_of_current_scaling_for_ideal_increment :=
            ideal_increment - integer(ideal_increment / current_bit_scaling);
          int_multiples_of_current_scaling := integer(floor(exact_multiples_of_current_scaling_for_ideal_increment));
          ret :=
            int_multiples_of_current_scaling / exact_multiples_of_current_scaling_for_ideal_increment;

          return current_bit_scaling;
        end;

      -- calc_bit_scaling_for_note
      begin
        current_precision := calc_current_precision;

        while current_precision < precision loop
          current_power_of_2 := current_power_of_2 - 1;
          current_precision  := calc_current_precision;
        end loop;

        return current_precision;
      end;


      -- calc_bit_scaling_for_strides
      variable best_bit_scaling    : integer := 0;
      variable current_bit_scaling : integer;
    begin
      for i in midi_note_t'range loop
        current_bit_scaling := calc_bit_scaling_for_note(i);
        if current_bit_scaling < best_bit_scaling then
          max_bit_scaling := current_bit_scaling;
        end if;

        return max_bit_scaling;
      end loop;
    end;

    -- calc_strides
    -- todo calc bit width later. calc_bit_scaling_for_strides should actually be
    -- calc_bit_scaling_for_strides. Once we have the bit scaling, we can find
    -- out what the counter max is going to be by multiplying the number of
    -- audio periods in one period of the lowest note freq and adding 
    -- the bit scaling
    constant bit_scaling                  : integer := calc_bit_scaling_for_strides;
    constant lowest_note_period           : time    := (1 sec / calc_freq_from_midi_no(midi_note_t'low));
    constant audio_periods_in_lowest_note : integer := (1 sec / calc_freq_from_midi_no(midi_note_t'low));
  begin


  end;
end;
