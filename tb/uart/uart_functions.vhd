library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.math_real.all;

package uart_functions is
  procedure uart_send(data              : in  std_logic_vector(7 downto 0);
                      baud_rate         : in  integer;
                      signal uart_value : out std_logic
                      );
end package;

package body uart_functions is
  procedure uart_send(data              : in  std_logic_vector(7 downto 0);
                      baud_rate         : in  integer;
                      signal uart_value : out std_logic) is

    function reverse_any_vector (a : in std_logic_vector)
      return std_logic_vector is
      variable result : std_logic_vector(a'range);
      alias aa        : std_logic_vector(a'reverse_range) is a;
    begin
      for i in aa'range loop
        result(i) := aa(i);
      end loop;
      return result;
    end;  -- function reverse_any_vector

    variable data_with_framing_bits : std_logic_vector(9 downto 0);
    constant bit_time               : time := (1 sec / baud_rate);

  begin
    data_with_framing_bits := '0' & reverse_any_vector(data) & '1';

    for i in data_with_framing_bits'high downto data_with_framing_bits'low loop
      uart_value <= data_with_framing_bits(i);
      wait for bit_time;
    end loop;
  end;
end package body;
