-- TestBench Template 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.uart_constants.all;
use virtual_button_lib.uart_functions.all;
use virtual_button_lib.button_pkg.all;

entity testbench is
end testbench;

architecture behavior of testbench is
  signal led_0 : std_logic;
  signal led_1 : std_logic;

  signal pi_to_fpga_pin : std_logic;
  signal fpga_to_pi_pin : std_logic;
  signal sw_0           : std_logic;
  signal clk_50mhz      : std_logic;

  signal light_square_data : std_logic;
begin

  --top_2 : entity virtual_button_lib.top
  --  port map (
  --    clk_50mhz         => clk_50mhz,
  --    pb_0              => '0',
  --    pb_1              => '0',
  --    sw_0              => sw_0,
  --    sw_1              => '0',
  --    led_0             => led_0,
  --    led_1             => led_1,
  --    pi_to_fpga_pin    => pi_to_fpga_pin,
  --    fpga_to_pi_pin    => fpga_to_pi_pin,
  --    light_square_data => light_square_data);

  -- Clock process definitions
  clk_process : process
  begin
    clk_50mhz <= '0';
    wait for clk_period/2;
    clk_50mhz <= '1';
    wait for clk_period/2;
  end process;

  tb : process
  begin
    sw_0 <= '0';
    wait for 1 ms;
    sw_0 <= '1';


    uart_send(to_ascii_vector(a), baud_rate, pi_to_fpga_pin);
    wait for 100 us;

    uart_send(to_ascii_vector(r), baud_rate, pi_to_fpga_pin);
    wait for 100 us;

    uart_send(to_ascii_vector(r), baud_rate, pi_to_fpga_pin);
    wait for 100 us;

    wait;
  end process tb;

end;
