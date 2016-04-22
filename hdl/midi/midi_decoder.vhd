-- entity that contains an FSM to decode midi type 1 files such that the FPGA can
-- play them
--
-- Determines if a file that has been sent to midi_ram is actually a midi file.
--
-- Reads the following data:
-- * number of tracks
-- * address and length of each track


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.button_pkg.all;
use virtual_button_lib.midi_pkg.all;

entity midi_decoder is
  port(
    ctrl           : in  ctrl_t;
    buttons        : in  button_arr;
    read_addr      : out unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0) := (others => '0');
    midi_ram_data  : in  std_logic_vector(7 downto 0);
    contents_count : in  natural range 0 to midi_file_rx_bram_depth;
    chunk_data     : out chunk_data_t_arr;
    num_chunks     : out integer range 0 to max_num_tracks - 1;
    enable_decoder : out std_logic;
    errors         : out errors_t;
    midi_no_1      : out midi_note_t;
    playing_en     : out std_logic
    );
end;

architecture rtl of midi_decoder is
  signal read_addr_noreg    : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal read_addr_int      : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal enable_decoder_int : std_logic;

  type midi_decoder_state_t is (
    initial_wait,

    check_mthd_1,
    check_mthd_2,
    check_mthd_3,
    check_mthd_4,
    check_mthd_5,
    check_mthd_6,
    read_format_1,
    read_format_2,
    read_format_3,
    read_format_4,
    read_num_tracks_1,
    read_num_tracks_2,
    read_num_tracks_3,
    read_num_tracks_4,
    read_div_1,
    read_div_2,
    read_div_3,
    read_div_4,
    init_read_next_chunk,
    read_chunk_1,
    read_chunk_2,
    read_chunk_3,
    read_chunk_4,
    read_chunk_5,
    read_chunk_6,
    read_chunk_7,
    read_chunk_8,
    read_chunk_9,
    dispatch_end_of_chunk,
    done
    );
  signal state : midi_decoder_state_t;




  type header_data_t is record
    num_tracks     : unsigned(15 downto 0);
    division_ticks : unsigned(15 downto 0);
  end record;

  signal errors_int        : errors_t;
  signal errors_noreg      : errors_t;
  signal header_data       : header_data_t;
  signal header_data_noreg : header_data_t;


  signal chunk_data_int : chunk_data_t_arr;
  signal chunk_no       : integer range 0 to max_num_tracks;

  signal chunk_is_mtrk : std_logic;
  signal chunk_addr    : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal chunk_length  : unsigned(31 downto 0);

begin
  read_addr      <= read_addr_int;
  enable_decoder <= enable_decoder_int;
  errors         <= errors_int;
  chunk_data     <= chunk_data_int;


  -- Once the user is sure that the RAM is full of midi data, they will press q
  -- to start the player.
  wait_enable : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        enable_decoder_int <= '0';
      else
        if buttons(q).pressed = '1' then
          enable_decoder_int <= '1';
        end if;
      end if;
    end if;
  end process;

  fsm : process(ctrl.clk) is
    function to_slv(c : character) return std_logic_vector is
    begin
      return std_logic_vector(to_unsigned(character'pos(c), 8));
    end;
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        read_addr_int  <= (others => '0');
        state          <= initial_wait;
        errors_int     <= (others => '0');
        header_data    <= (others => (others => '0'));
        chunk_is_mtrk  <= '1';
        chunk_no       <= 0;
        chunk_data_int <= (others => (others => (others => '0')));

        -- We set this so that the FSM can read the start of the very first
        -- chunk. The very first chunk is always in address 14.
        chunk_addr <= to_unsigned(14, chunk_addr'length);

        chunk_length <= to_unsigned(0, chunk_length'length);

        playing_en <= '0';
      else
        case state is
          when initial_wait =>
            if enable_decoder_int = '1' then
              state <= check_mthd_1;
            end if;

          -- These states check byte-by-byte, that the midi header exists in
          -- the received data
          when check_mthd_1 =>
            read_addr_int <= to_unsigned(0, read_addr_int'length);
            state         <= check_mthd_2;

          when check_mthd_2 =>
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_3;

          when check_mthd_3 =>
            if midi_ram_data /= to_slv('M') then
              errors_int.no_mthd <= '1';
            end if;
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_4;

          when check_mthd_4 =>
            if midi_ram_data /= to_slv('T') then
              errors_int.no_mthd <= '1';
            end if;
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_5;

          when check_mthd_5 =>
            if midi_ram_data /= to_slv('h') then
              errors_int.no_mthd <= '1';
            end if;
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_6;

          when check_mthd_6 =>
            if midi_ram_data /= to_slv('d') then
              errors_int.no_mthd <= '1';
            end if;
            state <= read_format_1;



          when read_format_1 =>
            read_addr_int <= to_unsigned(8, read_addr_int'length);
            state         <= read_format_2;

          when read_format_2 =>
            read_addr_int <= read_addr_int + 1;
            state         <= read_format_3;

          when read_format_3 =>
            if midi_ram_data /= "00000000" then
              errors_int.not_format_1 <= '1';
            end if;
            state <= read_format_4;


          when read_format_4 =>
            if midi_ram_data /= "00000001" then
              errors_int.not_format_1 <= '1';
            end if;
            state <= read_num_tracks_1;




          when read_num_tracks_1 =>
            read_addr_int <= to_unsigned(10, read_addr_int'length);
            state         <= read_num_tracks_2;

          when read_num_tracks_2 =>
            read_addr_int <= read_addr_int + 1;
            state         <= read_num_tracks_3;

          when read_num_tracks_3 =>
            header_data.num_tracks(15 downto 8) <= unsigned(midi_ram_data);
            state                               <= read_num_tracks_4;

          when read_num_tracks_4 =>
            header_data.num_tracks(7 downto 0) <= unsigned(midi_ram_data);
            state                              <= read_div_1;



          when read_div_1 =>
            read_addr_int <= to_unsigned(12, read_addr_int'length);
            state         <= read_div_2;

          when read_div_2 =>
            read_addr_int <= read_addr_int + 1;
            state         <= read_div_3;

          when read_div_3 =>
            header_data.division_ticks(15 downto 8) <= unsigned(midi_ram_data);
            state                                   <= read_div_4;

          when read_div_4 =>
            header_data.division_ticks(7 downto 0) <= unsigned(midi_ram_data);
            state                                  <= init_read_next_chunk;



          when init_read_next_chunk =>
            chunk_is_mtrk <= '1';
            -- The synth tool should report a truncation warning here, because
            -- chunk_length is being truncated to the size of chunk_addr. We
            -- can safely ignore it for now, because data would only be lost
            -- here if there was more midi data than could fit in block ram.
            read_addr_int <= chunk_addr;
            state         <= read_chunk_1;



          when read_chunk_1 =>

            read_addr_int <= read_addr_int + 1;
            state         <= read_chunk_2;

          when read_chunk_2 =>
            read_addr_int <= read_addr_int + 1;
            if midi_ram_data /= to_slv('M') then
              chunk_is_mtrk <= '0';
            end if;
            state <= read_chunk_3;

          when read_chunk_3 =>
            read_addr_int <= read_addr_int + 1;
            if midi_ram_data /= to_slv('T') then
              chunk_is_mtrk <= '0';
            end if;
            state <= read_chunk_4;

          when read_chunk_4 =>
            read_addr_int <= read_addr_int + 1;
            if midi_ram_data /= to_slv('r') then
              chunk_is_mtrk <= '0';
            end if;
            state <= read_chunk_5;

          when read_chunk_5 =>
            read_addr_int <= read_addr_int + 1;
            if midi_ram_data /= to_slv('k') then
              chunk_is_mtrk <= '0';
            end if;
            state <= read_chunk_6;

          when read_chunk_6 =>
            read_addr_int              <= read_addr_int + 1;
            chunk_length(31 downto 24) <= unsigned(midi_ram_data);
            state                      <= read_chunk_7;

          when read_chunk_7 =>
            read_addr_int              <= read_addr_int + 1;
            chunk_length(23 downto 16) <= unsigned(midi_ram_data);
            state                      <= read_chunk_8;

          when read_chunk_8 =>
            chunk_length(15 downto 8) <= unsigned(midi_ram_data);
            state                     <= read_chunk_9;

          when read_chunk_9 =>
            chunk_length(7 downto 0) <= unsigned(midi_ram_data);
            state                    <= dispatch_end_of_chunk;

          -- If we have correctly read a track chunk then store it.
          --
          -- Check if there are more chunks after this one. If so, then carry
          -- on reading.
          when dispatch_end_of_chunk =>
            if chunk_is_mtrk = '1' then
              chunk_data_int(chunk_no).length    <= chunk_length;
              chunk_data_int(chunk_no).base_addr <= chunk_addr;
              chunk_no                           <= chunk_no + 1;
            end if;

            if chunk_addr + chunk_length + 8 >= contents_count then
              state <= done;
            else
              chunk_addr <= chunk_addr + resize(chunk_length, chunk_addr'length) + 8;
              state      <= init_read_next_chunk;
            end if;


          when done =>
            if errors_int.no_mthd = '0' and errors_int.not_format_1 = '0' and chunk_no > 1 then
              playing_en <= '1';
              num_chunks <= chunk_no - 1;
            end if;

        end case;
      end if;
    end if;
  end process;

end;
