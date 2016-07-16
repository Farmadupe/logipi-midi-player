vlib virtual_button_lib
vmap virtual_button_lib virtual_button_lib

set proj_dir "/home/t/virtual-buttons"

set hdl_dir $proj_dir/hdl


vcom -work virtual_button_lib $hdl_dir/utils.vhd
vcom -work virtual_button_lib $hdl_dir/counter.vhd
vcom -work virtual_button_lib $hdl_dir/constants.vhd
vcom -work virtual_button_lib $hdl_dir/strobe_to_square.vhd
vcom -work virtual_button_lib $hdl_dir/uart/uart_constants.vhd
vcom -work virtual_button_lib $hdl_dir/uart/uart_tx.vhd
vcom -work virtual_button_lib $hdl_dir/uart/uart_rx.vhd
vcom -work virtual_button_lib $hdl_dir/uart/uart_top.vhd
vcom -work virtual_button_lib $hdl_dir/spi/ram.vhd
vcom -work virtual_button_lib $hdl_dir/spi/spi_rx.vhd
vcom -work virtual_button_lib $hdl_dir/spi/circular_queue.vhd
vcom -work virtual_button_lib $hdl_dir/spi/spi_tx.vhd
vcom -work virtual_button_lib $hdl_dir/spi/spi_tx_ram_controller.vhd
vcom -work virtual_button_lib $hdl_dir/spi/spi_top.vhd
vcom -work virtual_button_lib $hdl_dir/buttons/button_pkg.vhd
vcom -work virtual_button_lib $hdl_dir/buttons/single_button.vhd
vcom -work virtual_button_lib $hdl_dir/buttons/many_buttons.vhd
vcom -work virtual_button_lib $hdl_dir/ws2812/ws2812_data.vhd
vcom -work virtual_button_lib $hdl_dir/ws2812/ws2812_constant_colours.vhd
vcom -work virtual_button_lib $hdl_dir/rtl-debugging/debug_contents_count.vhd
vcom -work virtual_button_lib $hdl_dir/ws2812/ws2812_drv.vhd
vcom -work virtual_button_lib $hdl_dir/sinewave/sine_lut_pkg.vhd
vcom -work virtual_button_lib $hdl_dir/midi/midi_pkg.vhd
vcom -work virtual_button_lib $hdl_dir/rtl-debugging/debug_light_generator.vhd
vcom -work virtual_button_lib $hdl_dir/midi/midi_ram.vhd
vcom -work virtual_button_lib $hdl_dir/midi/midi_ram_top.vhd
vcom -work virtual_button_lib $hdl_dir/midi/midi_decoder.vhd
vcom -work virtual_button_lib $hdl_dir/midi/track_decoder.vhd
vcom -work virtual_button_lib $hdl_dir/midi/midi_top.vhd
vcom -work virtual_button_lib $hdl_dir/sinewave/sine_rom.vhd
#vcom -work virtual_button_lib $hdl_dir/sinewave/sine_generator.vhd
vcom -2008 -work virtual_button_lib $hdl_dir/sinewave/many_sines.vhd
vcom -work virtual_button_lib $hdl_dir/clock_multiplier.vhd
vcom -work virtual_button_lib $hdl_dir/top.vhd
