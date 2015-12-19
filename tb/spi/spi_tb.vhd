library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;

entity spi_tb is
end spi_tb;

architecture behavior of spi_tb is

  constant cpol : integer := 0;
  constant cpha : integer := 0;

  --hw interface
  signal ctrl                  : ctrl_t    := ('0', '0');
  signal cs_n                  : std_logic := '1';
  signal sclk                  : std_logic := '0';
  signal mosi                  : std_logic := '0';
  signal miso                  : std_logic;
  signal request_more_from_mcu : std_logic;

  -- Clock period definitions
  constant sclk_period : time    := 100 ns;
  constant block_size  : integer := 10;


  signal new_mcu_to_fpga_data     : std_logic;
  signal mcu_to_fpga_data         : std_logic_vector(spi_word_length - 1 downto 0);
  signal enqueue_fpga_to_mcu_data : std_logic;
  signal fpga_to_mcu_data         : std_logic_vector(spi_word_length - 1 downto 0) := (others => '0');
  signal next_byte_index          : integer range 0 to block_size - 1;


  -- mock spi master signals
  signal ready        : boolean;
  signal send         : boolean;
  signal master_data  : std_logic_vector(spi_word_length - 1 downto 0);
  signal force_cs_low : boolean := false;
  
begin



  -- Instantiate the Unit Under Test (UUT)
  uut : entity virtual_button_lib.spi_top
    generic map(
      block_size => block_size,
      cpol       => 0,
      cpha       => 0
      )
    port map (
      ctrl                  => ctrl,
      cs_n                  => cs_n,
      sclk                  => sclk,
      mosi                  => mosi,
      miso                  => miso,
      request_more_from_mcu => request_more_from_mcu,
      new_mcu_to_fpga_data  => new_mcu_to_fpga_data,
      mcu_to_fpga_data      => mcu_to_fpga_data,

      enqueue_fpga_to_mcu_data => enqueue_fpga_to_mcu_data,
      fpga_to_mcu_data         => fpga_to_mcu_data,

      next_byte_index => next_byte_index
      );

  mock_spi_master_1: entity work.mock_spi_master
    port map (
      frequency    => 5_000_000,
      cpol         => cpol,
      cpha         => cpha,
      send         => send,
      force_cs_low => force_cs_low,
      ready        => ready,
      data         => mcu_to_fpga_data,
      cs_n         => cs_n,
      sclk         => sclk,
      mosi         => mosi);


  -- Clock process definitions
  clk_process : process
  begin
    ctrl.clk <= '0';
    wait for clk_period/2;
    ctrl.clk <= '1';
    wait for clk_period/2;
  end process;


  -- Stimulus process
  stim_proc : process
  begin
    ctrl.reset_n <= '0';
    wait for 1 us;
    ctrl.reset_n <= '1';

    wait;
  end process;

  fpga_send_proc : process
  begin
    wait for 10 us;
    wait until falling_edge(ctrl.clk);
    fpga_to_mcu_data         <= std_logic_vector(unsigned(fpga_to_mcu_data) + 1);
    enqueue_fpga_to_mcu_data <= '1';
    wait until falling_edge(ctrl.clk);
    enqueue_fpga_to_mcu_data <= '0';
  end process;

  mcu_send_proc : process
  begin
    wait for 50 us;
    if request_more_from_mcu = '1' then
      for i in 0 to 10 loop
        if not ready then
          wait until ready;
        end if;

        send <= true;
        wait for 1 ps;
        send <= false;
        
      end loop;
    end if;
  end process;

end;
