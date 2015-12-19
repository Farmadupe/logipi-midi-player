library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package button_pkg is
  type lowercase_index is
    (a, b, c, d, e, f, g, h, i, j, k, l, m,
     n, o, p, q, r, s, t, u, v, w, x, y, z);

  type lowercase_t is array (lowercase_index'left to lowercase_index'right) 
    of character;

  constant lowercase : lowercase_t := (
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
  
  
  type button_output is record
    pressed : std_logic;
    toggle  : std_logic;
  end record;

  type button_arr is array (lowercase_index'left to lowercase_index'right)
    of button_output;


  subtype ascii_vector is std_logic_vector(7 downto 0);

  function to_ascii_vector(char : in lowercase_index) return ascii_vector;

end;

package body button_pkg is
  function to_ascii_vector(char : in lowercase_index) return ascii_vector is
  begin
    return
      std_logic_vector(
        to_unsigned(character'pos(lowercase(char)),
                    8));
  end;
end;
