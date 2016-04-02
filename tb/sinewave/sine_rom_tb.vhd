library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library virtual_button_lib;

use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

-- Used only for midi_note_t and midi_note_arr_t
use virtual_button_lib.midi_pkg.all;

entity sine_rom_tb is
end;

architecture behavioural of sine_rom_tb is


  signal ctrl : ctrl_t;

  signal midi_nos    : midi_note_arr_t := (60, 80);
  signal pcm_out     : signed(15 downto 0);
  signal new_pcm_out : std_logic;
begin

  clk_proc : process is
  begin
    ctrl.clk <= '0';
    wait for 1 ns;
    ctrl.clk <= '1';
    wait for 1 ns;
  end process;

  many_sines_1 : entity work.many_sines
    port map (
      ctrl        => ctrl,
      midi_nos    => midi_nos,
      pcm_out     => pcm_out,
      new_pcm_out => new_pcm_out);


  tb : process
  begin
    ctrl.reset_n <= '0';
    wait for 1 us;
    ctrl.reset_n <= '1';

    wait;
  end process tb;

end;
