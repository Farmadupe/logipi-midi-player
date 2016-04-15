library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

-- Used only for midi_note_t and midi_note_arr_t
use virtual_button_lib.midi_pkg.all;

-- Used for sine_addr_max
use virtual_button_lib.sine_lut_pkg.all;

entity many_sines is
  port(
    ctrl     : in ctrl_t;
    midi_nos : in midi_note_arr_t;

    pcm_out     : out signed(15 downto 0);
    new_pcm_out : out std_logic
    );
end;

architecture rtl of many_sines is






  type sine_rom_read_address_arr_t is array(0 to num_sines - 1) of integer range 0 to sine_addr_max;
  type sine_rom_read_out_arr_t is array(0 to num_sines - 1) of signed(15 downto 0);
  type strides_arr_t is array(0 to num_sines - 1) of integer range 0 to calc_midi_note_strides(midi_note_t'high);
  type sine_driver_counter_arr_t is array(0 to num_sines - 1) of unsigned (midi_counter_width - 1 downto 0);

  signal sine_rom_read_addresses : sine_rom_read_address_arr_t;
  signal sine_rom_read_outs      : sine_rom_read_out_arr_t;
  signal strides                 : strides_arr_t;
  signal sine_driver_counters    : sine_driver_counter_arr_t := (others => (others => '0'));


  constant stride_lut : stride_arr_t := calc_midi_note_strides;


  -- These signals delay the current sine to allow sine_rom_read_out to be read
  -- into the correct internals.
  signal current_sine, current_sine_d1, current_sine_d2 : integer range 0 to num_sines - 1;

  signal read_address : integer range 0 to sine_addr_max;
  signal read_out     : signed(15 downto 0);

  -- Signals for generating the audio sampling frequency
  constant audio_freq_counter_max : integer := sample_period / clk_period;
  signal audio_freq_counter       : integer range 0 to audio_freq_counter_max;
  signal audio_freq_counter_done  : std_logic;

  -- stride signals
  signal stride_read_addr : midi_note_t;
begin

  sine_counter_runners : for j in 0 to num_sines - 1 generate
    sine_driver : process(ctrl.clk) is
    begin
      if rising_edge(ctrl.clk) then
        if ctrl.reset_n = '0' then
          sine_driver_counters(j) <= (others => '0');
        elsif audio_freq_counter_done = '1' then
          sine_driver_counters(j) <= sine_driver_counters(j) + strides(j);
        end if;
      end if;
    end process;

    -- todo Make this prettier. Also I realised that sine_rom_read_address does
    -- not need its own register. It is really just a truncation of sine_rom_read_address.
    -- 
    -- Note that the width of sine_driver counter is determined by the need to
    -- maintain a correct output frequency granularity. This line removes the
    -- bits which are not necessary for an address lookup.
    sine_rom_read_addresses(j) <=
      to_integer(sine_driver_counters(j)) / (2**(midi_counter_width - integer(log2(real(sine_addr_max)))));
  end generate;

  -- A single lookup table for sinewave generators.
  sine_rom_1 : entity virtual_button_lib.sine_rom
    port map (
      ctrl            => ctrl,
      read_address_d0 => read_address,
      read_out_d1     => read_out
      );

  -- A round robin multiplexer.
  -- Cycles once per clock
  sine_lookup_mux : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if current_sine = num_sines - 1 then
        current_sine <= 0;
      else
        current_sine <= current_sine + 1;
      end if;

      current_sine_d1 <= current_sine;

      read_address                        <= sine_rom_read_addresses(current_sine);
      sine_rom_read_outs(current_sine_d1) <= read_out;
    end if;
  end process;

  stride_lookup_mux : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        stride_read_addr <= midi_note_t'low;
      else
        stride_read_addr         <= midi_nos(current_sine);
        strides(current_sine_d1) <= stride_lut(stride_read_addr);
      end if;
    end if;
  end process;

  -- This is just a 44.1khz strobe.
  count_audio_freq : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if audio_freq_counter >= audio_freq_counter_max then
        audio_freq_counter      <= 0;
        audio_freq_counter_done <= '1';
      else
        audio_freq_counter      <= audio_freq_counter + 1;
        audio_freq_counter_done <= '0';
      end if;
    end if;
  end process;

  -- todo ugly will this synthesizable?
  gen_pcm_out : process(ctrl.clk)
    variable pcm_out_int : signed(15 + num_sines - 1 downto 0);
  begin
    if rising_edge(ctrl.clk) then
      pcm_out_int := to_signed(0, pcm_out_int'length);
      for i in 0 to num_sines - 1 loop
        pcm_out_int := resize(sine_rom_read_outs(i), pcm_out_int'length) + pcm_out_int;

        pcm_out <= pcm_out_int(pcm_out_int'left downto pcm_out_int'left - 15);
      end loop;
    end if;
  end process;

  new_pcm_out <= audio_freq_counter_done;
end;

