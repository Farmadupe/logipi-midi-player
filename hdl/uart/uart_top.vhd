library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.uart_constants.all;

entity uart_top is
  port(
    ctrl : in ctrl_t;

    uart_rx : in  std_logic;
    uart_tx : out std_logic;

    rx_data       : out std_logic_vector(7 downto 0);
    received      : out std_logic;
    framing_error : out std_logic;

    run_counter_dbg : out std_logic
    );
end;

architecture rtl of uart_top is
  --rx signals
  signal rx_data_int : std_logic_vector(7 downto 0);


  --tx signals
  signal ready   : std_logic;
  signal send    : std_logic;
  signal tx_data : std_logic_vector(7 downto 0);

  --others
  signal received_int : std_logic;

  -- framing error
  constant framing_error_extension_time : time    := 2 sec;
  constant framing_error_counter_max    : integer := framing_error_extension_time / clk_period;
  signal framing_error_counter          : integer range 0 to framing_error_counter_max;
  signal framing_error_raw              : std_logic;
  signal run_framing_error_counter      : std_logic;
begin

  uart_rx_1 : entity virtual_button_lib.uart_rx
    port map (
      ctrl    => ctrl,
      uart_rx => uart_rx,

      new_data      => received_int,
      framing_error => framing_error_raw,
      data          => rx_data_int,

      run_counter_dbg => run_counter_dbg
      );

  uart_tx_1 : entity virtual_button_lib.uart_tx
    port map (
      ctrl    => ctrl,
      send    => send,
      data    => tx_data,
      ready   => ready,
      uart_tx => uart_tx);

  --Create a loopback for the UART
  send    <= received_int;
  tx_data <= rx_data_int;

  rx_data  <= rx_data_int;
  received <= received_int;

  extend_framing_error : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        framing_error_counter <= 0;
        framing_error         <= '0';
      elsif framing_error_raw = '1' then
        run_framing_error_counter <= '1';
        framing_error             <= '1';
      elsif framing_error_counter = framing_error_counter_max then
        framing_error_counter     <= 0;
        framing_error             <= '0';
        run_framing_error_counter <= '0';
      elsif run_framing_error_counter = '1' then
        framing_error_counter <= framing_error_counter + 1;
      end if;
    end if;
  end process;

end architecture;
