library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.sine_lut_pkg.all;


entity sine_rom is
  port(
    clk : in std_logic;

    read_address : in  integer range 0 to sine_addr_max;
    read_out     : out signed(15 downto 0)
    );

end;

architecture rtl of sine_rom is

  signal sine_rom                 : sine_lut_arr := calc_sine_lut;
  attribute ram_style             : string;
  attribute ram_style of sine_rom : signal is "block";

  signal reversed_address      : integer range 0 to sine_addr_max;
  signal read_address_int      : integer range 0 to sine_addr_max;
  signal negative_read_out_int : signed(15 downto 0);
  signal read_out_int          : signed(15 downto 0);
  
begin

  ram_proc : process (clk) is
  begin
    if rising_edge(clk) then

      negative_read_out_int <= -read_out_int;
      reversed_address      <= num_lut_entries - read_address;



      if read_address <= num_lut_entries then
        read_address_int <= read_address;
        read_out         <= read_out_int;
        
      elsif read_address <= num_lut_entries * 2 then
        read_address_int <= reversed_address;
        read_out         <= read_out_int;
        
      elsif read_address <= num_lut_entries * 3 then
        read_address_int <= read_address;
        read_out         <= negative_read_out_int;
        
      else
        read_address_int <= reversed_address;
        read_out         <= negative_read_out_int;

      end if;
    end if;
  end process;


  ram_read_proc : process (clk) is
  begin
    if rising_edge(clk) then
      read_out_int <= sine_rom(read_address_int);
    end if;
  end process;
end;
