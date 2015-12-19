library ieee;
use ieee.std_logic_1164.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;

entity counter is
  generic(
    clk_period   : time;
    counter_time : time
    );
  port(
    ctrl : in  ctrl_t;
    done : out std_logic
    );
end;

architecture rtl of counter is
  constant count_max : integer := counter_time / clk_period;
  signal count       : integer range 0 to count_max;
begin

  counter_proc : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        count <= 0;
        done  <= '0';
      else
        if count < count_max then
          count <= count + 1;
          done  <= '0';
        else
          count <= 0;
          done  <= '1';
        end if;
      end if;
    end if;
  end process counter_proc;

end;
