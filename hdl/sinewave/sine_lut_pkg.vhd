library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package sine_lut_pkg is

  -- Functions for creating a sine-wave lookup table. Will precalculate entries
  -- for the first quarter of a sine wave.

  --This sine lut will go into block ram. For whatever number of brams are used
  --to hold the sine lut, we will aim to fill them all the way up.
  constant num_luts : integer := 2;

  --Each bram is 1024 entries long.
  constant num_lut_entries : integer := num_luts * 1024;
  constant sine_addr_max : integer := num_lut_entries * 4;

  -- The width of each entry is 16 bits. This will be inefficient when
  -- num_lut_entries is low, because num_lut_entries will not provide enough
  -- precision to make use of 16 bits of width.
  --
  -- However since Spartan 6 block RAM can only store data of widths 1, 2, 4, 8,
  -- 16 and 32, no other width makes sense. 8 bits will give poor fidelity and 32
  -- bits will give wasteful fidelity.
  constant lut_width : integer := 16;
  type sine_lut_arr is array (0 to num_lut_entries - 1) of signed(lut_width - 1 downto 0);

  -- Function to produce the constant data needed for the LUT.
  function calc_sine_lut return sine_lut_arr;

end;

package body sine_lut_pkg is
  function calc_sine_lut return sine_lut_arr is
    variable ret : sine_lut_arr;

    -- The proportion of the way we are round the first quarter of a circle.
    -- VHDL sine is in radians, so this will count from 0 to pi.
    variable proportion : real;
  begin
    for i in 0 to num_lut_entries - 1 loop
      proportion := 0.25 * real(i) * (math_2_pi / real(num_lut_entries));
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

