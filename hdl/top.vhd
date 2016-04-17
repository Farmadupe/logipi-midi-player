library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.button_pkg.all;
use virtual_button_lib.sine_lut_pkg.all;
use virtual_button_lib.midi_pkg.all;

entity top is
  port(
    clk_50mhz : in std_logic;
    pb_0      : in std_logic;
    pb_1      : in std_logic;
    sw_0      : in std_logic;
    sw_1      : in std_logic;

    led_0 : out std_logic;
    led_1 : out std_logic;

    --uart interface
    pi_to_fpga_pin : in  std_logic;
    fpga_to_pi_pin : out std_logic;

    -- spi interface
    sclk : in  std_logic;
    cs_n : in  std_logic;
    mosi : in  std_logic;
    miso : out std_logic;

    -- light square output
    light_square_data : out std_logic
    );
end top;

architecture rtl of top is

  signal ctrl : ctrl_t;

  signal clk : std_logic;

  -- uart signals
  signal uart_rx_data    : std_logic_vector(7 downto 0);
  signal uart_received   : std_logic;
  signal run_counter_dbg : std_logic;

  -- button signals
  signal buttons : button_arr;

  -- spi signals
  signal miso_int : std_logic;


  signal spi_new_mcu_to_fpga_data     : std_logic;
  signal spi_mcu_to_fpga_data         : std_logic_vector(spi_word_length - 1 downto 0);
  signal spi_fpga_to_mcu_data         : std_logic_vector(15 downto 0);
  signal spi_enqueue_fpga_to_mcu_data : std_logic;
  signal spi_contents_count           : integer range 0 to spi_tx_ram_depth;
  signal spi_tx_buffer_full           : std_logic;

  signal enable_spi_tx : std_logic;

  --midi signals
  signal pcm_out     : signed(15 downto 0);
  signal new_pcm_out : std_logic;


  signal midi_nos : midi_note_arr_t;

  -- midi ram signals
  signal midi_ram_empty          : std_logic;
  signal midi_ram_full           : std_logic;
  signal midi_ram_contents_count : natural range 0 to midi_file_rx_bram_depth;
begin

  uart_top_1 : entity virtual_button_lib.uart_top
    port map (
      ctrl    => ctrl,
      uart_rx => pi_to_fpga_pin,
      uart_tx => fpga_to_pi_pin,

      rx_data  => uart_rx_data,
      received => uart_received,

      run_counter_dbg => run_counter_dbg
      );

  many_buttons_1 : entity virtual_button_lib.many_buttons
    port map (
      ctrl     => ctrl,
      data     => uart_rx_data,
      new_data => uart_received,
      buttons  => buttons
      );


  spi_top_1 : entity virtual_button_lib.spi_top
    generic map (
      tx_ram_depth      => spi_tx_ram_depth,
      tx_max_block_size => spi_tx_max_block_size,
      cpol              => 0,
      cpha              => 0)
    port map (
      ctrl => ctrl,
      cs_n => cs_n,
      sclk => sclk,
      mosi => mosi,
      miso => miso_int,

      new_mcu_to_fpga_data => spi_new_mcu_to_fpga_data,
      mcu_to_fpga_data     => spi_mcu_to_fpga_data,


      enqueue_fpga_to_mcu_data => spi_enqueue_fpga_to_mcu_data,
      fpga_to_mcu_data         => spi_fpga_to_mcu_data,

      full           => spi_tx_buffer_full,
      contents_count => spi_contents_count
      );


  spi_fpga_to_mcu_data <= std_logic_vector(pcm_out);


  temp_midi_note_player_1 : entity work.many_sines
    port map (
      ctrl        => ctrl,
      midi_nos    => midi_nos,
      pcm_out     => pcm_out,
      new_pcm_out => new_pcm_out);


  spi_enqueue_fpga_to_mcu_data <= new_pcm_out;



  midi_top_1 : entity virtual_button_lib.midi_top
    port map (
      ctrl           => ctrl,
      buttons        => buttons,
      enqueue        => spi_new_mcu_to_fpga_data,
      write_in_data  => spi_mcu_to_fpga_data,
      midi_nos       => midi_nos,
      empty          => midi_ram_empty,
      full           => midi_ram_full,
      contents_count => midi_ram_contents_count);


  debug_light_generator_1 : entity virtual_button_lib.debug_light_generator
    generic map(
      spi_tx_max_block_size => spi_tx_max_block_size,
      spi_tx_ram_depth      => spi_tx_ram_depth
      )
    port map (
      ctrl               => ctrl,
      spi_tx_buffer_full => spi_tx_buffer_full,
      contents_count     => spi_contents_count,
      buttons            => buttons,
      cs_n               => cs_n,
      enable_spi_tx      => enable_spi_tx,
      mosi               => mosi,
      miso               => miso_int,

      midi_ram_empty          => midi_ram_empty,
      midi_ram_full           => midi_ram_full,
      midi_ram_contents_count => midi_ram_contents_count,

      run_counter_dbg => run_counter_dbg,

      light_square_data => light_square_data
      );


    -----------------------------------------------------------------------------

    ctrl.clk <= clk_50mhz;

  resetting : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if buttons(r).pressed = '1' or sw_0 = '0' then
        ctrl.reset_n <= '0';
      else
        ctrl.reset_n <= '1';
      end if;
    end if;
  end process resetting;


  tom_is_the_best : process (ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        led_0 <= '0';
      else
        led_0 <= pb_0 xor sw_0 xor pb_1 xor sw_1;
      end if;
    end if;
  end process;


  -- Enable/disable spi data transmission.
  enable_spi_tx <= '1';

  led_1 <= '0';

  miso <= miso_int;


end rtl;

