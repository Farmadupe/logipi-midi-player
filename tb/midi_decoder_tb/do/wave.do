onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand /midi_decoder_tb/top_1/ctrl
add wave -noupdate -group spi -label spi_rx_1/state /midi_decoder_tb/top_1/spi_top_1/spi_rx_1/state
add wave -noupdate -group spi -label spi_top_1/new_mcu_to_fpga_data /midi_decoder_tb/top_1/spi_top_1/new_mcu_to_fpga_data
add wave -noupdate -group spi -label spi_rx_1/new_data /midi_decoder_tb/top_1/spi_top_1/spi_rx_1/new_data
add wave -noupdate -group spi /midi_decoder_tb/top_1/spi_top_1/remaining_bytes
add wave -noupdate -group spi -group spi /midi_decoder_tb/cs_n
add wave -noupdate -group spi -group spi /midi_decoder_tb/sclk
add wave -noupdate -group spi -group spi /midi_decoder_tb/mosi
add wave -noupdate -group spi -group spi /midi_decoder_tb/miso
add wave -noupdate -group spi -group {tb signals} -label send /midi_decoder_tb/send
add wave -noupdate -group spi -group {tb signals} -label data -radix ascii -childformat {{/midi_decoder_tb/data(7) -radix ascii} {/midi_decoder_tb/data(6) -radix ascii} {/midi_decoder_tb/data(5) -radix ascii} {/midi_decoder_tb/data(4) -radix ascii} {/midi_decoder_tb/data(3) -radix ascii} {/midi_decoder_tb/data(2) -radix ascii} {/midi_decoder_tb/data(1) -radix ascii} {/midi_decoder_tb/data(0) -radix ascii}} -radixshowbase 0 -subitemconfig {/midi_decoder_tb/data(7) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(6) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(5) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(4) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(3) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(2) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(1) {-height 17 -radix ascii -radixshowbase 0} /midi_decoder_tb/data(0) {-height 17 -radix ascii -radixshowbase 0}} /midi_decoder_tb/data
add wave -noupdate -expand -group uart /midi_decoder_tb/pi_to_fpga_pin
add wave -noupdate -expand -group uart /midi_decoder_tb/fpga_to_pi_pin
add wave -noupdate -label enable_decoder /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/enable_decoder
add wave -noupdate -label read_addr -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/read_addr
add wave -noupdate -label state /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/state
add wave -noupdate -label errors /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/errors
add wave -noupdate -label header_data -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data
add wave -noupdate -label midi_ram_data -radix ascii /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/midi_ram_data
add wave -noupdate -label midi_ram_data -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/midi_ram_data
add wave -noupdate -expand -group chunky -label chunk_is_mtrk /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_is_mtrk
add wave -noupdate -expand -group chunky -label chunk_addr -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_addr
add wave -noupdate -expand -group chunky -label chunk_length -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_length
add wave -noupdate -expand -group chunky -label chunk_no -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_no
add wave -noupdate -expand -group chunky -radix unsigned -childformat {{/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(0) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(1) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(2) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(3) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(4) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(5) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(6) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(7) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(8) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(9) -radix unsigned}} -expand -subitemconfig {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(0) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(1) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(2) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(3) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(4) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(5) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(6) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(7) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(8) {-radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(9) {-radix unsigned}} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8300610000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 229
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
WaveRestoreZoom {8290529224 ps} {8306708210 ps}
