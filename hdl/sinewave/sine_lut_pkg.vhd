-- Functions for implementing the sine wave lookup tables which are described
-- in midi_pkg.vhd.
--
-- The actual sine wave LUTs will take advantage of that fact that sine waves
-- have two axes of symmetry. Thus only 1/4 of a sinewave is stored in the
-- lookup tables. midi_pkg will never know this.
--
-- This sine lut will go into block ram. For whatever number of brams are used
-- to hold the sine lut, we will aim to fill them all the way up. the the size
-- of the LUT is expressed in terms of block rams

-- TODO: this package seems very friendly with midi_pkg, which is currently more
-- interested in the details of sine generation than anything really to do with
-- midi. Sort it out so that it makes more sense.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;

package sine_lut_pkg is


  -- Each bram is 1024 entries long.
  constant sine_addr_max : integer := sine_lut_bram_depth * 4 - 1;

  -- The width of each entry is 16 bits. This will be inefficient when
  -- num_lut_entries is low, because num_lut_entries will not provide enough
  -- precision to make use of 16 bits of width.
  --
  -- However since Spartan 6 block RAM can only store data of widths 1, 2, 4, 8,
  -- 16 and 32, no other width makes sense. 8 bits will give poor fidelity and 32
  -- bits will give wasteful fidelity.
  -- TWEAKABLE
  constant lut_width : integer := 16;
  type sine_lut_arr is array (0 to sine_lut_bram_depth - 1) of signed(lut_width - 1 downto 0);

  -- Function to produce the constant data needed for the LUT.
  -- Should be run at elaboration time only.
  function calc_sine_lut return sine_lut_arr;

end;

package body sine_lut_pkg is
  function calc_sine_lut return sine_lut_arr is
    variable ret : sine_lut_arr;

    -- The proportion of the way we are round the first quarter of a circle.
    -- VHDL sine is in radians, so this will count from 0 to pi.
    variable proportion : real;
  begin
    -- TODO: Some of the mathsy code here is a bit ugly. Can I make it prettier?
    
    for i in 0 to sine_lut_bram_depth - 1 loop
      proportion := 0.25 * real(i) * (math_2_pi / real(sine_lut_bram_depth));
      ret(i) := to_signed(integer(sin(proportion) *
                                  real(2**(lut_width - 1))), lut_width);

      -- correct an error where sin(x) = 1 is recorded as sin(x) = -1
      if i /= 0 then
        if ret(i) = -(2**(lut_width-1)) and ret(i - 1) > 0 then
          ret(i) := ret(i - 1);
        end if;
      end if;

    end loop;

    return ret;
  end;
end;

