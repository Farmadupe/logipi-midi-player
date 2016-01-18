-- TestBench Template 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.constants.all;
use virtual_button_lib.utils.all;
use virtual_button_lib.midi_pkg.all;

entity tb is
end tb;

architecture behavioural of tb is

  signal ctrl        : ctrl_t;
  signal midi_no     : midi_note_t;
  signal pcm_out     : signed(15 downto 0);
  signal new_pcm_out : std_logic;

begin

  temp_midi_note_player_1 : entity work.temp_midi_note_player
    port map (
      ctrl        => ctrl,
      midi_no     => midi_no,
      pcm_out     => pcm_out,
      new_pcm_out => new_pcm_out);

  clk_gen : process
  begin
    ctrl.clk  <= '0';
    wait for clk_period / 2;
    ctrl.clk <= '1';
    wait for clk_period / 2;
    
  end process;


  --  Test Bench Statements
  tb : process
  begin
    ctrl.reset_n <= '0';
    wait for 5 * clk_period;  -- wait until global set/reset completes
    ctrl.reset_n <= '1';

    midi_no <=  21;

    wait;
  end process tb;

end;
