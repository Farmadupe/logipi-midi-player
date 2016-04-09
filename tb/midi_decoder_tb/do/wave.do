onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /midi_decoder_tb/top_1/ctrl
add wave -noupdate -label send /midi_decoder_tb/send
add wave -noupdate -label data -radix ascii -childformat {{/midi_decoder_tb/data(7) -radix ascii} {/midi_decoder_tb/data(6) -radix ascii} {/midi_decoder_tb/data(5) -radix ascii} {/midi_decoder_tb/data(4) -radix ascii} {/midi_decoder_tb/data(3) -radix ascii} {/midi_decoder_tb/data(2) -radix ascii} {/midi_decoder_tb/data(1) -radix ascii} {/midi_decoder_tb/data(0) -radix ascii}} -radixshowbase 0 -subitemconfig {/midi_decoder_tb/data(7) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(6) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(5) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(4) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(3) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(2) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(1) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(0) {-height 17 -radix ascii -radixshowbase 0}} /midi_decoder_tb/data
add wave -noupdate -group spi /midi_decoder_tb/cs_n
add wave -noupdate -group spi /midi_decoder_tb/sclk
add wave -noupdate -group spi /midi_decoder_tb/mosi
add wave -noupdate -group spi /midi_decoder_tb/miso
add wave -noupdate -label midi_ram/contents_count /midi_decoder_tb/top_1/midi_ram/contents_count
add wave -noupdate -label midi_ram/enqueue /midi_decoder_tb/top_1/midi_ram/enqueue
add wave -noupdate -label spi_rx_1/state /midi_decoder_tb/top_1/spi_top_1/spi_rx_1/state
add wave -noupdate -label spi_top_1/new_mcu_to_fpga_data /midi_decoder_tb/top_1/spi_top_1/new_mcu_to_fpga_data
add wave -noupdate -label spi_rx_1/new_data /midi_decoder_tb/top_1/spi_top_1/spi_rx_1/new_data
add wave -noupdate /midi_decoder_tb/top_1/spi_top_1/remaining_bytes
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {999830437 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 415
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {999786458 ps} {1000011240 ps}
