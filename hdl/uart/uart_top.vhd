library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.uart_constants.all;

entity uart_top is
  port(
    ctrl : in ctrl_t;

    uart_rx : in  std_logic;
    uart_tx : out std_logic;

    rx_data  : out std_logic_vector(7 downto 0);
    received : out std_logic
    );
end;

architecture rtl of uart_top is
  --rx signals
  signal rx_data_int   : std_logic_vector(7 downto 0);
  signal framing_error : std_logic;

  --tx signals
  signal ready   : std_logic;
  signal send    : std_logic;
  signal tx_data : std_logic_vector(7 downto 0);

  --others
  signal received_int : std_logic;
begin
  
  uart_rx_1 : entity virtual_button_lib.uart_rx
    port map (
      ctrl    => ctrl,
      uart_rx => uart_rx,

      new_data      => received_int,
      framing_error => framing_error,
      data          => rx_data_int
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

end architecture;
