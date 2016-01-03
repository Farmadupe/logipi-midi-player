library ieee;
use ieee.std_logic_1164.all;

library virtual_button_lib;
use virtual_button_lib.ws2812_data.all;

package ws2812_constant_colours is
  constant ws2812_clear  : ws2812_t := lighten_ws2812(ws2812_t'(000, 000, 000), 0.05);
  constant ws2812_green  : ws2812_t := lighten_ws2812(ws2812_t'(000, 128, 000), 0.05);
  constant ws2812_red    : ws2812_t := lighten_ws2812(ws2812_t'(128, 000, 000), 0.05);
  constant ws2812_blue   : ws2812_t := lighten_ws2812(ws2812_t'(000, 000, 128), 0.05);
  constant ws2812_purple : ws2812_t := lighten_ws2812(ws2812_t'(128, 000, 128), 0.05);
  constant ws2812_pink   : ws2812_t := lighten_ws2812(ws2812_t'(255, 192, 203), 0.05);
  constant ws2812_yellow : ws2812_t := lighten_ws2812(ws2812_t'(255, 255, 000), 0.05);
end;
