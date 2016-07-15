library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.midi_pkg.all;

entity track_decoder is
  port(
    ctrl            : in  ctrl_t;
    midi_pulses     : in  midi_pulse_arr;
    midi_pulse_acks : out midi_pulse_arr;
    playing_en      : in  std_logic;
    chunk_data      : in  chunk_data_t_arr;
    num_chunks      : in  integer range 0 to max_num_tracks - 1;

    midi_ram_data : in  std_logic_vector(7 downto 0);
    read_addr     : out unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);

    midi_nos : out midi_note_arr_t
    );
end;

architecture rtl of track_decoder is
  constant read_addr_length : integer := integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1
;
  type internals_t is record
    unknown_midi_event : std_logic;
    read_addr          : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
    status             : std_logic_vector(7 downto 0);
    running_status     : std_logic;
    midi_no            : midi_note_t;
    volume             : unsigned(7 downto 0);
    delta_counter      : unsigned(27 downto 0);
  end record;
  type internals_t_arr is array(1 to max_num_tracks - 1) of internals_t;
  signal internals        : internals_t_arr;
  signal current_internal : internals_t;

  type state_t is (
    wait_en,
    init_read_addrs,

    init_read_variable_length,
    read_variable_length_wait_read,
    read_variable_length_check_value,

    apply_delta_time,
    wait_delta_time_and_cede_control,
    wait_delta_time_and_cede_control_delay,
    increment_current_internal,

    read_status_1,
    read_status_2,
    read_status_3,

    dispatch_event,
    dispatch_meta_1,
    dispatch_meta_2,
    dispatch_meta_3,

    skip_over_meta_event_1,
    skip_over_meta_event_2,

    read_note_on_1,
    read_note_on_2,
    read_note_on_3,
    read_note_on_4,

    done,
    error_state
    );
  signal state        : state_t;
  signal return_state : state_t;

  signal variable_length : unsigned(27 downto 0);
  signal delta_time      : unsigned(27 downto 0);

  signal current_track : integer range 1 to max_num_tracks - 1;


  -----------------------------------------------------------------------------
  -- Enumeration of known events
  constant meta_event    : std_logic_vector(7 downto 0) := x"FF";
  constant note_on_event : std_logic_vector(3 downto 0) := x"9";
  constant end_of_track  : std_logic_vector(7 downto 0) := x"2F";
  constant track_name    : std_logic_vector(7 downto 0) := x"03";
  constant prefix_port   : std_logic_vector(7 downto 0) := x"21";
begin
  fsm : process(ctrl.clk)
    procedure inc_addr is
    begin
      current_internal.read_addr <= current_internal.read_addr + 1;
    end;

    procedure increment_current_track is
    begin
      if current_track = num_chunks then
        current_track <= 1;
      else
        current_track <= current_track + 1;
      end if;
    end;

  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        internals <= (
          others               => (
            read_addr          => (others => '0'),
            status             => (others => '0'),
            running_status     => '0',
            unknown_midi_event => '0',
            midi_no            => midi_note_t'low,
            volume             => (others => '0'),
            delta_counter      => (others => '0')
            ));

        current_internal <= (
          read_addr          => (others => '0'),
          status             => (others => '0'),
          running_status     => '0',
          unknown_midi_event => '0',
          midi_no            => midi_note_t'low,
          volume             => (others => '0'),
          delta_counter      => (others => '0')
          );

        state        <= wait_en;
        return_state <= error_state;

        variable_length <= (others => '0');
        delta_time      <= (others => '0');



        current_track <= 1;

        for i in 1 to max_num_tracks - 1 loop
          midi_pulse_acks(i) <= '0';
        end loop;

      else
        case state is
          when wait_en =>
            if playing_en = '1' then
              state <= init_read_addrs;
            end if;

          when init_read_addrs =>
            for i in internals'range loop
              internals(i).read_addr <= chunk_data(i).base_addr + 8;
            end loop;
            state        <= init_read_variable_length;
            return_state <= apply_delta_time;


          when init_read_variable_length =>
            variable_length <= (others => '0');
            state           <= read_variable_length_wait_read;

          when read_variable_length_wait_read =>
            state <= read_variable_length_check_value;

          when read_variable_length_check_value =>
            variable_length <= variable_length(20 downto 0) & unsigned(midi_ram_data(6 downto 0));
            if midi_ram_data(7) = '1' then
              state <= read_variable_length_wait_read;
              inc_addr;
            else
              state <= return_state;
            end if;

          when apply_delta_time =>
            current_internal.delta_counter <= variable_length;
            state                          <= wait_delta_time_and_cede_control;

          when wait_delta_time_and_cede_control =>
            midi_pulse_acks(current_track) <= '0';

            if current_internal.delta_counter = 0 then
              state <= read_status_1;
            elsif midi_pulses(current_track) = '1' then
              current_internal.delta_counter <= current_internal.delta_counter - 1;
              midi_pulse_acks(current_track) <= '1';
              state                          <= wait_delta_time_and_cede_control_delay;
            else

              -- Now we are switching midi track, so we must put the current
              -- track back in storage and get another one out.
              internals(current_track) <= current_internal;
              state                    <= increment_current_internal;
              increment_current_track;
            end if;

          -- This state prevents the delta counters from accidentally double
          -- decrementing.
          when wait_delta_time_and_cede_control_delay =>
            state <= wait_delta_time_and_cede_control;

          when increment_current_internal =>
            current_internal <= internals(current_track);
            state            <= wait_delta_time_and_cede_control;


          when read_status_1 =>
            inc_addr;
            state <= read_status_2;

          when read_status_2 =>
            state <= read_status_3;

          when read_status_3 =>
            --here we implement the running status
            if midi_ram_data(7) = '1' then
              current_internal.status         <= midi_ram_data;
              current_internal.running_status <= '0';
            else
              current_internal.running_status <= '1';
            end if;
            state <= dispatch_event;



          when dispatch_event =>
            if current_internal.status = meta_event then
              state <= dispatch_meta_1;
            elsif current_internal.status(7 downto 4) = note_on_event then

              state <= read_note_on_1;

            else
              current_internal.unknown_midi_event <= '1';
              state                               <= error_state;

            end if;

          when dispatch_meta_1 =>
            inc_addr;
            state <= dispatch_meta_2;

          when dispatch_meta_2 =>
            state <= dispatch_meta_3;

          when dispatch_meta_3 =>
            if midi_ram_data = end_of_track then
              state <= done;
            elsif midi_ram_data = track_name or
              midi_ram_data = prefix_port then
              state <= skip_over_meta_event_1;
            else
              state <= error_state;
            end if;

          when skip_over_meta_event_1 =>
            inc_addr;
            state        <= init_read_variable_length;
            return_state <= skip_over_meta_event_2;

          when skip_over_meta_event_2 =>
            current_internal.read_addr <= current_internal.read_addr + 1 +
                                          resize(variable_length, read_addr_length);
            state        <= init_read_variable_length;
            return_state <= apply_delta_time;




          when read_note_on_1 =>
            if current_internal.running_status = '0' then
              inc_addr;
            end if;
            state <= read_note_on_2;

          when read_note_on_2 =>
            inc_addr;
            state <= read_note_on_3;

          when read_note_on_3 =>
            current_internal.midi_no    <= to_integer(unsigned(midi_ram_data));
            midi_nos(current_track - 1) <= to_integer(unsigned(midi_ram_data));
            state                       <= read_note_on_4;

          when read_note_on_4 =>
            inc_addr;
            current_internal.volume <= unsigned(midi_ram_data);
            state                   <= init_read_variable_length;
            return_state            <= apply_delta_time;


          when done =>
            increment_current_track;
            null;

          when error_state =>
            null;

        end case;
      end if;
    end if;
  end process;

  -- mux the read address output
  read_addr <= current_internal.read_addr;


end architecture;

