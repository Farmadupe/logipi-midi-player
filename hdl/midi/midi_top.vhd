library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.button_pkg.all;
use virtual_button_lib.midi_pkg.all;


entity midi_top is
  port(
    ctrl          : in ctrl_t;
    buttons       : in button_arr;
    enqueue       : in std_logic;
    write_in_data : in std_logic_vector(7 downto 0);

    midi_nos : out midi_note_arr_t;
    empty    : out std_logic;
    full     : out std_logic;

    enable_decoder : out std_logic;
    errors         : out errors_t;
    contents_count : out natural range 0 to midi_file_rx_bram_depth
    );
end;

architecture rtl of midi_top is
  signal contents_count_int  : natural range 0 to midi_file_rx_bram_depth;
  signal midi_nos_int        : midi_note_arr_t;
  signal read_addr           : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_addr_track_dec : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_addr_midi_dec  : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal midi_ram_data       : std_logic_vector(7 downto 0);

  signal chunk_data : chunk_data_t_arr;
  signal num_chunks : integer range 0 to max_num_tracks - 1;
  signal playing_en : std_logic;

begin
  contents_count <= contents_count_int;
  midi_nos       <= midi_nos_int;

  midi_ram_1 : entity work.midi_ram
    generic map (
      queue_depth => midi_file_rx_bram_depth,
      queue_width => 8)
    port map (
      ctrl           => ctrl,
      enqueue        => enqueue,
      write_in_data  => write_in_data,
      read_addr      => read_addr,
      read_out_data  => midi_ram_data,
      empty          => empty,
      full           => full,
      contents_count => contents_count_int);

  midi_decoder_1 : entity work.midi_decoder
    port map (
      ctrl           => ctrl,
      buttons        => buttons,
      read_addr      => read_addr_midi_dec,
      midi_ram_data  => midi_ram_data,
      contents_count => contents_count_int,
      chunk_data     => chunk_data,
      num_chunks     => num_chunks,
      enable_decoder => enable_decoder,
      errors         => errors,
      midi_no_1      => midi_nos_int(2),
      playing_en     => playing_en
      );

  track_decoder_1 : entity work.track_decoder
    port map (
      ctrl       => ctrl,
      playing_en => playing_en,
      chunk_data => chunk_data,
      num_chunks => num_chunks,

      midi_ram_data => midi_ram_data,
      read_addr     => read_addr_track_dec);

  choose_midi_no : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        midi_nos_int(0) <= 69;
      else
        if midi_nos_int(0) < midi_note_t'high and buttons(u).pressed = '1' then
          midi_nos_int(0) <= midi_nos_int(0) + 1;
        elsif midi_nos_int(0) > midi_note_t'low and buttons(j).pressed = '1' then
          midi_nos_int(0) <= midi_nos_int(0) - 1;
        end if;
      end if;
    end if;
  end process;


  read_addr <= read_addr_midi_dec when playing_en = '0'
               else read_addr_track_dec;


end;
