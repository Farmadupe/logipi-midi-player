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

  constant address_width : integer := integer(ceil(log2(real(sine_addr_max))));

  signal reversed_address_1    : unsigned(address_width - 1 downto 0);
  signal address_3             : unsigned(address_width - 1 downto 0);
  signal reversed_address_2    : unsigned(address_width - 1 downto 0);
  signal read_address_int      : integer range 0 to sine_addr_max / 4 - 1;
  signal negative_read_out_int : signed(15 downto 0);
  signal read_out_int          : signed(15 downto 0);

  
begin

  ram_proc : process (clk) is
  begin
    if rising_edge(clk) then

      negative_read_out_int <= -read_out_int;
      reversed_address_1    <= to_unsigned((num_lut_entries * 2) - 1 - read_address, reversed_address_1'length);
      address_3             <= to_unsigned(read_address - (num_lut_entries * 2), address_3'length);
      reversed_address_2    <= to_unsigned((num_lut_entries * 4) - 1 - read_address, reversed_address_2'length);

      if read_address < num_lut_entries - 1 then
        read_address_int <= read_address;
        read_out         <= read_out_int;
        
      elsif read_address < (num_lut_entries * 2) - 1 then
        read_address_int <= to_integer(reversed_address_1);
        read_out         <= read_out_int;
        
      elsif read_address < (num_lut_entries * 3) - 1 then
        read_address_int <= to_integer(address_3);
        read_out         <= negative_read_out_int;
        
      else
        read_address_int <= to_integer(reversed_address_2);
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
