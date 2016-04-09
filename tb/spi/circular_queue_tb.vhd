library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;

entity circular_queue_tb is
end;

architecture behavioural of circular_queue_tb is
  constant queue_depth  : integer := 2;
  signal ctrl           : ctrl_t;
  signal enqueue        : std_logic;
  signal dequeue        : std_logic;
  signal write_in_data  : std_logic_vector(7 downto 0);
  signal read_out_data  : std_logic_vector(7 downto 0);
  signal empty          : std_logic;
  signal full           : std_logic;
  signal contents_count : natural range 0 to queue_depth - 1;
begin

  circular_queue_1 : entity work.circular_queue
    generic map (
      queue_depth => queue_depth)
    port map (
      ctrl           => ctrl,
      enqueue        => enqueue,
      dequeue        => dequeue,
      write_in_data  => write_in_data,
      read_out_data  => read_out_data,
      empty          => empty,
      full           => full,
      contents_count => contents_count);

  -- Clock process definitions
  clk_process : process
  begin
    ctrl.clk <= '0';
    wait for clk_period/2;
    ctrl.clk <= '1';
    wait for clk_period/2;
  end process;

  stim_proc : process
    procedure write_item(value : in integer) is
    begin
      write_in_data <= std_logic_vector(to_unsigned(value, 8));
      wait until falling_edge(ctrl.clk);
      enqueue       <= '1';
      wait until falling_edge(ctrl.clk);
      enqueue       <= '0';
      wait until falling_edge(ctrl.clk);
    end;

    procedure dequeue_item is
    begin
      dequeue <= '1';
      wait until falling_edge(ctrl.clk);
      dequeue <= '0';
      wait until falling_edge(ctrl.clk);
    end;
    
  begin
    ctrl.reset_n <= '0';
    wait for 1 ms;

    -- Check reset values
    assert empty = '1' report "empty reset value fail";
    assert full = '0' report "full reset value fail";
    assert contents_count = 0 report "contents_count reset value fail";

    ctrl.reset_n <= '1';

    wait for 1 us;

    -- Check empty and full when there is no data.
    assert empty = '1' report "empty fail after reset deassert";
    assert full = '0' report "full fail after reset deassert";
    assert contents_count = 0 report "contents_count fail after reset deassert";

    -- Now add an item. Check that the queue is neither empty nor full.
    -- Also check that read_out_data is showing the same item.
    write_item(1);

    assert empty = '0' report "empty fail after single item added";
    assert full = '0' report "full fail after single item added";
    assert read_out_data = write_in_data report "read_out_data is not equal to write_in_data after first item added";
    assert contents_count = 1 report "contents_count fail after single item added";


    -- Add another item. Check that full is asserted and that read_out_data has
    -- not changed this time.
    write_item(2);
    assert empty = '0' report "empty fail when fifo should be full";
    assert full = '1' report "full fail when fifo is full";
    assert read_out_data = std_logic_vector(to_unsigned(1, 8));
    assert contents_count = 2 report "contents_count fail when fifo is full";

    -- Now to check that nothing happens, attempt to write a third value. the
    -- first item will be dequeued and we will check that the third value is
    -- not beign displayed.
    write_item(3);
    assert empty = '0' report "empty fail after writing to full queue";
    assert full = '1' report "full fail after writing to full queue";
    assert contents_count = 2 report "contents_count fail after writing to full queue";

    dequeue_item;
    assert empty = '0' report "empty fail after dequeueing full queue";
    assert full = '0' report "full fail after dequeueing  full queue";
    assert read_out_data = std_logic_vector(to_unsigned(2, 8));
    assert contents_count = 1 report "contents_count fail after dequeueing full queue";

    -- Now dequeue the final item. Check that the queue is empty again.
    dequeue_item;
    assert empty = '1' report "empty fail after emptying the queue";
    assert full = '0' report "full fail after emptying the queue";
    assert contents_count = 0 report "contents_count fail after emptying the queueue";

    -- Check that empty and full do not change when dequeueing an empty queue
    dequeue_item;
    assert empty = '1' report "empty fail after dequeueing an empty queue";
    assert full = '0' report "full fail after dequeueing an empty queue";
    assert contents_count = 0 report "contents_count fail after dequeueing and empty queue";


    wait;
  end process;
  
end;
