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
    read_out_data      : in std_logic_vector(7 downto 0);
    latched_data       : in std_logic_vector(7 downto 0);

    tx_byte : out std_logic_vector(7 downto 0);
    dequeue : out std_logic

    );
end;


architecture rtl of spi_tx_ram_controller is

  -- We need to latch the number of bytes being sent if we are in the middle of
  -- a message
  signal remaining_bytes_this_msg : integer range 0 to tx_max_block_size;
  signal header_byte              : std_logic_vector(7 downto 0);

  signal data_fully_latched_d1 : std_logic;
  signal data_fully_latched_re : std_logic;

  signal read_out_data_held : std_logic_vector(7 downto 0);


  type state_t is (tx_header, tx_data, load_header_byte);
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

            if latched_data = header_byte and data_fully_latched_re = '1' then
              state <= load_header_byte;
            end if;

          when load_header_byte =>
            state <= tx_data;
            

          when tx_data =>
            if remaining_bytes_this_msg <= 1 and data_fully_latched_re = '1' then
              state <= tx_header;
            end if;
        end case;
      end if;
    end if;
  end process;

  fsm_outputs : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      case state is
        
        when tx_header =>
          tx_byte <= header_byte;

        when load_header_byte =>
          remaining_bytes_this_msg <= to_integer(unsigned(header_byte));

          
        when tx_data =>
          tx_byte <= read_out_data_held;

          if data_fully_latched_re = '1' and remaining_bytes_this_msg /= 0 then
            remaining_bytes_this_msg <= remaining_bytes_this_msg - 1;
          end if;
          
      end case;
    end if;
  end process;

  header_byte <=
    std_logic_vector(to_unsigned(tx_max_block_size, header_byte'length)) when contents_count > tx_max_block_size
    else
    std_logic_vector(to_unsigned(contents_count, header_byte'length));

  reveal_if_ok : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        read_out_data_held <= (others => '0');
      else
        if data_fully_latched = '1' then
          read_out_data_held <= read_out_data;
        end if;
      end if;
    end if;
  end process;


  calc_data_fully_latched_re_fe : process(ctrl.clk) is
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

  calc_dequeue : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        dequeue <= '0';

      else
        dequeue <= '0';

        if data_fully_latched_re = '1' and state = tx_data then
          dequeue <= '1';
        end if;
      end if;
    end if;
  end process;
end;
