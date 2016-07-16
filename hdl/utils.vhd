library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package utils is
  type ctrl_t is record
    clk     : std_logic;
    reset_n : std_logic;
  end record;

  function calc_delay_clocks(clock_period : in time;
                             delay_length : in time) return integer;

  function sync_rising_edge(signal sig_d1 : std_logic;
                            signal sig    : std_logic) return std_logic;


  function to_slv(c : character) return std_logic_vector;

  -- Convert an ascii string to its slv representation.
  function to_slv(s : string) return std_logic_vector;

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


  function to_slv(c : character) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(character'pos(c), 8));
  end;

  -- Convert an ascii string to its slv representation.
  function to_slv(s : string) return std_logic_vector is
    variable ret : std_logic_vector((s'length * 8) - 1 downto 0) := (others => '0');
  begin
    for i in s'left to s'right loop
      ret := ret(ret'left - 8 downto 0) & to_slv(s(i));
    end loop;

    return ret;
  end;

end;

