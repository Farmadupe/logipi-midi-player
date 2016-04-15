-- Implement pressed/toggled detection for a single button

library ieee;
use ieee.std_logic_1164.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.button_pkg.all;

entity single_button is
  generic(
    the_char : lowercase_enum
    );

  port(
    ctrl     : in ctrl_t;
    rx_data  : in ascii_vector;
    new_data : in std_logic;

    pressed : out std_logic;
    toggle  : out std_logic
    );
end;

architecture rtl of single_button is
  constant the_char_vec : ascii_vector := to_ascii_vector(the_char);

  signal toggle_int : std_logic;
begin

  gen_outputs : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        pressed <= '0';
        toggle_int  <= '0';
      else
        pressed <= '0';
        if new_data = '1' and the_char_vec = rx_data then
          pressed <= '1';
          toggle_int  <= not toggle_int;
        end if;
      end if;
    end if;
  end process;

  toggle <= toggle_int;
end;
