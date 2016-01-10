library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.midi_pkg.all;

entity temp_midi_note_player is
  port(
    ctrl        : in  ctrl_t;
    note        : in  midi_note;
    pcm_out     : out signed(15 downto 0);
    new_pcm_out : out std_logic
    );
end;



architecture rtl of temp_midi_note_player is

  constant strides : stride_arr_t := calc_strides;
  constant midi_no : integer      := 69;

  -- sine signals
  signal sine_read_address : integer range 0 to sine_lut_pkg.num_lut_entries;
  signal sine_read_out     : signed(15 downto 0);

  -- audio output strober

  constant audio_freq_counter_max : integer := audio_period / clk_period;
  signal audio_freq_counter       : integer range 0 to audio_freq_counter_max;
  signal audio_freq_counter_done  : std_logic;

  -- other internals
  signal sine_driver_counter      : integer range 0 to strides'right;
  signal sine_driver_counter_done : std_logic;
begin

  sine_rom_1 : entity work.sine_rom
    port map (
      clk          => ctrl.clk,
      read_address => sine_read_address,
      read_out     => sine_read_out
      );

  do_audio_freq : process(ctrl.clk) is
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
  end;

  sine_driver : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        sine_driver_counter      <= 0;
        sine_driver_counter_done <= '0';
      else
        if sine_driver_counter + < strides(midi_no) then
          sine_driver_counter      <= sine_driver_counter + stri;
          sine_driver_counter_done <= '0';
        else
          sine_driver_counter      <= 0;
          sine_driver_counter_done <= '1';
        end if;
      end if;
    end if;
  end process;

end;
