library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mock_spi_master is
  port (
    frequency : in integer;
    cpol      : in integer;
    cpha      : in integer;

    send         : in  boolean;
    force_cs_low : in  boolean;
    ready        : out boolean;

    data : in  std_logic_vector(7 downto 0);
    cs_n : out std_logic := '1';
    sclk : out std_logic;               -- initialized elsewhere
    mosi : out std_logic := '0'
    );

end entity mock_spi_master;

----------------------------------------------------------------------------------------------------
architecture behavioural of mock_spi_master is
  signal bit_time     : time;
  signal duty_time    : time;
  signal clk_is_base  : boolean := true;
  signal desired_cs_n : std_logic := '1';
begin

  bit_time  <= 1 sec / frequency;
  duty_time <= bit_time / 2;

  sender : process is
  begin
    ready <= true;
    wait on send;
    ready <= false;

    desired_cs_n <= '0';
    for bit_index in 7 downto 0 loop    --send MSB first.
      for duty_period in 0 to 1 loop
        if duty_period = 0 then
          if cpha = 0 then
            mosi <= data(bit_index);
          end if;
          --deliberately desynchronize clk and data to make effect of cpha more apparant.
          wait for duty_time * 0.1;
          clk_is_base <= true;
          wait for duty_time * 0.9;
        else
          if cpha = 1 then
            mosi <= data(bit_index);
          end if;
          wait for duty_time * 0.1;
          clk_is_base <= false;
          wait for duty_time * 0.9;
        end if;
      end loop;
    end loop;

    --implement porch if at end of msg.
    if force_cs_low then
      wait for duty_time * 0.5;
    end if;
    
    desired_cs_n <= '1';
    clk_is_base <= true;
    mosi <= '0';

  end process sender;

  calc_sclk : process (cpol, clk_is_base) is
  begin
    if cpol = 0 then
      if clk_is_base then
        sclk <= '0';
      else
        sclk <= '1';
      end if;
    else
      if clk_is_base then
        sclk <= '1';
      else
        sclk <= '0';
      end if;
    end if;
    
  end process calc_sclk;

  calc_cs_n : process (force_cs_low, desired_cs_n) is
  begin
    if force_cs_low then
      cs_n <= '0';
    else
      cs_n <= desired_cs_n;
    end if;
  end process;
end;
