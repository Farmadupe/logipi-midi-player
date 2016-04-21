library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.ws2812_data.all;
use virtual_button_lib.ws2812_constant_colours.all;

entity debug_contents_count is
  generic (spi_tx_ram_depth : integer);
  port(
    ctrl                 : in  ctrl_t;
    contents_count       : in  integer range 0 to spi_tx_ram_depth;
    contents_count_debug : out ws2812_array_t(0 to 7)
    );
end;

architecture rtl of debug_contents_count is
  constant debug_colour : ws2812_t := ws2812_yellow;

  constant num_debug_leds   : integer := 8;
  constant contents_per_led : integer := spi_tx_ram_depth / num_debug_leds;
begin

  debug_fullness : for i in 1 to 8 generate
    go : process(ctrl.clk) is
      constant threshold : integer range 0 to spi_tx_ram_depth := contents_per_led * i;
    begin
      if rising_edge(ctrl.clk) then
        if contents_count > threshold or contents_count = spi_tx_ram_depth then
          contents_count_debug(i - 1) <= debug_colour;
        else
          contents_count_debug(i - 1) <= ws2812_clear;
        end if;
      end if;
    end process;
  end generate;
end;
