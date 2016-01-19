library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.midi_pkg.all;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.sine_lut_pkg.all;
use virtual_button_lib.button_pkg.all;

entity temp_midi_note_player is
  port(
    ctrl        : in  ctrl_t;
    midi_no     : in  midi_note_t;
    buttons     : in  button_arr;
    pcm_out     : out signed(15 downto 0);
    new_pcm_out : out std_logic
    );
end;



architecture rtl of temp_midi_note_player is

  constant strides : stride_arr_t := calc_strides;

  -- sine signals
  signal sine_read_address : integer range 0 to num_lut_entries;
  signal sine_read_out     : signed(15 downto 0);

  -- audio output strober

  constant audio_freq_counter_max : integer := audio_period / clk_period;
  signal audio_freq_counter       : integer range 0 to audio_freq_counter_max;
  signal audio_freq_counter_done  : std_logic;

  -- other internals
  signal sine_driver_counter : integer range 0 to 2**midi_counter_width;

  signal next_value : integer;

begin

  sine_rom_1 : entity work.sine_rom
    port map (
      clk          => ctrl.clk,
      read_address => sine_read_address,
      read_out     => pcm_out
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
  end process;

  sine_driver : process(ctrl.clk) is
  begin
    if rising_edge(ctrl.clk) then
      if ctrl.reset_n = '0' then
        sine_driver_counter <= 0;
      else
        if not buttons(e).toggle = '1' then
          sine_driver_counter <= 0;
        else
          if audio_freq_counter_done = '1' then
            if sine_driver_counter + strides(midi_no) <= 2**midi_counter_width then
              sine_driver_counter <= sine_driver_counter + strides(midi_no);
            else
              sine_driver_counter <= 0;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- todo Make this prettier
  sine_read_address <= sine_driver_counter / (2**6);

  new_pcm_out <= audio_freq_counter_done and buttons(e).toggle;
end;
