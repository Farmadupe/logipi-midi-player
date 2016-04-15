-- Implement the button functionality described in button_pkg.
-- buttons are implemented on an individual character-by-character basis. This
-- entity instantiates 26 button-pressed/toggled detectors

library ieee;
use ieee.std_logic_1164.all;

library virtual_button_lib;
use virtual_button_lib.button_pkg.all;
use virtual_button_lib.utils.all;

entity many_buttons is
  port(
    ctrl     : in     ctrl_t;
    data     : in ascii_vector;
    new_data : in std_logic;
    buttons  : buffer button_arr
    );
end;

architecture rtl of many_buttons is
begin
  gen_buttons:
  for lowercase_enum in lowercase_enum'left to lowercase_enum'right generate
    single_button_1 : entity virtual_button_lib.single_button
      generic map (
        the_char => lowercase_enum)
      port map (
        ctrl     => ctrl,
        rx_data  => data,
        new_data => new_data,
        pressed  => buttons(lowercase_enum).pressed,
        toggle   => buttons(lowercase_enum).toggle
        );

  end generate;
end;
