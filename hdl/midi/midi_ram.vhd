-- Ram entity for midi files. Mostly a fork from midi_ram.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;



entity midi_ram is
  generic(
    queue_depth : positive;
    queue_width : positive
    );
  port (
    ctrl : in ctrl_t;

    enqueue       : in std_logic;
    write_in_data : in std_logic_vector(queue_width - 1 downto 0);

    -- the long expression is really (addr_length - 1 downto 0), but I couldn't
    -- write that because VHDL prohibits arre_length from being defined by this
    -- point :/
    read_addr      : in  unsigned(integer(ceil(log2(real(queue_depth)))) - 1 downto 0);
    read_out_data  : out std_logic_vector(queue_width - 1 downto 0);
    empty          : out std_logic;
    full           : out std_logic;
    contents_count : out natural range 0 to queue_depth
    );
end;

architecture rtl of midi_ram is
  constant addr_length : integer := integer(ceil(log2(real(queue_depth))));
  constant data_width  : integer := 8;

  --ram signals
  signal write_enable    : std_logic;
  signal next_write_addr : unsigned(addr_length - 1 downto 0) := (others => '0');

  -- 
  signal full_int           : std_logic := '0';
  signal empty_int          : std_logic := '0';
  signal contents_count_int : natural range 0 to queue_depth;

begin
  ram_1 : entity virtual_button_lib.ram
    generic map(
      depth => queue_depth,
      width => queue_width
      )
    port map (
      ctrl            => ctrl,
      read_addr       => read_addr,
      next_write_addr => next_write_addr,
      write_enable    => write_enable,
      write_in        => write_in_data,

      read_out => read_out_data);


  calc_contents_count : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      -- the true part is needed because otherwise contents_count would be 0
      -- when the fifo was full.
      if full_int = '1' then
        contents_count_int <= queue_depth;
      else
        contents_count_int <= natural(to_integer(next_write_addr));
      end if;
    end if;
  end process;


  full           <= full_int;
  empty          <= '1' when contents_count_int = 0 else
                    '0';
  contents_count <= contents_count_int;


  write_enable <= '1' when full_int = '0' and enqueue = '1'
                  else '0';


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
          if next_write_addr + 1 = queue_depth then
            full_int <= '1';
          end if;
        end if;
      end if;
    end if;
  end process;
end;

