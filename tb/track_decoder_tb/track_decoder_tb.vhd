library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.uart_constants.all;
use virtual_button_lib.uart_functions.all;

entity track_decoder_tb is end;

architecture tb of track_decoder_tb is

  signal clk_50mhz         : std_logic;
  signal pb_0              : std_logic := '0';
  signal pb_1              : std_logic := '0';
  signal sw_0              : std_logic := '1';
  signal sw_1              : std_logic := '0';
  signal led_0             : std_logic;
  signal led_1             : std_logic;
  signal pi_to_fpga_pin    : std_logic := '1';
  signal fpga_to_pi_pin    : std_logic;
  signal light_square_data : std_logic;

  constant cpol : integer := 0;
  constant cpha : integer := 0;

  signal send         : boolean;
  signal force_cs_low : boolean   := false;
  signal ready        : boolean;
  signal data         : std_logic_vector(7 downto 0);
  signal cs_n         : std_logic := '1';
  signal sclk         : std_logic;
  signal mosi         : std_logic := '0';
  signal miso         : std_logic;

  constant block_size : integer := 200;
begin
  mock_spi_master_1 : entity work.mock_spi_master
    port map (
      frequency    => 5_000_000,
      cpol         => cpol,
      cpha         => cpha,
      send         => send,
      force_cs_low => force_cs_low,
      ready        => ready,
      data         => data,
      cs_n         => cs_n,
      sclk         => sclk,
      mosi         => mosi);


  top_1 : entity work.top
    port map (
      clk_50mhz         => clk_50mhz,
      pb_0              => pb_0,
      pb_1              => pb_1,
      sw_0              => sw_0,
      sw_1              => sw_1,
      led_0             => led_0,
      led_1             => led_1,
      pi_to_fpga_pin    => pi_to_fpga_pin,
      fpga_to_pi_pin    => fpga_to_pi_pin,
      sclk              => sclk,
      cs_n              => cs_n,
      mosi              => mosi,
      miso              => miso,
      light_square_data => light_square_data);

  -- Clock process definitions
  clk_process : process
  begin
    clk_50mhz <= '0';
    wait for clk_period/2;
    clk_50mhz <= '1';
    wait for clk_period/2;
  end process;

  stim_proc : process
    type charfile is file of character;
    file midi_file : charfile;

    variable remaining_bytes : integer := 0;

    variable read_char : character;
    variable midi_byte : std_logic_vector(7 downto 0);
  begin

    sw_0 <= '0';
    wait for 1 us;
    sw_0 <= '1';

    wait for 1 us;



    --file_open(midi_file, "does.mid", read_mode);
    file_open(midi_file, "deck.mid", read_mode);

    while not endfile(midi_file) loop
      if remaining_bytes /= 0 then
        read(midi_file, read_char);
        midi_byte := std_logic_vector(to_unsigned(character'pos(read_char), 8));
      end if;

      if not ready then
        wait until ready;
      end if;

      if remaining_bytes = 0 then
        data            <= std_logic_vector(to_unsigned(block_size, 8));
        remaining_bytes := block_size;
      else
        data            <= midi_byte;
        remaining_bytes := remaining_bytes - 1;
      end if;

      wait for 1 ps;
      send <= true;
      wait for 1 ps;
      send <= false;
      wait for 1 ps;

    end loop;

    uart_send(std_logic_vector(to_unsigned(character'pos('q'), 8)), 115200, pi_to_fpga_pin);


    wait;
  end process;
end;
