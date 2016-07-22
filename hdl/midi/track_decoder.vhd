library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.midi_pkg.all;

entity track_decoder is
  generic(
    max_read_bytes : integer
    );
  port(
    ctrl            : in  ctrl_t;
    midi_pulses     : in  midi_pulse_arr;
    midi_pulse_acks : out midi_pulse_arr;
    playing_en      : in  std_logic;
    chunk_data      : in  chunk_data_t_arr;
    num_chunks      : in  integer range 0 to max_num_tracks - 1;

    -- ram read interface
    read_start_addr : out unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0) := (others => '0');
    read_num_bytes  : out integer range 0 to max_read_bytes;
    read_en         : out std_logic;
    read_busy       : in  std_logic;
    midi_ram_out    : in  std_logic_vector((max_read_bytes * 8) - 1 downto 0);

    midi_nos : out midi_note_arr_t
    );
end;

architecture rtl of track_decoder is
  constant read_addr_length : integer := integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1;
  type internals_t is record
    first_event          : std_logic;
    read_start_addr      : unsigned(integer(ceil(log2(real(midi_file_rx_bram_depth)))) - 1 downto 0);
    status               : std_logic_vector(7 downto 0);
    last_byte_was_status : std_logic;
    unknown_midi_event   : std_logic;
    midi_no              : midi_note_t;
    volume               : unsigned(7 downto 0);
    delta_counter        : unsigned(27 downto 0);
  end record;
  type internals_t_arr is array(1 to max_num_tracks - 1) of internals_t;
  signal internals        : internals_t_arr;
  signal current_internal : internals_t;

  type state_t is (
    wait_en,
    init_read_addrs_1,
    init_read_addrs_2,

    read_variable_length_1,
    read_variable_length_2,
    read_variable_length_3,

    apply_delta_time,
    wait_delta_time_and_cede_control,
    wait_delta_time_and_cede_control_delay,
    increment_current_internal_1,
    increment_current_internal_2,

    read_status_1,
    read_status_2,
    read_status_3,

    dispatch_event,
    dispatch_meta_1,
    dispatch_meta_2,

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

  signal read_num_bytes_int : integer range 0 to max_read_bytes;

  signal variable_length : unsigned(27 downto 0);

  signal current_track : integer range 1 to max_num_tracks - 1;

  signal read_busy_d1 : std_logic;

  -----------------------------------------------------------------------------
  -- Enumeration of known events
  constant meta_event    : std_logic_vector(7 downto 0) := x"FF";
  constant note_on_event : std_logic_vector(3 downto 0) := x"9";
  constant end_of_track  : std_logic_vector(7 downto 0) := x"2F";
  constant track_name    : std_logic_vector(7 downto 0) := x"03";
  constant prefix_port   : std_logic_vector(7 downto 0) := x"21";



begin

  delay_read_busy : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      read_busy_d1 <= read_busy;
    end if;
  end process;

  fsm : process(ctrl.clk)

    procedure increment_current_track is
    begin
      if current_track = num_chunks then
        current_track <= 1;
      else
        current_track <= current_track + 1;
      end if;
    end;

    impure function ram_read_finished return boolean is
    begin
      return read_busy = '0' and read_busy_d1 = '1';
    end;

  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then

        internals <= (
          others                 => (
            first_event          => '1',
            read_start_addr      => (others => '0'),
            status               => (others => '0'),
            last_byte_was_status => '0',
            unknown_midi_event   => '0',
            midi_no              => midi_note_t'low,
            volume               => (others => '0'),
            delta_counter        => (others => '0')
            ));

        current_internal <= (
          first_event          => '1',
          read_start_addr      => (others => '0'),
          status               => (others => '0'),
          last_byte_was_status => '0',
          unknown_midi_event   => '0',
          midi_no              => midi_note_t'low,
          volume               => (others => '0'),
          delta_counter        => (others => '0')
          );

        state        <= wait_en;
        return_state <= error_state;

        variable_length <= (others => '0');
        read_en         <= '0';


        current_track <= 1;

        for i in 1 to max_num_tracks - 1 loop
          midi_pulse_acks(i) <= '0';
        end loop;

      else
        case state is
          when wait_en =>
            if playing_en = '1' then
              state <= init_read_addrs_1;
            end if;

          when init_read_addrs_1 =>
            for i in internals'range loop
              internals(i).read_start_addr <= chunk_data(i).base_addr + 8;
            end loop;
            state <= init_read_addrs_2;

          when init_read_addrs_2 =>
            current_internal <= internals(current_track);
            return_state     <= apply_delta_time;
            state            <= read_variable_length_1;

          when read_variable_length_1 =>
            variable_length <= (others => '0');
            state           <= read_variable_length_2;

          when read_variable_length_2 =>
            read_en            <= '1';
            read_num_bytes_int <= 1;
            state              <= read_variable_length_3;

          when read_variable_length_3 =>
            read_en <= '0';
            if ram_read_finished then
              variable_length                  <= variable_length(variable_length'left - 7 downto 0) & unsigned(midi_ram_out(6 downto 0));
              current_internal.read_start_addr <= current_internal.read_start_addr + read_num_bytes_int;

              if midi_ram_out(7) = '1' then
                state <= read_variable_length_2;
              else
                state <= return_state;
              end if;
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
              internals(current_track).first_event <= '0';
              state                    <= increment_current_internal_1;
              increment_current_track;
            end if;

          -- This state prevents the delta counters from accidentally double
          -- decrementing.
          when wait_delta_time_and_cede_control_delay =>
            state <= wait_delta_time_and_cede_control;

          when increment_current_internal_1 =>
            current_internal <= internals(current_track);
            state            <= increment_current_internal_2;

          when increment_current_internal_2 =>
            if current_internal.first_event = '1' then
              state                        <= read_variable_length_1;
              return_state                 <= apply_delta_time;
            else
              state <= wait_delta_time_and_cede_control;
            end if;


          when read_status_1 =>
            read_en            <= '1';
            read_num_bytes_int <= 1;
            state              <= read_status_2;

          when read_status_2 =>
            read_en <= '0';
            if ram_read_finished then
              current_internal.read_start_addr <= current_internal.read_start_addr + read_num_bytes_int;

              --here we implement the running status
              if midi_ram_out(7) = '1' then
                current_internal.status         <= midi_ram_out(7 downto 0);
                current_internal.last_byte_was_status <= '1';
              else
                current_internal.last_byte_was_status <= '0';
              end if;
              state <= dispatch_event;
            end if;

            -- If last_byte_was_status = '1', then the last byte we read from
            -- ram was a data byte,  If last_byte_was_status = '0', then that
            -- data byte was read and the pointer is looking at the next data
            -- byte.
            --
            -- To remove confusion, in this state, we subtract 1 from the ram
            -- read pointer to unify that situation and make sure that the read
            -- pointer is at the first data byte.
          when dispatch_event =>
            if current_internal.last_byte_was_status = '0' then
              current_internal.read_start_addr <= current_internal.read_start_addr - 1;
            end if;
            
            if current_internal.status = meta_event then
              state <= dispatch_meta_1;

            elsif current_internal.status(7 downto 4) = note_on_event then
              state <= read_note_on_1;

            else
              current_internal.unknown_midi_event <= '1';
              state                               <= error_state;

            end if;

          when dispatch_meta_1 =>
            read_en            <= '1';
            read_num_bytes_int <= 1;
            state              <= dispatch_meta_2;

          when dispatch_meta_2 =>
            read_en <= '0';
            if ram_read_finished then
              current_internal.read_start_addr <= current_internal.read_start_addr + read_num_bytes_int;
              if midi_ram_out(7 downto 0) = end_of_track then
                state <= done;
              elsif midi_ram_out(7 downto 0) = track_name or
                midi_ram_out(7 downto 0) = prefix_port then
                state <= skip_over_meta_event_1;
              else
                state <= error_state;
              end if;
            end if;

          when skip_over_meta_event_1 =>
            state        <= read_variable_length_1;
            return_state <= skip_over_meta_event_2;

          when skip_over_meta_event_2 =>
            current_internal.read_start_addr <= current_internal.read_start_addr +
                                                resize(variable_length, read_addr_length);
            state        <= read_variable_length_1;
            return_state <= apply_delta_time;




          when read_note_on_1 =>
            read_en            <= '1';
            read_num_bytes_int <= 2;
            state              <= read_note_on_2;

          when read_note_on_2 =>
            read_en <= '0';
            if ram_read_finished then
              current_internal.read_start_addr <= current_internal.read_start_addr + read_num_bytes_int;
              current_internal.midi_no         <= to_integer(unsigned(midi_ram_out(15 downto 8)));
              midi_nos(current_track - 1)      <= to_integer(unsigned(midi_ram_out(15 downto 8)));
              current_internal.volume          <= unsigned(midi_ram_out(7 downto 0));
              state                            <= read_variable_length_1;
              return_state                     <= apply_delta_time;
            end if;


          when done =>
            increment_current_track;
            null;

          when error_state =>
            null;

          when others =>
            null;

        end case;
      end if;
    end if;
  end process;

  -- mux the read address output

  read_start_addr <= current_internal.read_start_addr;
  read_num_bytes  <= read_num_bytes_int;

end architecture;

