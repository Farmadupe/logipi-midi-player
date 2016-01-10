library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.sine_lut_pkg.all;


entity sine_rom is
  port(
    clk : in std_logic;

    read_address : in  integer range 0 to sine_lut_pkg.num_lut_entries;
    read_out     : out signed(15 downto 0)
    );

end;

architecture rtl of sine_rom is

  constant sine_rom                     : sine_lut_arr := calc_sine_lut;
  attribute ram_style                   : string;
  attribute ram_style of font_table_rom : constant is "block";
begin
  ram_proc : process (clk) is
  begin
    if rising_edge(clk) then
      read_out <= font_table_rom(read_address);
    end if;
  end process;
end;