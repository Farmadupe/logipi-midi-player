onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label ctrl -expand /track_decoder_tb/top_1/ctrl
add wave -noupdate -group spi -label spi_rx_1/state /track_decoder_tb/top_1/spi_top_1/spi_rx_1/state
add wave -noupdate -group spi -label spi_top_1/new_mcu_to_fpga_data /track_decoder_tb/top_1/spi_top_1/new_mcu_to_fpga_data
add wave -noupdate -group spi -label spi_rx_1/new_data /track_decoder_tb/top_1/spi_top_1/spi_rx_1/new_data
add wave -noupdate -group spi /track_decoder_tb/top_1/spi_top_1/remaining_bytes
add wave -noupdate -group spi -group spi /track_decoder_tb/cs_n
add wave -noupdate -group spi -group spi /track_decoder_tb/sclk
add wave -noupdate -group spi -group spi /track_decoder_tb/mosi
add wave -noupdate -group spi -group spi /track_decoder_tb/miso
add wave -noupdate -group spi -group {tb signals} -label send /track_decoder_tb/send
add wave -noupdate -group spi -group {tb signals} -label data -radix ascii -childformat {{/track_decoder_tb/data(7) -radix ascii} {/track_decoder_tb/data(6) -radix ascii} {/track_decoder_tb/data(5) -radix ascii} {/track_decoder_tb/data(4) -radix ascii} {/track_decoder_tb/data(3) -radix ascii} {/track_decoder_tb/data(2) -radix ascii} {/track_decoder_tb/data(1) -radix ascii} {/track_decoder_tb/data(0) -radix ascii}} -radixshowbase 0 -subitemconfig {/track_decoder_tb/data(7) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(6) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(5) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(4) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(3) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(2) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(1) {-height 17 -radix ascii -radixshowbase 0} /track_decoder_tb/data(0) {-height 17 -radix ascii -radixshowbase 0}} /track_decoder_tb/data
add wave -noupdate -group uart /track_decoder_tb/pi_to_fpga_pin
add wave -noupdate -group uart /track_decoder_tb/fpga_to_pi_pin
add wave -noupdate -group {midi decoder specific} -label state /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/state
add wave -noupdate -group {midi decoder specific} -label errors /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/errors
add wave -noupdate -group {midi decoder specific} -label header_data -radix unsigned -childformat {{/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.num_tracks -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.division_ticks -radix unsigned}} -subitemconfig {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.num_tracks {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data.division_ticks {-height 16 -radix unsigned}} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/header_data
add wave -noupdate -group {midi decoder specific} -label enable_decoder /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/enable_decoder
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_is_mtrk /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_is_mtrk
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_addr -radix unsigned /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_addr
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_length -radix unsigned /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_length
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_no -radix unsigned /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_no
add wave -noupdate -group {midi decoder specific} -group chunky -label chunk_data -radix unsigned -childformat {{/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(0) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(1) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(2) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(3) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(4) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(5) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(6) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(7) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(8) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(9) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(10) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(11) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(12) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(13) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(14) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(15) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(16) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(17) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(18) -radix unsigned} {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(19) -radix unsigned}} -subitemconfig {/track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(0) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(1) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(2) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(3) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(4) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(5) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(6) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(7) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(8) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(9) {-height 17 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(10) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(11) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(12) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(13) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(14) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(15) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(16) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(17) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(18) {-height 16 -radix unsigned} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data(19) {-height 16 -radix unsigned}} /track_decoder_tb/top_1/midi_top_1/midi_decoder_1/chunk_data
add wave -noupdate -label playing_en /track_decoder_tb/top_1/midi_top_1/playing_en
add wave -noupdate -expand -group {midi ram} -radix hexadecimal /track_decoder_tb/top_1/midi_top_1/midi_ram_top_1/midi_ram_out
add wave -noupdate -expand -group {midi ram} -radix ascii /track_decoder_tb/top_1/midi_top_1/midi_ram_top_1/midi_ram_out
add wave -noupdate -expand -group {midi ram} -radix hexadecimal /track_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_start_addr
add wave -noupdate -expand -group {midi ram} -radix hexadecimal /track_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_busy
add wave -noupdate -expand -group {midi ram} -radix hexadecimal /track_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_en
add wave -noupdate -expand -group {midi ram} -radix hexadecimal /track_decoder_tb/top_1/midi_top_1/midi_ram_top_1/read_out_data
add wave -noupdate -expand -group {track decoder} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/return_state
add wave -noupdate -expand -group {track decoder} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/state
add wave -noupdate -radix hexadecimal /track_decoder_tb/top_1/midi_top_1/track_decoder_1/variable_length
add wave -noupdate /track_decoder_tb/top_1/midi_top_1/track_decoder_1/read_num_bytes_int
add wave -noupdate -radix hexadecimal -childformat {{/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.unknown_midi_event -radix hexadecimal} {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.read_start_addr -radix hexadecimal} {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.status -radix hexadecimal} {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.running_status -radix hexadecimal} {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.midi_no -radix hexadecimal} {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.volume -radix hexadecimal} {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.delta_counter -radix decimal}} -expand -subitemconfig {/track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.unknown_midi_event {-height 16 -radix hexadecimal} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.read_start_addr {-height 16 -radix hexadecimal} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.status {-height 16 -radix hexadecimal} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.running_status {-height 16 -radix hexadecimal} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.midi_no {-height 16 -radix hexadecimal} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.volume {-height 16 -radix hexadecimal} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal.delta_counter {-height 16 -radix decimal}} /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_internal
add wave -noupdate /track_decoder_tb/top_1/midi_top_1/track_decoder_1/current_track
add wave -noupdate -format Analog-Step -height 84 -max 639.00000000000011 -min -640.0 /track_decoder_tb/top_1/pcm_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {217549651 ps} 0} {{Cursor 2} {16769513765 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 237
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
WaveRestoreZoom {16769276002 ps} {16769901264 ps}
