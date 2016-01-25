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

  signal tb_ctrl   : ctrl_t;
  signal tb_rx_wip : std_logic_vector(7 downto 0);
  signal tb_rx     : std_logic_vector(7 downto 0);
  signal new_tb_rx : std_logic;

  signal next_time_sig                                  : time;
  signal next_enable_sig, next_clock_sig, next_mosi_sig : character;

  signal remaining_bytes : integer := 0;
  signal current_rx      : std_logic_vector(7 downto 0);
  signal last_rx         : std_logic_vector(7 downto 0);
begin

--  top_1 : entity virtual_button_lib.top
    top_1 : entity virtual_button_lib.top_timesim
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

  tb_ctrl.clk     <= clk_50mhz;
  tb_ctrl.reset_n <= '1';

  spi_rx_1 : entity virtual_button_lib.spi_rx
    generic map (
      cpol => 0,
      cpha => 0)
    port map (
      ctrl     => tb_ctrl,
      sclk     => sclk,
      cs_n     => cs_n,
      mosi     => miso,
      data     => tb_rx_wip,
      new_data => new_tb_rx);

  update_tb_rx : process(new_tb_rx) is
  begin
    if rising_edge(new_tb_rx) then
      tb_rx <= tb_rx_wip;
    end if;
  end process;

  --mock_spi_master_1 : entity virtual_button_lib.mock_spi_master
  --  port map (
  --    frequency    => 5_000_000,
  --    cpol         => 0,
  --    cpha         => 0,
  --    send         => send,
  --    force_cs_low => force_cs_low,
  --    ready        => ready,
  --    data         => master_data,
  --    cs_n         => cs_n,
  --    sclk         => sclk,
  --    mosi         => mosi);

  -- Clock process definitions
  clk_process : process
    constant clk_period_50 : time := 1 sec / 50_000_000;
  begin

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

  uart_things : process is
  begin
    uart_send(std_logic_vector(to_unsigned(character'pos('e'), 8)), 9600, pi_to_fpga_pin);
    wait;
  end process;

  decode_tb_rx : process(new_tb_rx) is
  begin
    if rising_edge(new_tb_rx) then
      if remaining_bytes = 0 then
        remaining_bytes <= to_integer(unsigned(tb_rx));
      else
        remaining_bytes <= remaining_bytes - 1;

        if last_rx = tb_rx and to_integer(signed(tb_rx)) /= 127 and to_integer(signed(tb_rx)) /= -128 then
          report "last_rx and tb_rx are the same" & integer'image(to_integer(signed(tb_rx))) severity failure;
        end if;

        last_rx    <= current_rx;
        current_rx <= tb_rx;
      end if;
    end if;
  end process;

  mcu_send_proc : process is
    file time_file   : text;
    file clock_file  : text;
    file enable_file : text;
    file mosi_file   : text;

    variable time_line, clock_line, enable_line, mosi_line : line;

    variable next_time                          : time;
    variable next_clock, next_enable, next_mosi : character;

    variable success : boolean;

    variable current_loop_start : time := 0 sec;
  begin

    loop
      file_open(time_file, "tb/time.txt", read_mode);
      file_open(clock_file, "tb/CLOCK.txt", read_mode);
      file_open(enable_file, "tb/ENABLE.txt", read_mode);
      file_open(mosi_file, "tb/MOSI.txt", read_mode);

      while not endfile(time_file) loop
        readline(time_file, time_line);
        read(time_line, next_time, success);
        if not success then
          report "invalid time" severity error;
        end if;
        next_time_sig <= next_time;

        readline(clock_file, clock_line);
        read(clock_line, next_clock, success);
        if not success then
          report "invalid clock" severity error;
        end if;
        next_clock_sig <= next_clock;

        readline(enable_file, enable_line);
        read(enable_line, next_enable, success);
        if not success then
          report "invalid enable" severity error;
        end if;
        next_enable_sig <= next_enable;

        readline(mosi_file, mosi_line);
        read(mosi_line, next_mosi, success);
        if not success then
          report "invalid enable" severity error;
        end if;
        next_mosi_sig <= next_mosi;


        if now < (next_time + current_loop_start) then
          wait for (next_time + current_loop_start) - now;
        end if;

        if next_clock = '1' then
          sclk <= '1';
        else
          sclk <= '0';
        end if;

        if next_enable = '1' then
          cs_n <= '1';
        else
          cs_n <= '0';
        end if;

        if next_mosi = '1' then
          mosi <= '1';
        else
          mosi <= '0';
        end if;
        
      end loop;

      file_close(time_file);
      file_close(clock_file);
      file_close(enable_file);
      file_close(mosi_file);

      current_loop_start := now;
    end loop;


    wait;
  end process;
end;

