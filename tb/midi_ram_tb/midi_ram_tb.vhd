--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;


entity midi_ram_tb is
end;


architecture tb of midi_ram_tb is
  constant max_read_bytes : integer := 3;

  signal ctrl            : ctrl_t;
  signal enqueue         : std_logic;
  signal write_in_data   : std_logic_vector(8 - 1 downto 0);
  signal empty           : std_logic;
  signal full            : std_logic;
  signal contents_count  : natural range 0 to midi_file_rx_bram_depth;
  signal read_start_addr : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_num_bytes  : integer range 0 to max_read_bytes;
  signal read_en         : std_logic;
  signal read_busy       : std_logic;
  signal midi_ram_out    : std_logic_vector((max_read_bytes * 8) - 1 downto 0);
begin
  midi_ram_top_1 : entity virtual_button_lib.midi_ram_top
    generic map (
      max_read_bytes => max_read_bytes,
      queue_width    => 8
      )
    port map (
      ctrl            => ctrl,
      enqueue         => enqueue,
      write_in_data   => write_in_data,
      empty           => empty,
      full            => full,
      contents_count  => contents_count,
      read_start_addr => read_start_addr,
      read_num_bytes  => read_num_bytes,
      read_en         => read_en,
      read_busy       => read_busy,
      midi_ram_out    => midi_ram_out);


  -- Clock process definitions
  clk_process : process
  begin
    ctrl.clk <= '0';
    wait for clk_period/2;
    ctrl.clk <= '1';
    wait for clk_period/2;
  end process;

  stim_proc : process
  begin
    ctrl.reset_n    <= '0';
    enqueue         <= '0';
    write_in_data   <= (others => '0');
    read_start_addr <= (others => '0');
    read_num_bytes  <= 0;
    read_en         <= '0';

    wait for 1 us;
    ctrl.reset_n <= '1';

    -- Add some_items
    for i in 1 to 100 loop
      wait until falling_edge(ctrl.clk);
      enqueue       <= '1';
      write_in_data <= std_logic_vector(to_unsigned(i, 8));
    end loop;
    enqueue <= '0';

    -- now see if dequeueing works.
    wait until falling_edge(ctrl.clk);
    read_start_addr <= to_unsigned(0, integer(ceil(log2(real(midi_file_rx_bram_depth)))));
    read_num_bytes  <= 3;
    read_en         <= '1';
    wait until falling_edge(ctrl.clk);
    read_en         <= '0';
    wait until falling_edge(read_busy);

    wait;
  end process;
end;
