library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

entity spi_tx_ram_controller is
  generic(
    tx_max_block_size : integer
    );
  port(
    ctrl : in ctrl_t;

    contents_count     : in integer;
    data_fully_latched : in std_logic;
    next_tx_word       : in std_logic_vector(15 downto 0);
    latched_data       : in std_logic_vector(7 downto 0);

    tx_byte : out std_logic_vector(7 downto 0);
    dequeue : out std_logic

    );
end;


architecture rtl of spi_tx_ram_controller is

  -- We need to latch the number of bytes being sent if we are in the middle of
  -- a message
  signal remaining_words_this_msg : integer range 0 to tx_max_block_size * 2;
  signal header_byte              : std_logic_vector(7 downto 0);

  signal data_fully_latched_d1 : std_logic;
  signal data_fully_latched_re : std_logic;

  signal next_tx_word_held : std_logic_vector(15 downto 0);


  constant bytes_per_word          : integer := 2;
  signal remaining_bytes_this_word : integer range 0 to bytes_per_word - 1 ;
  signal next_tx_byte              : std_logic_vector(7 downto 0);


  type state_t is (tx_header, init_msg, init_word, init_byte, tx_byte_state);
  signal state : state_t;

begin

  fsm_nextstate : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then

      if ctrl.reset_n = '0' then
        state <= tx_header;
      else

        case state is
          when tx_header =>
            if latched_data /= "00000000" and data_fully_latched_re = '1' then
              state <= init_msg;
            end if;

          when init_msg =>
            state <= tx_byte_state;

          when init_word =>
            state <= tx_byte_state;

          when init_byte =>
            state <= tx_byte_state;

          when tx_byte_state =>
            -- if we are definitely sure the current byte has been sent, then
            -- prepare to send the next one.
            if data_fully_latched_re = '1' then
              if remaining_words_this_msg = 1 and remaining_bytes_this_word = 0 then
                state <= tx_header;
              elsif remaining_bytes_this_word = 0 then
                state <= init_word;
              else
                state <= init_byte;
              end if;
            end if;
        end case;
      end if;
    end if;
  end process;

  fsm_outputs : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        dequeue <= '0';
      else

        dequeue <= '0';

        case state is
          when tx_header =>
            tx_byte <= header_byte;

          when init_msg =>
            remaining_words_this_msg  <= to_integer(unsigned(latched_data) / 2);
            remaining_bytes_this_word <= bytes_per_word - 1;

            next_tx_word_held <= next_tx_word;
            dequeue           <= '1';

          when init_word =>
            remaining_words_this_msg  <= remaining_words_this_msg - 1;
            remaining_bytes_this_word <= bytes_per_word - 1;

            next_tx_word_held <= next_tx_word;
            dequeue           <= '1';

          when init_byte =>
            remaining_bytes_this_word <= remaining_bytes_this_word - 1;

          when tx_byte_state =>
            tx_byte <= next_tx_byte;
            
        end case;
      end if;
    end if;
  end process;

  header_byte <=
    std_logic_vector(to_unsigned(tx_max_block_size * bytes_per_word, header_byte'length)) when contents_count > tx_max_block_size
    else
    std_logic_vector(to_unsigned(contents_count * bytes_per_word, header_byte'length));

  calc_next_tx_byte : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      case remaining_bytes_this_word is
        when 1      => next_tx_byte <= next_tx_word_held(7 downto 0);
        when others => next_tx_byte <= next_tx_word_held(15 downto 8);
      end case;
    end if;
  end process;


  calc_data_fully_latched_re : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      data_fully_latched_d1 <= data_fully_latched;
      if data_fully_latched = '1' and data_fully_latched_d1 = '0' then
        data_fully_latched_re <= '1';
      else
        data_fully_latched_re <= '0';
      end if;

    end if;
  end process;


end;
