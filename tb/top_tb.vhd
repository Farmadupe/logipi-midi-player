library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.uart_constants.all;
use virtual_button_lib.uart_functions.all;
use virtual_button_lib.button_pkg.all;


entity top_tb is
end;

architecture behavioural of top_tb is
  signal clk_50mhz : std_logic;

  -- board switches
  signal pb_0 : std_logic := '0';
  signal pb_1 : std_logic := '0';
  signal sw_0 : std_logic := '1';
  signal sw_1 : std_logic := '0';

  -- board leds
  signal led_0 : std_logic;
  signal led_1 : std_logic := '1';

  -- uart signals
  signal pi_to_fpga_pin : std_logic;
  signal fpga_to_pi_pin : std_logic;

  -- spi signals
  signal sclk              : std_logic;
  signal cs_n              : std_logic;
  signal mosi              : std_logic;
  signal miso              : std_logic;
  signal light_square_data : std_logic;

  -- mock spi master signals
  signal ready        : boolean                                        := false;
  signal send         : boolean                                        := false;
  signal master_data  : std_logic_vector(spi_word_length - 1 downto 0) := (others => '0');
  signal force_cs_low : boolean                                        := false;


  signal mcu_to_fpga_data : std_logic_vector(spi_word_length - 1 downto 0);
begin

  top_1 : entity virtual_button_lib.top
    port map (
      clk_50mhz         => clk_50mhz,
      pb_0              => pb_0,
      pb_1              => pb_1,
      sw_0              => sw_0,
      sw_1              => sw_1,
      led_0             => led_0,
      led_1             => led_1,
      pi_to_fpga_pin    => pi_to_fpga_pin,
      fpga_to_pi_pin    => fpga_to_pi_pin,
      sclk              => sclk,
      cs_n              => cs_n,
      mosi              => mosi,
      miso              => miso,
      light_square_data => light_square_data);

  mock_spi_master_1 : entity virtual_button_lib.mock_spi_master
    port map (
      frequency    => 5_000_000,
      cpol         => 0,
      cpha         => 0,
      send         => send,
      force_cs_low => force_cs_low,
      ready        => ready,
      data         => master_data,
      cs_n         => cs_n,
      sclk         => sclk,
      mosi         => mosi);

  -- Clock process definitions
  clk_process : process
    constant clk_period_50 : time := 1 sec / 50_000_000;
  begin
    wait for 100 us;

    loop
      clk_50mhz <= '0';
      wait for clk_period_50/2;
      clk_50mhz <= '1';
      wait for clk_period_50/2;
    end loop;
  end process;

  -- Stimulus process
  stim_proc : process
  begin
    sw_0 <= '0';
    wait for 1 us;
    sw_0 <= '1';


    wait;
  end process;



  mcu_send_proc : process is
    procedure spi_send(data : in std_logic_vector(7 downto 0)) is
    begin
      master_data <= data;
      wait for 1 ps;
      if not ready then
        wait until ready;
      end if;

      send <= true;
      wait for 1 ps;
      send <= false;
      
    end;
  begin

    wait for 110 ms;

    spi_send("10101010");
    spi_send("10101010");
    spi_send("10101010");

    loop
      spi_send("00000000");
    end loop;



    wait;
  end process;
end;

