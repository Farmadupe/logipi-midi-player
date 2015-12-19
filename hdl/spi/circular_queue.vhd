library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;



entity circular_queue is
  generic(
    queue_depth : positive);
  port (
    ctrl : in ctrl_t;

    enqueue        : in  std_logic;
    dequeue        : in  std_logic;
    write_in_data  : in  std_logic_vector(7 downto 0);
    read_out_data  : out std_logic_vector(7 downto 0);
    empty          : out std_logic;
    full           : out std_logic;
    contents_count : out natural range 0 to queue_depth
    );
end circular_queue;

architecture rtl of circular_queue is
  constant addr_length : integer := integer(ceil(log2(real(queue_depth))));
  constant data_width  : integer := 8;

  --ram signals
  signal write_enable    : std_logic;
  signal read_addr       : unsigned(addr_length - 1 downto 0);
  signal next_write_addr : unsigned(addr_length - 1 downto 0);
  signal data_in         : std_logic_vector(data_width downto 0);
  signal data_out        : std_logic_vector(data_width downto 0);

  -- 
  signal full_int           : std_logic;
  signal empty_int          : std_logic;
  signal contents_count_int : natural range 0 to queue_depth;

--signal successful_enqueue_strobe  : std_logic;
--signal successful_dequeue_strobe  : std_logic;
--signal last_operation_was_enqueue : std_logic;
begin
  ram_1 : entity virtual_button_lib.byte_ram
    generic map(
      depth => queue_depth
      )
    port map (
      ctrl            => ctrl,
      read_addr       => read_addr,
      next_write_addr => next_write_addr,
      write_enable    => write_enable,
      write_in        => write_in_data,

      read_out => read_out_data);

  --calc_full : process(ctrl.clk) is
  --begin
  --  if rising_edge(ctrl.clk) then
  --    if (read_addr = next_write_addr) and last_operation_was_enqueue = '1' then
  --      full_int <= '1';
  --    else
  --      full_int <= '0';
  --    end if;
  --  end if;
  --end process;

  --emptying : process (ctrl.clk) is
  --begin
  --  if rising_edge(ctrl.clk) then
  --    if read_addr = next_write_addr and last_operation_was_enqueue = '0' then
  --      empty_int <= '1';
  --    else
  --      empty_int <= '0';
  --    end if;
  --  end if;
  --end process;


  --full_int <= '1' when (read_addr = next_write_addr) and last_operation_was_enqueue = '1' else
  --            '0';

  --empty_int <= '1' when (read_addr = next_write_addr) and last_operation_was_enqueue = '0' else
  --             '0';
  
  calc_contents_count : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      -- the true part is needed because otherwise contents_count would be 0
      -- when the fifo was full.
      if full_int = '1' then
        contents_count_int <= queue_depth;
      else
        contents_count_int <= natural(to_integer(next_write_addr - read_addr));
      end if;
    end if;
  end process;


  full           <= full_int;
  empty          <= empty_int;
  contents_count <= contents_count_int;



  write_enable <= '1' when full_int = '0' and enqueue = '1'
                  else '0';

  --allow a dequeue to be performed, except when there is nothing left to read. 
  dequeue_something : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        read_addr <= to_unsigned(0, read_addr'length);
        empty_int <= '1';
      else
        
        if dequeue = '1' and empty_int = '0' then
          read_addr <= read_addr + 1;
          if next_write_addr = read_addr + 1 then
            empty_int <= '1';
          end if;
        end if;

        if enqueue = '1' and empty_int = '1' then
          empty_int <= '0';
        end if;
      end if;
    end if;
  end process;

  --Allow a write to be performed, except when there is no more room
  update_write_address : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        next_write_addr <= to_unsigned(0, next_write_addr'length);
        full_int        <= '0';
      else

        if enqueue = '1' and full_int = '0' then
          next_write_addr <= next_write_addr + 1;
          if next_write_addr + 1 = read_addr then
            full_int <= '1';
          end if;
        end if;

        if dequeue = '1' and full_int = '1' then
          full_int <= '0';
        end if;
      end if;
    end if;
  end process;
end;

