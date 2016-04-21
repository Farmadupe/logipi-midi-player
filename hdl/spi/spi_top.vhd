library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

entity spi_top is
  generic(
    tx_ram_depth      : integer;
    tx_max_block_size : integer;
    cpol              : integer;
    cpha              : integer
    );
  port(
    ctrl : in ctrl_t;

    --hardware interface
    cs_n : in  std_logic;
    sclk : in  std_logic;
    mosi : in  std_logic;
    miso : out std_logic;

    -- internal receive interface
    new_mcu_to_fpga_data : out std_logic;
    mcu_to_fpga_data     : out std_logic_vector(spi_word_length - 1 downto 0);

    -- internal tx interface
    enqueue_fpga_to_mcu_data : in std_logic;
    fpga_to_mcu_data         : in std_logic_vector(15 downto 0);


    -- debug from transmitter
    full           : out std_logic;
    contents_count : out integer range 0 to tx_ram_depth
    );
end spi_top;

architecture rtl of spi_top is
  --signal data_tentatively_latched : std_logic;
  signal data_fully_latched : std_logic;
  signal header_byte        : std_logic_vector(7 downto 0);
  signal next_tx_word       : std_logic_vector(15 downto 0);
  signal tx_header_byte     : std_logic;
  signal tx_byte            : std_logic_vector(7 downto 0);
  signal latched_data       : std_logic_vector(7 downto 0);
  signal dequeue            : std_logic;
  signal empty              : std_logic;

  signal contents_count_int           : integer range 0 to tx_ram_depth
  signal new_mcu_to_fpga_data_from_rx : std_logic;
  signal remaining_bytes              : integer range 0 to 255;
  signal mcu_to_fpga_data_int         : std_logic_vector(7 downto 0);
begin

  spi_tx_1 : entity virtual_button_lib.spi_tx
    generic map (
      cpol              => cpol,
      cpha              => cpha)
    port map (
      ctrl               => ctrl,
      cs_n               => cs_n,
      sclk               => sclk,
      miso               => miso,
      data               => tx_byte,
      latched_data       => latched_data,
      data_fully_latched => data_fully_latched);

  tx_fifo : entity work.circular_queue
    generic map(
      queue_depth => tx_ram_depth,
      queue_width => 16
      )
    port map (
      ctrl           => ctrl,
      enqueue        => enqueue_fpga_to_mcu_data,
      dequeue        => dequeue,
      write_in_data  => std_logic_vector(fpga_to_mcu_data),
      read_out_data  => next_tx_word,
      empty          => empty,
      full           => full,
      contents_count => contents_count_int);

  tx_controller : entity virtual_button_lib.spi_tx_ram_controller
    generic map(
      tx_max_block_size => tx_max_block_size)
    port map(
      ctrl => ctrl,

      contents_count     => contents_count_int,
      data_fully_latched => data_fully_latched,
      next_tx_word       => next_tx_word,
      latched_data       => latched_data,

      tx_byte => tx_byte,
      dequeue => dequeue
      );

  contents_count <= contents_count_int;

  spi_rx_1 : entity virtual_button_lib.spi_rx
    generic map (
      cpol => cpol,
      cpha => cpha)
    port map (
      ctrl     => ctrl,
      sclk     => sclk,
      cs_n     => cs_n,
      mosi     => mosi,
      data     => mcu_to_fpga_data_int,
      new_data => new_mcu_to_fpga_data_from_rx);


  -- spi_rx does not know about data framing. This process does.
  -- WOrks out if if a received byte is data or framing-information. If it is
  -- data, then flats it to the rest of the fpga through new_mcu_to_fpga_data
  decode_rx_frame : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        remaining_bytes      <= 0;
        new_mcu_to_fpga_data <= '0';
      else

        new_mcu_to_fpga_data <= '0';

        if new_mcu_to_fpga_data_from_rx = '1' and remaining_bytes = 0 then
          remaining_bytes <= to_integer(unsigned(mcu_to_fpga_data_int));
        elsif new_mcu_to_fpga_data_from_rx = '1' and remaining_bytes > 0 then
          remaining_bytes      <= remaining_bytes - 1;
          new_mcu_to_fpga_data <= '1';
        end if;
      end if;
    end if;
  end process;

  mcu_to_fpga_data <= mcu_to_fpga_data_int;

end rtl;

