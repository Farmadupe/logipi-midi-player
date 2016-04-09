file mkdir -force ../build
cd ../build

do ../../../compile_rtl.do


vcom -work virtual_button_lib ../circular_queue_tb.vhd

vsim virtual_button_lib.circular_queue_tb

do ../do/wave.do

run -all