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



  type sine_internals is record
    sine_rom_read_address : integer range 0 to sine_addr_max;
    sine_rom_read_out     : signed(15 downto 0);
    stride                : integer range 0 to calc_strides(midi_note_t'high);
    sine_driver_counter   : unsigned (midi_counter_width - 1 downto 0);
  end record;
  type internals_arr is array(0 to num_sines - 1) of sine_internals;
  signal internals : internals_arr;


  constant strides : stride_arr_t := calc_strides;


  -- These signals delay the current sine to allow sine_rom_read_out to be read
  -- into the correct internals.
  signal current_sine, current_sine_d1, current_sine_d2 : integer range 0 to num_sines - 1;

  signal read_address : integer range 0 to sine_addr_max;
  signal read_out     : signed(15 downto 0);

  -- Signals for generating the audio sampling frequency
  constant audio_freq_counter_max : integer := audio_period / clk_period;
  signal audio_freq_counter       : integer range 0 to audio_freq_counter_max;
  signal audio_freq_counter_done  : std_logic;

  -- stride signals
  signal stride_read_addr : integer;
begin

  sine_counter_runners : for j in 0 to num_sines - 1 generate
    sine_driver : process(ctrl.clk) is
    begin
      if rising_edge(ctrl.clk) then
        if ctrl.reset_n = '0' then
          internals(j).sine_driver_counter <= (others => '0');
        elsif audio_freq_counter_done = '1' then
          internals(j).sine_driver_counter <= internals(j).sine_driver_counter + internals(j).stride;
        end if;
      end if;
    end process;

    -- todo Make this prettier. Also I realised that sine_rom_read_address does
    -- not need its own register. It is really just a truncation of sine_rom_read_address.
    -- 
    -- Note that the width of sine_driver counter is determined by the need to
    -- maintain a correct output frequency granularity. This line removes the
    -- bits which are not necessary for an address lookup.
    internals(j).sine_rom_read_address <=
      to_integer(internals(j).sine_driver_counter) / (2**(midi_counter_width - integer(log2(real(sine_addr_max)))));
  end generate;

  -- A single lookup table for sinewave generators.
  sine_rom_1 : entity virtual_button_lib.sine_rom
    port map (
      clk          => ctrl.clk,
      read_address => read_address,
      read_out     => read_out
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
      current_sine_d2 <= current_sine_d1;

      read_address                                 <= internals(current_sine).sine_rom_read_address;
      internals(current_sine_d2).sine_rom_read_out <= read_out;
    end if;
  end process;

  stride_lookup_mux : process(ctrl.clk)
  begin
    if rising_edge(ctrl.clk) then
      stride_read_addr                  <= midi_nos(current_sine);
      internals(current_sine_d1).stride <= strides(stride_read_addr);
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
      for i in 0 to num_sines - 1 loop
        pcm_out_int := to_signed(0, pcm_out_int'length);
        pcm_out_int := resize(internals(i).sine_rom_read_out, pcm_out_int'length) + pcm_out_int;

        pcm_out <= pcm_out_int(pcm_out_int'left downto pcm_out_int'left - 15);
      end loop;
    end if;
  end process;

  new_pcm_out <= audio_freq_counter_done;
end;

