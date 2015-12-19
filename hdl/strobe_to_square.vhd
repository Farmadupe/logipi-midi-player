library ieee;
use ieee.std_logic_1164.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;

entity strobe_to_square is
  port(
    ctrl   : in  ctrl_t;
    strobe : in  std_logic;
    square : out std_logic
    );
end;

architecture rtl of strobe_to_square is
  signal square_sig : std_logic;
begin
  go : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        square_sig <= '0';
      elsif strobe = '1' then
        square_sig <= not square_sig;
      end if;
    end if;
  end process go;

  square <= square_sig;
end;
