library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.button_pkg.all;
use virtual_button_lib.ws2812_data.all;
use virtual_button_lib.ws2812_constant_colours.all;

entity top is
  port(
    clk_50mhz : in std_logic;
    pb_0      : in std_logic;
    pb_1      : in std_logic;
    sw_0      : in std_logic;
    sw_1      : in std_logic;

    led_0 : out std_logic;
    led_1 : out std_logic;

    --uart interface
    pi_to_fpga_pin : in  std_logic;
    fpga_to_pi_pin : out std_logic;

    -- spi interface;
    sclk                  : in  std_logic;
    cs_n                  : in  std_logic;
    mosi                  : in  std_logic;
    miso                  : out std_logic;
    request_more_from_mcu : out std_logic;

    -- light square output
    light_square_data : out std_logic
    );
end top;

architecture rtl of top is
  signal ctrl : ctrl_t;

  -- uart signals
  signal uart_rx_data  : std_logic_vector(7 downto 0);
  signal uart_received : std_logic;

  -- button signals
  signal buttons : button_arr;

  signal request_more_from_mcu_int : std_logic;


  constant num_leds     : integer                     := 64;
  signal ws2812_data    : ws2812_array_t(0 to num_leds - 1);
  signal led_index      : integer range 0 to num_leds := 0;
  signal current_ws2812 : ws2812_t;

  signal new_mcu_to_fpga_data     : std_logic;
  signal mcu_to_fpga_data         : std_logic_vector(spi_word_length - 1 downto 0);
  signal fpga_to_mcu_data         : std_logic_vector(spi_word_length - 1 downto 0);
  signal enqueue_fpga_to_mcu_data : std_logic;

  constant block_size        : integer := 10;
  constant spi_tx_ram_depth  : integer := 1024;
  signal spi_next_byte_index : integer range 0 to block_size - 1;

  signal spi_tx_data_counter_done : std_logic;
  signal spi_tx_buffer_full       : std_logic;
  signal enable_spi_tx            : std_logic;

  signal held_spi_tx_buffer_full            : std_logic;
  constant spi_tx_buffer_full_counter_limit : integer := 500 ms / clk_period;
  signal spi_tx_buffer_full_counter         : integer range 0 to spi_tx_buffer_full_counter_limit;

  signal contents_count       : integer range 0 to spi_tx_ram_depth;
  signal contents_count_debug : ws2812_array_t(0 to 7);
begin

  uart_top_1 : entity virtual_button_lib.uart_top
    port map (
      ctrl    => ctrl,
      uart_rx => pi_to_fpga_pin,
      uart_tx => fpga_to_pi_pin,

      rx_data  => uart_rx_data,
      received => uart_received--,
      --tx_data  => uart_tx_data,
      --send     => uart_send
      );

  many_buttons_1 : entity virtual_button_lib.many_buttons
    port map (
      ctrl     => ctrl,
      data     => uart_rx_data,
      new_data => uart_received,
      buttons  => buttons
      );

  ws2812_drv_1 : entity virtual_button_lib.ws2812_drv
    generic map (
      num_leds => num_leds)
    port map (
      ctrl        => ctrl,
      data_in     => current_ws2812,
      current_led => led_index,
      data_out    => light_square_data);


  spi_top_1 : entity virtual_button_lib.spi_top
    generic map (
      tx_ram_depth => spi_tx_ram_depth,
      block_size   => block_size,
      cpol         => 0,
      cpha         => 0)
    port map (
      ctrl                  => ctrl,
      cs_n                  => cs_n,
      sclk                  => sclk,
      mosi                  => mosi,
      miso                  => miso,
      request_more_from_mcu => request_more_from_mcu_int,


      new_mcu_to_fpga_data => new_mcu_to_fpga_data,
      mcu_to_fpga_data     => mcu_to_fpga_data,


      enqueue_fpga_to_mcu_data => enqueue_fpga_to_mcu_data,
      fpga_to_mcu_data         => fpga_to_mcu_data,

      next_byte_index => spi_next_byte_index,
      full            => spi_tx_buffer_full,
      contents_count  => contents_count
      );

  debug_contents_count_1 : entity virtual_button_lib.debug_contents_count
    generic map (
      spi_tx_ram_depth => spi_tx_ram_depth)
    port map (
      ctrl                 => ctrl,
      contents_count       => contents_count,
      contents_count_debug => contents_count_debug);

  -----------------------------------------------------------------------------

  ctrl.clk <= clk_50mhz;

  resetting : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if buttons(r).pressed = '1' or sw_0 = '0' then
        ctrl.reset_n <= '0';
      else
        ctrl.reset_n <= '1';
      end if;
    end if;
  end process resetting;


  tom_is_the_best : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        led_0 <= '0';
      else
        led_0 <= pb_0 xor sw_0 xor pb_1 xor sw_1;
      end if;
    end if;
  end process;

  generate_something_to_tx_up_spi : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        fpga_to_mcu_data         <= (others => '0');
        enqueue_fpga_to_mcu_data <= '0';
      else
        enqueue_fpga_to_mcu_data <= '0';
        if spi_tx_data_counter_done = '1' and enable_spi_tx = '1' then
          fpga_to_mcu_data <= std_logic_vector(unsigned(fpga_to_mcu_data) + 1)
                              xor mcu_to_fpga_data;
          enqueue_fpga_to_mcu_data <= '1';
        end if;
      end if;
    end if;
  end process;

  hold_full_for_time_secs : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        held_spi_tx_buffer_full    <= '0';
        spi_tx_buffer_full_counter <= 0;
      else
        if spi_tx_buffer_full = '1' then
          spi_tx_buffer_full_counter <= 0;
          held_spi_tx_buffer_full    <= '1';
        else
          if spi_tx_buffer_full_counter < spi_tx_buffer_full_counter_limit then
            spi_tx_buffer_full_counter <= spi_tx_buffer_full_counter + 1;
          else
            held_spi_tx_buffer_full <= '0';
          end if;
        end if;
      end if;
    end if;
  end process;

  spi_tx_data_counter : entity virtual_button_lib.counter
    generic map (
      clk_period   => clk_period,
      counter_time => 10 us)
    port map (
      ctrl => ctrl,
      done => spi_tx_data_counter_done
      );

  ws2812_colour_select : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        ws2812_data(0) <= ws2812_red;
      elsif buttons(k).toggle = '1' then
        ws2812_data(0) <= ws2812_clear;
      elsif buttons(g).pressed = '1' then
        ws2812_data(0) <= ws2812_green;
      elsif buttons(b).pressed = '1' then
        ws2812_data(0) <= ws2812_blue;
      end if;

      -- check that spi transmitter is working by lighting a different light
      -- for each byte being transmitted ina message.
      if buttons(s).toggle = '1' then
        ws2812_data(6) <= ws2812_pink;

        if spi_next_byte_index = 0 then
          ws2812_data(7) <= ws2812_clear;
        elsif spi_next_byte_index < 2 then
          ws2812_data(7) <= ws2812_green;
        elsif spi_next_byte_index < 4 then
          ws2812_data(7) <= ws2812_pink;
        elsif spi_next_byte_index < 6 then
          ws2812_data(7) <= ws2812_red;
        elsif spi_next_byte_index < 8 then
          ws2812_data(7) <= ws2812_purple;
        elsif spi_next_byte_index < 10 then
          ws2812_data(7) <= ws2812_yellow;
        end if;
        
      else
        ws2812_data(6 to 7) <= (others => ws2812_clear);
      end if;

      -- debug spi transmitter
      if held_spi_tx_buffer_full = '1' then
        ws2812_data(8) <= ws2812_red;
      elsif enable_spi_tx = '1' then
        ws2812_data(8) <= ws2812_green;
      else
        ws2812_data(8) <= ws2812_clear;
      end if;

      if spi_tx_buffer_full = '1' then
        ws2812_data(9) <= ws2812_red;
      elsif request_more_from_mcu_int = '1' then
        ws2812_data(9) <= ws2812_green;
      else
        ws2812_data(9) <= ws2812_blue;
      end if;

      ws2812_data(16 to 23) <= contents_count_debug;


    end if;
  end process ws2812_colour_select;

  -- Enable/disable spi data transmission.
  enable_spi_tx <= buttons(e).toggle;

  current_ws2812 <= ws2812_data(led_index);

  led_1 <= '0';

  request_more_from_mcu <= request_more_from_mcu_int;

end rtl;

