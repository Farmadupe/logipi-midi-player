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
  generic(
    max_read_bytes : integer
    );
  port(
    ctrl    : in ctrl_t;
    buttons : in button_arr;

    -- ram read interface
    read_start_addr : out unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0) := (others => '0');
    read_num_bytes  : out integer range 0 to max_read_bytes;
    read_en         : out std_logic;
    read_busy       : in  std_logic;
    midi_ram_out   : in  std_logic_vector((max_read_bytes * 8) - 1 downto 0);

    
    contents_count : in  natural range 0 to midi_file_rx_bram_depth;
    chunk_data     : out chunk_data_t_arr;
    num_chunks     : out integer range 0 to max_num_tracks - 1;
    enable_decoder : out std_logic;
    errors         : out errors_t;
    playing_en     : out std_logic
    );
end;

architecture rtl of midi_decoder is
  signal read_start_addr_int : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal enable_decoder_int  : std_logic;

  signal read_num_bytes_int : integer range 0 to max_read_bytes;

  type midi_decoder_state_t is (
    initial_wait,

    read_chunk_header_1,
    read_chunk_header_2,

    read_mthd_1,
    read_mthd_2,

    update_track_details,

    done
    );
  signal state : midi_decoder_state_t;




  type header_data_t is record
    num_tracks     : unsigned(15 downto 0);
    division_ticks : unsigned(15 downto 0);
  end record;

  signal first_chunk       : std_logic;
  signal errors_int        : errors_t;
  signal errors_noreg      : errors_t;
  signal header_data       : header_data_t;
  signal header_data_noreg : header_data_t;


  signal chunk_data_int : chunk_data_t_arr;
  signal chunk_no       : integer range 0 to max_num_tracks;

  signal chunk_is_mtrk : std_logic;
  signal chunk_addr    : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal chunk_length  : unsigned(31 downto 0);

  -- ram related signals
  signal read_busy_d1 : std_logic;




begin
  read_start_addr <= read_start_addr_int;
  enable_decoder  <= enable_decoder_int;
  errors          <= errors_int;
  chunk_data      <= chunk_data_int;


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

  delay_read_busy : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      read_busy_d1 <= read_busy;
    end if;
  end process;

  midi_decoder_fsm : process(ctrl.clk) is


    impure function ram_read_finished return boolean is
    begin
      return read_busy = '0' and read_busy_d1 = '1';
    end;

    -- Make setting literal addresses slightly easier
    impure function format_addr(addr : std_logic_vector) return unsigned is
    begin
      return resize(unsigned(addr), read_start_addr_int'length);
    end;

  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        read_start_addr_int <= (others => '0');
        state               <= initial_wait;
        errors_int          <= (others => '0');
        header_data         <= (others => (others => '0'));
        chunk_no            <= 0;
        chunk_data_int      <= (others => (others => (others => '0')));


        chunk_addr   <= to_unsigned(0, chunk_addr'length);
        chunk_length <= to_unsigned(0, chunk_length'length);

        playing_en  <= '0';
        read_en     <= '0';
        first_chunk <= '1';
      else
        case state is
          when initial_wait =>
            if enable_decoder_int = '1' then
              state <= read_chunk_header_1;
            end if;

          -- Reads the first 8 fixed bytes of a chunk.
          when read_chunk_header_1 =>
            -- Preset the errors. Hopefully we will clear them very soon.

            -- Find the start of the chunk we are about to read by examining
            -- summing the addr and length of the previous chunk
            if first_chunk = '0' then
              chunk_addr          <= resize(8 + chunk_addr + chunk_length, chunk_addr'length);
              read_start_addr_int <= resize(8 + chunk_addr + chunk_length, chunk_addr'length);
            end if;

            read_num_bytes_int <= 8;

            -- Check if we are done by seeing if there is
            -- room for another chunk before the end of the midi file.
            if chunk_addr + chunk_length + 8 >= contents_count then
              state <= done;
            else
              state   <= read_chunk_header_2;
              read_en <= '1';
            end if;

          when read_chunk_header_2 =>
            read_en <= '0';
            if ram_read_finished then
              chunk_length <= unsigned(midi_ram_out(31 downto 0));
              case midi_ram_out(63 downto 32) is
                when mthd   => state <= read_mthd_1;
                when mtrk   => state <= update_track_details;
                when others => report "unknown chunk type found" severity note;
              end case;

            end if;



          -- Check that the midi header exists in the received data. This is a
          -- sanity check to make sure we actually have a midi file.
          --
          -- Also check that this midi file is format 1. This midi decoder
          -- can only play format 1 tracks.
          when read_mthd_1 =>
            first_chunk        <= '0';
            errors_int.no_mthd <= '0';

            read_start_addr_int <= chunk_addr + 8;
            read_en             <= '1';
            read_num_bytes_int  <= 6;
            state               <= read_mthd_2;

          when read_mthd_2 =>
            read_en <= '0';

            if ram_read_finished then

              if to_integer(unsigned(midi_ram_out(47 downto 32))) = 1 then
                errors_int.not_format_1 <= '0';
              else
                errors_int.not_format_1 <= '1';
              end if;

              header_data.num_tracks     <= unsigned(midi_ram_out(31 downto 16));
              header_data.division_ticks <= unsigned(midi_ram_out(15 downto 0));

              state <= read_chunk_header_1;
            end if;


          -- If we have correctly read a track chunk then store it.
          when update_track_details =>
            chunk_data_int(chunk_no).length    <= chunk_length;
            chunk_data_int(chunk_no).base_addr <= chunk_addr;
            chunk_no                           <= chunk_no + 1;
            state                              <= read_chunk_header_1;



          when done =>
            if errors_int.no_mthd = '0' and errors_int.not_format_1 = '0' and chunk_no > 1 then
              playing_en <= '1';
              num_chunks <= chunk_no - 1;
            end if;

        end case;
      end if;
    end if;
  end process;

  read_num_bytes <= read_num_bytes_int;

end;
