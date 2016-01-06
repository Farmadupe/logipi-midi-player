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

    tx_header_byte                    : out std_logic;
    header_byte                       : out std_logic_vector(7 downto 0);
    dequeue                           : out std_logic;
    ok_to_reveal_next_tx_byte_to_txer : out std_logic;

    request_more_data : out std_logic

    );
end;


architecture rtl of spi_tx_ram_controller is

  -- We need to latch the number of bytes being sent if we are in the middle of
  -- a message
  signal remaining_bytes_this_msg : integer range 0 to tx_max_block_size;
  signal header_byte_int          : std_logic_vector(7 downto 0);

  signal data_fully_latched_d1 : std_logic;
  signal data_fully_latched_re : std_logic;
begin

  calc_stuff : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then

      -- Calculate header_byte 
      if contents_count > tx_max_block_size then
        header_byte_int <=
          std_logic_vector(to_unsigned(tx_max_block_size, header_byte_int'length));
      else
        header_byte_int <=
          std_logic_vector(to_unsigned(contents_count, header_byte_int'length));
      end if;


      if contents_count /= 0 then
        request_more_data <= '1';
      else
        request_more_data <= '0';
      end if;

      if remaining_bytes_this_msg = 0 and data_fully_latched = '1' then
        tx_header_byte <= '1';
      elsif data_fully_latched = '1' then
        tx_header_byte <= '0';
      end if;
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

  calc_remaining_bytes : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        remaining_bytes_this_msg <= 0;
      else
        if data_fully_latched_re = '1' then
          if remaining_bytes_this_msg = 0 then
            remaining_bytes_this_msg <= to_integer(unsigned(header_byte_int));
          else
            remaining_bytes_this_msg <= remaining_bytes_this_msg - 1;
          end if;
        end if;
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

        if data_fully_latched_re = '1' and remaining_bytes_this_msg /= 0 then
          dequeue <= '1';
        end if;
      end if;
    end if;
  end process;

  calc_ok : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        ok_to_reveal_next_tx_byte_to_txer <= '0';
      else
        ok_to_reveal_next_tx_byte_to_txer <= data_fully_latched;
      end if;
    end if;
  end process;

  header_byte <= header_byte_int;
end;
