library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library virtual_button_lib;
use virtual_button_lib.sine_lut_pkg.all;


entity sine_rom_tb is
end;

architecture behavioural of sine_rom_tb is


  signal clk          : std_logic;
  signal read_address : integer range 0 to sine_addr_max;
  signal read_out     : signed(15 downto 0);
begin

  clk_proc : process is
  begin
    clk <= '0';
    wait for 1 ns;
    clk <= '1';
    wait for 1 ns;
  end process;

  sine_rom_1 : entity virtual_button_lib.sine_rom
    port map (
      clk          => clk,
      read_address => read_address,
      read_out     => read_out);

  tb : process
  begin
    read_address <= 0;
    while read_address < sine_addr_max loop
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      wait until rising_edge(clk);
      read_address <= read_address + 1;
    end loop;

    wait;
  end process tb;

end;
