do ../../compile_rtl.do


vcom -work virtual_button_lib ../../uart/uart_functions.vhd
vcom -work virtual_button_lib ../../spi/mock_spi_master.vhd

vcom -work virtual_button_lib ../midi_ram_tb.vhd

vsim virtual_button_lib.midi_ram_tb

do wave.do

run 6 us