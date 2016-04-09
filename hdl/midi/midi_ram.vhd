library ieee;
use ieee.std_logic_1164.all;

library virtual_button_lib;

entity midi_ram is
  generic (
    ram_depth : integer
    );
  port(
    ctrl                 : in  ctrl_t;
    new_mcu_to_fpga_data : in  std_logic;
    mcu_to_fpga_data     : in  std_logic_vector(spi_word_length - 1 downto 0)
    bytes_occupied       : out integer range 0 to ram_depth;
    );
end;

architecture rtl of midi_ram is
begin
end;
