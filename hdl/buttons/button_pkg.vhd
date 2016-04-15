-- the logipi has only two discrete buttons. That is not very many.
-- The code in this folder emulates the presence of more buttons by translating
-- every character rxed by the UART into a strobe or a level change in a signal.
--
-- The this package exports a type called button_arr which holds whether a
-- button has been pressed (indicated by a single clock strobe) or whether a
-- button has been toggled (indicated by a level change). By examining a signal
-- of button_arr, it is thus possible to test for user input with expressions
-- like this: 'if buttons(a).pressed then....'

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package button_pkg is

  -- Enumerate the characters that may be pressed
  type lowercase_enum is
    (a, b, c, d, e, f, g, h, i, j, k, l, m,
     n, o, p, q, r, s, t, u, v, w, x, y, z);

  type lowercase_to_ascii_arr is array (lowercase_enum'left to lowercase_enum'right) 
    of character;

  -- There is no convenient direct way to get the ascii value of a lowercase,
  -- thus we must map it individually
  constant lowercase_to_ascii_mapping : lowercase_t := (
    a => 'a',
    b => 'b',
    c => 'c',
    d => 'd',
    e => 'e',
    f => 'f',
    g => 'g',
    h => 'h',
    i => 'i',
    j => 'j',
    k => 'k',
    l => 'l',
    m => 'm',
    n => 'n',
    o => 'o',
    p => 'p',
    q => 'q',
    r => 'r',
    s => 's',
    t => 't',
    u => 'u',
    v => 'v',
    w => 'w',
    x => 'x',
    y => 'y',
    z => 'z');


  
  -- Convenience type for representing the data received from UART.
  subtype ascii_vector is std_logic_vector(7 downto 0);
  
  -- Elaboration-only function.
  -- Maps lowercase_enum into its corresponding ascii value. 
  function to_ascii_vector(char : in lowercase_enum) return ascii_vector;  
  

  type button_output is record
    pressed : std_logic;
    toggle  : std_logic;
  end record;

  type button_arr is array (lowercase_enum'left to lowercase_enum'right)
    of button_output;


end;

package body button_pkg is
  function to_ascii_vector(char : in lowercase_enum) return ascii_vector is
  begin
    return
      std_logic_vector(
        to_unsigned(character'pos(lowercase(char)),
                    8));
  end;
end;
