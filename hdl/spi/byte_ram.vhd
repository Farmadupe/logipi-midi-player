library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.NUMERIC_STD.all;
use ieee.math_real.all;


library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

entity byte_ram is
  
  generic(
    depth : integer
    );

  port(
    ctrl : in ctrl_t;

    read_addr       : in  unsigned(integer(ceil(log2(real(depth)))) -1 downto 0);
    next_write_addr : in  unsigned(integer(ceil(log2(real(depth)))) -1 downto 0);
    write_enable    : in  std_logic;
    write_in        : in  std_logic_vector(7 downto 0);
    read_out        : out std_logic_vector(7 downto 0)
    );

end;

--synthesize a dual port block ram
architecture rtl of byte_ram is

  type ram_type is array (0 to depth - 1) of std_logic_vector (7 downto 0);


  -- This signal is preinitialized as zeroes to remove simulation warnings..
  -- we don't actually need to zero this.
  --
  -- also when simulating under xst, if a warning 3035 is generated relating to
  -- size mismatch which may cause simulation errors, this is because depth is
  -- not a power of 2.
  signal ram : ram_type := (others => (others => '0'));
begin
  ram_proc : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if write_enable = '1' then
        ram(to_integer(next_write_addr)) <= write_in;
      end if;

      read_out <= ram(to_integer(read_addr));
    end if;
  end process;
end;
