--
--      Package File Template
--
--      Purpose: This package defines supplemental types, subtypes, 
--               constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.math_real.all;

library virtual_button_lib;

package ws2812_data is

  type ws2812_t is
  record
    r : integer range 0 to 255;
    g : integer range 0 to 255;
    b : integer range 0 to 255;
  end record;
  type ws2812_array_t is array (integer range <>) of ws2812_t;

  procedure set_ws2812(
    signal w : inout ws2812_t;
    r        : in    integer range 0 to 255;
    g        : in    integer range 0 to 255;
    b        : in    integer range 0 to 255
    );

  function lighten_ws2812 (
    input     : ws2812_t;
    lightness : real)
    return ws2812_t;

  procedure clear_ws2812(signal w : inout ws2812_t);



end ws2812_data;

package body ws2812_data is
  function lighten_ws2812(input     : ws2812_t;
                          lightness : real)
    return ws2812_t is
    variable ret : ws2812_t;
  begin
    ret.r := integer(real(input.r) * lightness);
    ret.g := integer(real(input.g) * lightness);
    ret.b := integer(real(input.b) * lightness);

    return ret;
  end;
  
  procedure set_ws2812(
    signal w : inout ws2812_t;
    r        : in    integer range 0 to 255;
    g        : in    integer range 0 to 255;
    b        : in    integer range 0 to 255
    ) is
  begin
    w.r <= r;
    w.g <= g;
    w.b <= b;
  end set_ws2812;

  procedure clear_ws2812(signal w : inout ws2812_t) is
  begin
    w.r <= 0;
    w.g <= 0;
    w.b <= 0;
  end clear_ws2812;
  
end ws2812_data;
