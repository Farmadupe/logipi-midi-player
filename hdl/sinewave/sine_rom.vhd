library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.sine_lut_pkg.all;
use virtual_button_lib.utils.all;

entity sine_rom is
  port(
    ctrl : in ctrl_t;

    read_address_d0 : in  integer range 0 to sine_addr_max;
    read_out_d1     : out signed(15 downto 0)
    );

end;

architecture rtl of sine_rom is

  signal sine_rom                 : sine_lut_arr := calc_sine_lut;
  attribute ram_style             : string;
  attribute ram_style of sine_rom : signal is "block";

  constant address_width : integer := integer(ceil(log2(real(sine_addr_max))));

  signal read_address_d1          : integer range 0 to sine_addr_max;
  signal read_address_int_d0      : integer range 0 to sine_lut_bram_depth - 1;
  signal negative_read_out_int_d1 : signed(lut_width - 1 downto 0);
  signal read_out_int_d1          : signed(lut_width - 1 downto 0);

  type modes is (normal_inc, normal_dec, inv_inc, inv_dec);
  --signal mode : modes;

  function calc_mode(read_address : in integer range 0 to sine_addr_max) return modes is
  begin
    if read_address < sine_lut_bram_depth then
      return normal_inc;
    elsif read_address < 2 * sine_lut_bram_depth then
      return normal_dec;
    elsif read_address < 3 * sine_lut_bram_depth then
      return inv_inc;
    else
      return inv_dec;
    end if;
  end;


begin

  negative_read_out_int_d1 <= -read_out_int_d1;

  delay_read_address : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      read_address_d1 <= read_address_d0;
    end if;
  end process;


  ram_proc : process (read_address_d0) is
  --variable mode : modes;
  begin
    --if rising_edge(ctrl.clk) then
    if calc_mode(read_address_d0) = normal_inc then
      read_address_int_d0 <= read_address_d0;
    elsif calc_mode(read_address_d0) = normal_dec then
      read_address_int_d0 <= (sine_lut_bram_depth * 2) - 1 - read_address_d0;
    elsif calc_mode(read_address_d0) = inv_inc then
      read_address_int_d0 <= read_address_d0 - (2 * sine_lut_bram_depth);
    else
      read_address_int_d0 <= (sine_lut_bram_depth * 4) - 1 - read_address_d0;
    end if;
  --end if;
  end process;


  ram_read_proc : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      read_out_int_d1 <= sine_rom(read_address_int_d0);
    end if;
  end process;

  assign_outputs : process(read_address_d1, read_out_int_d1, negative_read_out_int_d1)
    variable mode : modes;
  begin
    mode := calc_mode(read_address_d1);
    if mode = normal_inc or mode = normal_dec then
      read_out_d1 <= read_out_int_d1;
    else
      read_out_d1 <= negative_read_out_int_d1;
    end if;
  end process;
end;
