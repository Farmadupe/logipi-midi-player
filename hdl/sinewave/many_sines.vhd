library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library virtual_button_lib;
use virtual_button_lib.utils.all;
use virtual_button_lib.constants.all;

entity many_sines is
  port(
    ctrl : in ctrl_t;
    midi_notes : in midi_note_arr_t;
    
  );
end;

architecture rtl of many_sines is
begin
end;
  
