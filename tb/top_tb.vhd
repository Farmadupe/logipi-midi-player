library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

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
    file time_file   : text is in "time.txt";
    file clock_file  : text is in "clock.txt";
    file enable_file : text is in "enable.txt";
    file mosi_file   : text is in "mosi.txt";

    variable time_line, clock_line, enable_line, mosi_line : line;

    variable next_time                          : time;
    variable next_clock, next_enable, next_mosi : character;

    variable success : boolean;
  begin

    while not endfile(time_file) loop
      readline(time_file, time_line);
      read(time_line, next_time, success);

      if not success then
        report "invalid time" severity error;
      end if;

      readline(clock_file, clock_line);
      read(clock_line, next_clock, success);
      if not success then
        report "invalid clock" severity error;
      end if;

      readline(enable_file, enable_line);
      read(enable_line, next_enable, success);
      if not success then
        report "invalid enable" severity error;
      end if;

      readline(mosi_file, mosi_line);
      read(mosi_line, next_mosi, success);
      if not success then
        report "invalid enable" severity error;
      end if;


      if now < next_time then
        wait for next_time - now;
      end if;

      if next_clock = '1' then
        clock <= '1';
      else
        clock <= '0';
      end if;

      if next_enable = '1' then
        enable <= '1';
      else
        enable <= '0';
      end if;

      if next_mosi = '1' then
        mosi <= '1';
      else
        mosi <= '0';
      end if;
      
    end loop;

    wait;
  end process;
end;

