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


  --constant midi_pulse_time   : time    := 1 us;
  constant midi_pulse_time   : time    := 5 ms;
  constant midi_pulse_clocks : integer := midi_pulse_time / clk_period;

  constant midi_pulse_time_faster   : time    := 3 ms;
  constant midi_pulse_faster_clocks : integer := midi_pulse_time / clk_period;

  constant midi_pulse_time_fastest   : time    := 1 ms;
  constant midi_pulse_fastest_clocks : integer := midi_pulse_time / clk_period;

  signal midi_pulse_counter : integer range 0 to midi_pulse_clocks - 1;
  signal midi_pulse_limit   : integer range 0 to midi_pulse_clocks - 1;


  signal midi_pulses     : midi_pulse_arr;
  signal midi_pulse_acks : midi_pulse_arr;

  -- midi ram signals 
  constant max_read_bytes : integer := 10;
  signal read_start_addr  : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_num_bytes   : integer range 0 to max_read_bytes;
  signal read_en          : std_logic;
  signal read_busy        : std_logic;
  signal midi_ram_out     : std_logic_vector((max_read_bytes * 8) - 1 downto 0);

  -- midi ram signals from midi decoder
  signal read_start_addr_midi_dec : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_num_bytes_midi_dec  : integer range 0 to max_read_bytes;
  signal read_en_midi_dec         : std_logic;

  -- midi ram signals from track decoder
  signal read_start_addr_track_dec : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_num_bytes_track_dec  : integer range 0 to max_read_bytes;
  signal read_en_track_dec         : std_logic;

begin
  contents_count <= contents_count_int;
  midi_nos       <= midi_nos_int;


  midi_ram_top_1 : entity work.midi_ram_top
    generic map (
      max_read_bytes => max_read_bytes,
      queue_width    => 8)
    port map (
      ctrl            => ctrl,
      enqueue         => enqueue,
      write_in_data   => write_in_data,
      empty           => empty,
      full            => full,
      contents_count  => contents_count_int,
      read_start_addr => read_start_addr,
      read_num_bytes  => read_num_bytes,
      read_en         => read_en,
      read_busy       => read_busy,
      midi_ram_out    => midi_ram_out);



  midi_decoder_1 : entity work.midi_decoder
    generic map(
      max_read_bytes => max_read_bytes
      )
    port map (
      ctrl    => ctrl,
      buttons => buttons,

      -- ram read interface
      read_start_addr => read_start_addr_midi_dec,
      read_num_bytes  => read_num_bytes_midi_dec,
      read_en         => read_en_midi_dec,
      read_busy       => read_busy,
      midi_ram_out    => midi_ram_out,
      
      contents_count  => contents_count_int,

      chunk_data     => chunk_data,
      num_chunks     => num_chunks,
      enable_decoder => enable_decoder,
      errors         => errors,
      playing_en     => playing_en
      );

  track_decoder_1 : entity work.track_decoder
    generic map (
      max_read_bytes => 10
      )
    port map (
      ctrl            => ctrl,
      
      midi_pulses     => midi_pulses,
      midi_pulse_acks => midi_pulse_acks,
     
      
      playing_en      => playing_en,
      chunk_data      => chunk_data,
      num_chunks      => num_chunks,

      -- ram read interface
      read_start_addr => read_start_addr_track_dec,
      read_num_bytes  => read_num_bytes_track_dec,
      read_en         => read_en_track_dec,
      read_busy       => read_busy,
      midi_ram_out    => midi_ram_out,
     

      midi_nos      => midi_nos_int
      );


  read_start_addr <= read_start_addr_midi_dec when playing_en = '0'
                     else read_start_addr_track_dec;

  read_num_bytes <= read_num_bytes_midi_dec when playing_en = '0'
                    else read_num_bytes_track_dec;

  read_en <= read_en_midi_dec when playing_en = '0' else
             read_en_track_dec;


  gen_midi_pulse_strobe : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        midi_pulse_limit <= midi_pulse_clocks - 1;
        for i in 1 to max_num_tracks - 1 loop
          midi_pulses(i) <= '0';
        end loop;
      else

        if buttons(z).pressed = '1' then
          midi_pulse_limit <= midi_pulse_clocks - 1;
        elsif buttons(x).pressed = '1' then
          midi_pulse_limit <= midi_pulse_faster_clocks - 1;
        elsif buttons(c).pressed = '1' then
          midi_pulse_limit <= midi_pulse_faster_clocks - 1;
        end if;

        for i in 1 to max_num_tracks - 1 loop
          if midi_pulse_acks(i) = '1' then
            midi_pulses(i) <= '0';
          end if;
        end loop;


        if midi_pulse_counter = midi_pulse_clocks - 1 then
          midi_pulse_counter <= 0;
          for i in 1 to max_num_tracks - 1 loop
            midi_pulses(i) <= '1';
          end loop;
        else
          midi_pulse_counter <= midi_pulse_counter + 1;
        end if;
      end if;
    end if;
  end process;
end;
