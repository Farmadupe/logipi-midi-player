library ieee;
use ieee.STD_LOGIC_1164.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.button_pkg.all;
use virtual_button_lib.ws2812_data.all;
use virtual_button_lib.ws2812_constant_colours.all;

entity debug_light_generator is
  generic(
    spi_tx_max_block_size : integer;
    spi_tx_ram_depth : integer
    );
  port(
    ctrl : in ctrl_t;

    spi_tx_buffer_full  : in std_logic;
    contents_count      : in integer range 0 to spi_tx_ram_depth;
    buttons             : in button_arr;
    spi_next_byte_index : in integer range 0 to spi_tx_max_block_size - 1;
    enable_spi_tx       : in std_logic;
    request_more_from_mcu : in std_logic;

    light_square_data : out std_logic
    );
end;

architecture rtl of debug_light_generator is
  constant num_leds     : integer                     := 64;
  signal led_index      : integer range 0 to num_leds := 0;
  signal ws2812_data    : ws2812_array_t(0 to num_leds - 1);
  signal current_ws2812 : ws2812_t;

  signal contents_count_debug : ws2812_array_t(0 to 7);

  -- whenever the tx buffer fills all the way up, display a light for 0.5 sec.
  signal held_spi_tx_buffer_full            : std_logic;
  constant spi_tx_buffer_full_counter_limit : integer := 500 ms / clk_period;
  signal spi_tx_buffer_full_counter         : integer range 0 to spi_tx_buffer_full_counter_limit;
begin
  
  ws2812_drv_1 : entity virtual_button_lib.ws2812_drv
    generic map (
      num_leds => num_leds)
    port map (
      ctrl        => ctrl,
      data_in     => current_ws2812,
      current_led => led_index,
      data_out    => light_square_data);

  current_ws2812 <= ws2812_data(led_index);


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
      elsif request_more_from_mcu = '1' then
        ws2812_data(9) <= ws2812_green;
      else
        ws2812_data(9) <= ws2812_blue;
      end if;

      ws2812_data(16 to 23) <= contents_count_debug;


    end if;
  end process ws2812_colour_select;

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

  debug_contents_count_1 : entity virtual_button_lib.debug_contents_count
    generic map (
      spi_tx_ram_depth => spi_tx_ram_depth)
    port map (
      ctrl                 => ctrl,
      contents_count       => contents_count,
      contents_count_debug => contents_count_debug);


end;