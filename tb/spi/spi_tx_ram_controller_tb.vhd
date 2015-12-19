library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;

entity spi_tx_ram_controller_tb is
end;

architecture behavioural of spi_tx_ram_controller_tb is
  signal ctrl                     : ctrl_t;
  signal fpga_to_mcu_data_latched : std_logic := '0';
  signal contents_count           : integer := 0;
  signal tx_header_byte           : std_logic;
  signal header_byte              : std_logic_vector(7 downto 0);
  signal dequeue                  : std_logic;
  signal request_more_data        : std_logic;

  signal tb_location : character;
begin
  spi_tx_ram_controller_1 : entity work.spi_tx_ram_controller
    generic map (
      block_size => 5)
    port map (
      ctrl                     => ctrl,
      fpga_to_mcu_data_latched => fpga_to_mcu_data_latched,
      contents_count           => contents_count,
      tx_header_byte           => tx_header_byte,
      header_byte              => header_byte,
      dequeue                  => dequeue,
      request_more_data        => request_more_data);

  -- Clock process definitions
  clk_process : process
  begin
    ctrl.clk <= '0';
    wait for clk_period/2;
    ctrl.clk <= '1';
    wait for clk_period/2;
  end process;

  stim_proc : process

    impure function errmsg(instr : in string) return string is
    begin
      return character'image(tb_location) & " " & instr;
    end;

    procedure strobe_fpga_to_mcu_data_latched is
    begin
      wait until falling_edge(ctrl.clk);
      fpga_to_mcu_data_latched <= '1';
      wait until falling_edge(ctrl.clk);
      fpga_to_mcu_data_latched <= '0';
    end;

  begin
    ctrl.reset_n <= '0';
    wait for 1 ms;

    -- Check reset values
    tb_location <= 'a';
    assert tx_header_byte = '0' report errmsg("tx_header_byte");
    assert header_byte = "00000000" report errmsg("tx_header_byte");
    assert dequeue = '0' report errmsg("dequeue");
    assert request_more_data = '0' report errmsg ("request_more_data");

    ctrl.reset_n <= '1';
    wait for 1 us;

    tb_location <= 'b';
    -- Check transmit zeroes if contents_count is 0.
    assert tx_header_byte = '1' report errmsg("tx_header_byte");
    assert header_byte = "00000000" report errmsg("header_byte");

    wait until falling_edge(ctrl.clk);
    strobe_fpga_to_mcu_data_latched;

    tb_location <= 'c';
    assert tx_header_byte = '1' report errmsg("tx_header_byte");
    assert header_byte = "00000000" report errmsg("header_byte");
    strobe_fpga_to_mcu_data_latched;


    -- Check that if there is one item, then two bytes are transmitted.
    tb_location    <= 'd';
    contents_count <= 1;
    wait for 3 * clk_period;
    assert tx_header_byte = '1' report errmsg("tx_header_byte");
    assert header_byte = "00000001" report errmsg("header_byte");

    tb_location <= 'e';
    strobe_fpga_to_mcu_data_latched;
    assert tx_header_byte = '1' report errmsg("tx_header_byte");
    assert header_byte = "00000001" report errmsg("header_byte");

    -- Check that the controller is asking for data to be transmitted.
    tb_location <= 'f';
    strobe_fpga_to_mcu_data_latched;
    assert tx_header_byte = '0' report errmsg("tx_header_byte");

    -- Check that after the msg is finished transmitting, then it goes back to
    -- txing empty headers.
    tb_location <=  'g';
    contents_count <= 0;
    strobe_fpga_to_mcu_data_latched;
    assert tx_header_byte = '1' report errmsg("tx_header_byte");
    assert header_byte = "00000000" report errmsg("header_byte");

    for i in 0 to 20 loop
      contents_count <= contents_count + 1;
      wait for 150 ns;
      strobe_fpga_to_mcu_data_latched;
    end loop;
    
    wait;
  end process;
end;
