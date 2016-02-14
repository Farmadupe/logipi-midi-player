library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.uart_constants.all;
use virtual_button_lib.utils.all;

entity uart_rx is
  port(
    ctrl    : in ctrl_t;
    uart_rx : in std_logic;

    new_data      : out std_logic;
    framing_error : out std_logic;
    data          : out std_logic_vector(7 downto 0);

    run_counter_dbg : out std_logic
    );
end entity;

architecture rtl of uart_rx is

  type state_t is (waiting, offset_wait, init_next_bit, wait_next_bit, read_current_bit, set_new_data_flag);
  signal state : state_t;

  -- We subtract 2 to account for time spent in states init_next_Bit and read_current_bit
  constant sampling_bits_count : integer := ((1 sec / baud_rate) / clk_period) - 2;

  constant offset_wait_count : integer := sampling_bits_count / 2;

  signal counter_max : integer range 0 to sampling_bits_count;
  signal counter     : integer range 0 to sampling_bits_count;

  signal bit_counter : integer range 0 to 9;


  signal run_counter           : std_logic;
  signal sample_data           : std_logic;
  signal check_framing_error   : std_logic;
  signal increment_bit_counter : std_logic;
  signal reset_bit_counter     : std_logic;

  signal counter_finished : std_logic;
begin

  state_nextstate : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        state <= waiting;
      else
        case state is
          
          when waiting =>
            if uart_rx = '0' then
              state <= offset_wait;
            end if;

          when offset_wait =>
            if counter_finished = '1' then
              state <= init_next_bit;
            end if;
            
          when init_next_bit =>
            state <= wait_next_bit;
            
          when wait_next_bit =>
            if counter_finished = '1' then
              state <= read_current_bit;
            end if;
            
          when read_current_bit =>
            if bit_counter = 9 then
              state <= set_new_data_flag;
            else
              state <= init_next_bit;
            end if;
            
          when set_new_data_flag =>
            state <= waiting;


          when others =>
            state <= waiting;
        end case;
      end if;
    end if;
  end process;

  fsm_outputs : process(ctrl.clk)
  begin
    
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        sample_data           <= '0';
        check_framing_error   <= '0';
        increment_bit_counter <= '0';
        reset_bit_counter     <= '0';
      else
        
        sample_data           <= '0';
        check_framing_error   <= '0';
        increment_bit_counter <= '0';
        reset_bit_counter     <= '0';

        case state is
          when waiting =>
            null;
            
          when offset_wait =>
            null;
            
          when init_next_bit =>
            increment_bit_counter <= '1';
            
          when wait_next_bit =>
            null;
            
          when read_current_bit =>
            if bit_counter >= 1 and bit_counter <= 8 then
              sample_data <= '1';
            end if;
            
          when set_new_data_flag =>
            check_framing_error <= '1';
            reset_bit_counter   <= '1';
            
          when others => null;
        end case;
      end if;
    end if;
  end process;

  run_counter <= '1' when state = offset_wait or state = wait_next_bit else '0';

  counter_max_select : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        counter_max <= 0;
      else
        if state = offset_wait then
          counter_max <= offset_wait_count;
        else
          counter_max <= sampling_bits_count;
        end if;
      end if;
    end if;
  end process;

  counting_process : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        counter <= 0;
      else
        
        if counter_finished = '1' then
          counter <= 0;
        elsif run_counter = '1' and counter < counter_max then
          counter <= counter + 1;
        end if;
      end if;
    end if;
  end process;

  counter_finished <= '1' when counter >= counter_max else '0';


  bit_counter_ctrl : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        bit_counter <= 0;
      else
        if reset_bit_counter = '1' then
          bit_counter <= 0;
        elsif increment_bit_counter = '1' then
          bit_counter <= bit_counter + 1;
        end if;
      end if;
    end if;
  end process;

  read_data : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        data <= (others => '0');
      else
        if sample_data = '1' then
          data(bit_counter - 1) <= uart_rx;
        end if;
      end if;
    end if;
  end process;

  detect_framing_error_and_set_new_data : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        new_data      <= '0';
        framing_error <= '0';
      else
        new_data      <= '0';
        framing_Error <= '0';
        if check_framing_error = '1' and uart_rx = '1' then
          new_Data <= '1';
        elsif check_framing_error = '1' and uart_rx = '0' then
          framing_error <= '1';
        end if;
      end if;
    end if;
  end process;

  run_counter_dbg <= run_counter;

end architecture;

