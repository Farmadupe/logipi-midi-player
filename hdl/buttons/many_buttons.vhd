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
  for lowercase_index in lowercase_index'left to lowercase_index'right generate
    single_button_1 : entity virtual_button_lib.single_button
      generic map (
        the_char => lowercase_index)
      port map (
        ctrl     => ctrl,
        rx_data  => data,
        new_data => new_data,
        pressed  => buttons(lowercase_index).pressed,
        toggle   => buttons(lowercase_index).toggle
        );

  end generate;
end;
