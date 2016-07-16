do ../../compile_rtl.do


vcom -work virtual_button_lib ../../uart/uart_functions.vhd
vcom -work virtual_button_lib ../../spi/mock_spi_master.vhd

vcom -work virtual_button_lib ../midi_decoder_tb.vhd

file copy -force ../midifiles/deck.mid .
file copy -force ../midifiles/zeroes_file .

vsim virtual_button_lib.midi_decoder_tb


do wave.do

config wave -signalnamewidth 1

run 100 ms
