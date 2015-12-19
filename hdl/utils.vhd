library ieee;
use ieee.std_logic_1164.all;

package utils is
  type ctrl_t is record
    clk     : std_logic;
    reset_n : std_logic;
  end record;

  type counter_out_t is record
    done : std_logic;
  end record;

  type uart_data_t is record
    rx_data  : std_logic_vector(7 downto 0);
    received : std_logic;

    tx_data : std_logic_vector(7 downto 0);
    send    : std_logic;
  end record;

  function calc_delay_clocks(clock_period : in time;
                             delay_length : in time) return integer;

  function sync_rising_edge(signal sig_d1 : std_logic;
                            signal sig    : std_logic) return std_logic;
end;

package body utils is
  function calc_delay_clocks(clock_period : in time;
                             delay_length : in time) return integer is
  begin
    return delay_length / clock_period;
  end;

  function sync_rising_edge(signal sig_d1 : std_logic;
                            signal sig    : std_logic) return std_logic is
  begin
    if (sig_d1 = '0') and (sig = '1') then
      return '1';
    else
      return '0';
    end if;
  end;
end;

