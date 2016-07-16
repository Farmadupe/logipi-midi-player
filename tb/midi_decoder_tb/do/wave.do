onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label ctrl -expand /midi_decoder_tb/top_1/ctrl
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
add wave -noupdate -group uart /midi_decoder_tb/pi_to_fpga_pin
add wave -noupdate -group uart /midi_decoder_tb/fpga_to_pi_pin
add wave -noupdate -group {midi decoder specific} -label state /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/state
add wave -noupdate -group {midi decoder specific} -label errors /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/errors
add wave -noupdate -group {midi decoder specific} -label header_data -radix unsigned -childformat {{/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.num_tracks -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.division_ticks -radix unsigned}} -subitemconfig {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.num_tracks {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.division_ticks {-height 16 -radix unsigned}} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data
add wave -noupdate -group {midi decoder specific} -label enable_decoder /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/enable_decoder
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_is_mtrk /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_is_mtrk
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_addr -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_addr
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_length -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_length
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_no -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_no
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_data -radix unsigned -childformat {{/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(0) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(1) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(2) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(3) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(4) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(5) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(6) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(7) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(8) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(9) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(10) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(11) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(12) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(13) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(14) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(15) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(16) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(17) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(18) -radix unsigned} {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(19) -radix unsigned}} -subitemconfig {/midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(0) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(1) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(2) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(3) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(4) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(5) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(6) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(7) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(8) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(9) {-height 17 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(10) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(11) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(12) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(13) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(14) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(15) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(16) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(17) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(18) {-height 16 -radix unsigned} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(19) {-height 16 -radix unsigned}} /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data
add wave -noupdate -label playing_en /midi_decoder_tb/top_1/midi_top_1/playing_en
add wave -noupdate -group {midi ram} -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/midi_ram_out
add wave -noupdate -group {midi ram} -radix ascii /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/midi_ram_out
add wave -noupdate -group {midi ram} -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_start_addr
add wave -noupdate -group {midi ram} -radix unsigned /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_addr
add wave -noupdate -group {midi ram} -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_busy
add wave -noupdate -group {midi ram} -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_en
add wave -noupdate -group {midi ram} -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_out_data
add wave -noupdate -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_addr
add wave -noupdate -radix hexadecimal /midi_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_length
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8299706785 ps} 0} {{Cursor 2} {8301170000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 170
configure wave -valuecolwidth 248
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {8298381570 ps} {8303599603 ps}
