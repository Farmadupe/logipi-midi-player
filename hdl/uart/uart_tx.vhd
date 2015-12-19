library IEEE;
use IEEE.STD_LOGIC_1164.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.uart_constants.all;

entity uart_tx is
  port(
    ctrl : in ctrl_t;
    send : in std_logic;
    data : in std_logic_vector (7 downto 0);

    ready   : out std_logic;
    uart_tx : out std_logic
    );
end entity;

architecture rtl of uart_tx is
  type uart_tx_state_t is (uart_ready, uart_zero_counter, uart_transmit);
  signal state : uart_tx_state_t;

  signal uart_data : std_logic_vector (9 downto 0);

  constant bit_time        : time    := 1.0 sec / baud_rate;
  constant bit_time_clocks : integer := calc_delay_clocks(clk_period, bit_time);
  signal tx_count          : integer range 0 to bit_time_clocks;
  signal tx_count_done     : std_logic;

  constant max_bit_index : integer := 9;
  signal bit_index       : integer range 0 to max_bit_index;
  
begin
  uart_fsm_nextstate : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        state <= uart_ready;
      else
        case state is
          when uart_ready =>
            if send = '1' then
              state <= uart_transmit;
            end if;
            
          when uart_transmit =>
            if tx_count_done = '1' then
              if bit_index = max_bit_index then
                state <= uart_ready;
              else
                state <= uart_zero_counter;
              end if;
            end if;

          when uart_zero_counter =>
            state <= uart_transmit;
            
          when others =>
            state <= uart_ready;
        end case;
      end if;
    end if;
  end process;

  tx_counter_ctrl : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        tx_count_done <= '0';
        tx_count      <= 0;
      else
        tx_count_done <= '0';

        if state = uart_zero_counter or state = uart_ready then
          tx_count <= 0;
        else
          if tx_count < bit_time_clocks then
            tx_count <= tx_count + 1;
          else
            tx_count_done <= '1';
          end if;
        end if;
      end if;
    end if;
  end process;

  bit_index_ctrl : process(ctrl.clk)
  begin

    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        bit_index <= 0;
      else
        if state = uart_ready then
          bit_index <= 0;
        elsif state = uart_zero_counter then
          bit_index <= bit_index + 1;
        end if;
      end if;
    end if;
  end process;

  uart_data_latch : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        uart_data <= (9      => '1',  -- Rely on optimization to not assign an ff to bit 9 
                      others => '0');   -- or bit 0
      else
        if state = uart_ready then
          -- stop bit, data bit, start bit
          uart_data <= '1' & data & '0';
        end if;
      end if;
    end if;
  end process;

  tx_bit_ctrl : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        uart_tx <= '1';
      else
        --There is latching behaviour for when the state is zero_counter
        if state = uart_ready then
          uart_tx <= '1';
        elsif state = uart_transmit then
          uart_tx <= uart_data(bit_index);
        end if;
      end if;
    end if;
  end process;

  ready <= '1' when state = uart_ready else '0';

end architecture;

