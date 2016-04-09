onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label ctrl /circular_queue_tb/circular_queue_1/ctrl
add wave -noupdate -label enqueue /circular_queue_tb/circular_queue_1/enqueue
add wave -noupdate -label dequeue /circular_queue_tb/circular_queue_1/dequeue
add wave -noupdate -label queue_depth /circular_queue_tb/circular_queue_1/queue_depth
add wave -noupdate -label queue_width /circular_queue_tb/circular_queue_1/queue_width
add wave -noupdate -label write_in_data -radix hexadecimal /circular_queue_tb/circular_queue_1/write_in_data
add wave -noupdate -label read_out_data -radix hexadecimal /circular_queue_tb/circular_queue_1/read_out_data
add wave -noupdate -label empty /circular_queue_tb/circular_queue_1/empty
add wave -noupdate -label full /circular_queue_tb/circular_queue_1/full
add wave -noupdate -label contents_count /circular_queue_tb/circular_queue_1/contents_count
add wave -noupdate -label write_enable -radix hexadecimal /circular_queue_tb/circular_queue_1/write_enable
add wave -noupdate -radix hexadecimal -childformat {{/circular_queue_tb/circular_queue_1/ram_1/ram(0) -radix hexadecimal} {/circular_queue_tb/circular_queue_1/ram_1/ram(1) -radix hexadecimal}} -expand -subitemconfig {/circular_queue_tb/circular_queue_1/ram_1/ram(0) {-radix hexadecimal} /circular_queue_tb/circular_queue_1/ram_1/ram(1) {-radix hexadecimal}} /circular_queue_tb/circular_queue_1/ram_1/ram
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1001138099 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 365
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
WaveRestoreZoom {1000886266 ps} {1001400399 ps}
