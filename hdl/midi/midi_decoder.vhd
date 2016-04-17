--entity that contains an FSM to decode midi type 1 files such that the FPGA can
--play them

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
    ctrl          : in  ctrl_t;
    buttons       : in  button_arr;
    read_addr     : out unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0) := (others => '0');
    midi_ram_data : in  std_logic_vector(7 downto 0);
    midi_no_1     : out midi_note_t
    );
end;

architecture rtl of midi_decoder is
  signal read_addr_int  : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
  signal enable_decoder : std_logic;

  type midi_decoder_state_t is (
    initial_wait,

    check_mthd_1,
    check_mthd_2,
    check_mthd_3,
    check_mthd_4,
    check_mthd_5,
    check_mthd_6,
    read_num_tracks_1,
    read_num_tracks_2,
    read_num_tracks_3,
    read_num_tracks_4,
    read_div_1,
    read_div_2,
    read_div_3,
    read_div_4,
    done
    );
  signal state : midi_decoder_state_t;

  type errors_t is record
    no_mthd      : std_logic;
    not_format_1 : std_logic;
  end record;

  type header_data_t is record
    num_tracks     : unsigned(15 downto 0);
    division_ticks : unsigned(15 downto 0);
  end record;

  signal errors      : errors_t;
  signal header_data : header_data_t;
begin
  read_addr <= read_addr_int;


  -- Once the user is sure that the RAM is full of midi data, they will press q
  -- to start the player.
  wait_enable : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        enable_decoder <= '0';
      else
        if buttons(q).pressed = '1' then
          enable_decoder <= '1';
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
        read_addr_int <= (others => '0');
        state         <= initial_wait;
        errors        <= (others => '0');
        header_data   <= (others => (others => '0'));
      else
        case state is
          when initial_wait =>
            if enable_decoder = '1' then
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
              errors.no_mthd <= '1';
            end if;
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_4;

          when check_mthd_4 =>
            if midi_ram_data /= to_slv('T') then
              errors.no_mthd <= '1';
            end if;
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_5;

          when check_mthd_5 =>
            if midi_ram_data /= to_slv('h') then
              errors.no_mthd <= '1';
            end if;
            read_addr_int <= read_addr_int + 1;
            state         <= check_mthd_6;

          when check_mthd_6 =>
            if midi_ram_data /= to_slv('d') then
              errors.no_mthd <= '1';
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
            state <= done;


          when done =>
            null;

        end case;
      end if;
    end if;
  end process;

end;
