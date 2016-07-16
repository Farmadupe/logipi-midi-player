-- Top level file for midi ram. Support a simple write interface and a more
-- complex read interface.
--
-- The write interface is a single-clock interface. When enqueue is strobed,
-- data present on that clock cycle will be written into ram.
--
-- The read interface supports the reading of multiple bytes of data. A start
-- address and a num

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;

entity midi_ram_top is

  generic (
    max_read_bytes : integer;
    queue_width    : integer
    );
  port(
    -- clocking interfaces
    ctrl : in ctrl_t;

    -- write interface
    enqueue       : in std_logic;
    write_in_data : in std_logic_vector(queue_width - 1 downto 0);

    -- ram statuses
    empty          : out std_logic;
    full           : out std_logic;
    contents_count : out natural range 0 to midi_file_rx_bram_depth;

    -- read interface
    read_start_addr : in unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
    read_num_bytes  : in integer range 0 to max_read_bytes;
    read_en         : in std_logic;


    read_busy    : out std_logic;
    midi_ram_out : out std_logic_vector((max_read_bytes * 8) - 1 downto 0)
    );
end;

architecture rtl of midi_ram_top is
  signal read_addr         : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal current_read_addr : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal byte_counter      : integer range 0 to max_read_bytes;
  signal read_en_d1        : std_logic;

  signal midi_ram_out_int : std_logic_vector((max_read_bytes * 8) - 1 downto 0);

  signal read_out_data : std_logic_vector(7 downto 0);

  type state_t is (idle, read_1, read_2);
  signal state : state_t;
begin

  midi_ram_1 : entity virtual_button_lib.midi_ram
    generic map (
      queue_depth => midi_file_rx_bram_depth,
      queue_width => queue_width)
    port map (
      ctrl           => ctrl,
      enqueue        => enqueue,
      write_in_data  => write_in_data,
      read_addr      => read_addr,
      read_out_data  => read_out_data,
      empty          => empty,
      full           => full,
      contents_count => contents_count);


  set_read_en_d1 : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      read_en_d1 <= read_en;
    end if;
  end process;



  go : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        byte_counter <= 0;
        state        <= idle;
        read_addr    <= (others => '0');
      else
        case state is
          when idle =>
            if read_en = '1' and read_en_d1 = '0' then
              read_addr    <= read_start_addr;
              byte_counter <= read_num_bytes;
              state        <= read_1;


            end if;

          when read_1 =>
            state        <= read_2;
            byte_counter <= byte_counter - 1;

          when read_2 =>
            midi_ram_out_int <= midi_ram_out_int(midi_ram_out'left - 8 downto 0) & read_out_data;

            if byte_counter = 0 then
              state <= idle;
            else
              read_addr <= read_addr + 1;
              state     <= read_1;
            end if;
        end case;
      end if;
    end if;
  end process;

  read_busy <= '0' when state = idle else
               '1';

  midi_ram_out <= midi_ram_out_int;
end;
