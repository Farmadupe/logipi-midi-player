--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 20 18:50:43 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -filter /home/t/virtual-buttons/iseconfig/filter.filter -intstyle ise -s 2 -pcf top.pcf -rpw 100 -tpw 0 -ar Structure -tm top_timesim -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim top.ncd top_timesim.vhd 
-- Device	: 6slx9tqg144-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: top.ncd
-- Output file	: /home/t/virtual-buttons/netgen/par/top_timesim.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: /mnt/Xilinx/install/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity top_timesim is
  port (
    clk_50mhz : in STD_LOGIC := 'X'; 
    pb_0 : in STD_LOGIC := 'X'; 
    pb_1 : in STD_LOGIC := 'X'; 
    sw_0 : in STD_LOGIC := 'X'; 
    sw_1 : in STD_LOGIC := 'X'; 
    pi_to_fpga_pin : in STD_LOGIC := 'X'; 
    sclk : in STD_LOGIC := 'X'; 
    cs_n : in STD_LOGIC := 'X'; 
    mosi : in STD_LOGIC := 'X'; 
    led_0 : out STD_LOGIC; 
    led_1 : out STD_LOGIC; 
    fpga_to_pi_pin : out STD_LOGIC; 
    miso : out STD_LOGIC; 
    light_square_data : out STD_LOGIC 
  );
end top_timesim;

architecture Structure of top_timesim is
  signal clk_50mhz_BUFGP : STD_LOGIC; 
  signal lut3583_844_3110 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_done_3112 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_8_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_full_int_3119 : STD_LOGIC; 
  signal Q_3200_897_0 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_data_fully_latched_int_3125 : STD_LOGIC; 
  signal ctrl_reset_n_3126 : STD_LOGIC; 
  signal lut1329_436_3127 : STD_LOGIC; 
  signal Q_3348_1 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_cs_n_d2_3129 : STD_LOGIC; 
  signal lut1328_435_3130 : STD_LOGIC; 
  signal cs_n_IBUF_0 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_cs_n_d1_3132 : STD_LOGIC; 
  signal Q_2550_514 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_check_framing_error_3134 : STD_LOGIC; 
  signal Q_2055_177 : STD_LOGIC; 
  signal Q_2630_565 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_state_FSM_FFd2_3139 : STD_LOGIC; 
  signal spi_top_1_tx_controller_data_fully_latched_re_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_current_bit_3146 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_data_out_0 : STD_LOGIC; 
  signal lut2069_660_3149 : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_u_single_button_1_pressed_3155 : STD_LOGIC; 
  signal lut2657_729_0 : STD_LOGIC; 
  signal Q_2758_663 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_0_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_1_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_contents_count_int_0_0 : STD_LOGIC; 
  signal pi_to_fpga_pin_IBUF_0 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_increment_bit_counter_3168 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_new_data_0 : STD_LOGIC; 
  signal lut2410_78_3170 : STD_LOGIC; 
  signal lut2409_77_3174 : STD_LOGIC; 
  signal Q_2060_185 : STD_LOGIC; 
  signal lut437_182_3178 : STD_LOGIC; 
  signal Q_2726_631_0 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_uart_data_1_0 : STD_LOGIC; 
  signal lut317_2_3184 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_4_0 : STD_LOGIC; 
  signal debug_light_generator_1_held_spi_tx_buffer_full_3186 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_done_3187 : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_limit_1_0 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_uart_data_2_0 : STD_LOGIC; 
  signal lut1240_387_3195 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_7_r_1_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_7_b_1_Q : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200 : STD_LOGIC; 
  signal Q_3166_846 : STD_LOGIC; 
  signal lut4142_1040_3207 : STD_LOGIC; 
  signal lut4143_1041_3208 : STD_LOGIC; 
  signal N45_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_empty_int_3210 : STD_LOGIC; 
  signal Q_2779_680 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_2_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_3_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_contents_count_int_2_0 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_uart_data_7_0 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd5_3218 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd4_3219 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd3_3220 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q : STD_LOGIC; 
  signal Q_2485_473_0 : STD_LOGIC; 
  signal lut3974_1008_3224 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_0 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_Q : STD_LOGIC; 
  signal lut3973_1007_3228 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_uart_data_5_0 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_0 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_6_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_7_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_contents_count_int_6_0 : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_r_single_button_1_pressed_3238 : STD_LOGIC; 
  signal sw_1_IBUF_0 : STD_LOGIC; 
  signal sw_0_IBUF_0 : STD_LOGIC; 
  signal pb_0_IBUF_0 : STD_LOGIC; 
  signal pb_1_IBUF_0 : STD_LOGIC; 
  signal lut3913_977_0 : STD_LOGIC; 
  signal led_0_OBUF_3244 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd1_3245 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_4_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_5_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_contents_count_int_4_0 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_tx_count_done_3250 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_state_FSM_FFd1_3251 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_22_r_3_Q : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_21_g_3_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_20_g_3_Q : STD_LOGIC; 
  signal lut3631_877_0 : STD_LOGIC; 
  signal lut1247_393_3258 : STD_LOGIC; 
  signal lut3634_880_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_0_b_1_Q : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_g_single_button_1_pressed_3262 : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_k_single_button_1_toggle_int_3263 : STD_LOGIC; 
  signal Q_3060_808 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_0_g_1_Q : STD_LOGIC; 
  signal lut539_207_3266 : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_b_single_button_1_pressed_3267 : STD_LOGIC; 
  signal spi_top_1_tx_controller_dequeue_3268 : STD_LOGIC; 
  signal lut3852_948_3269 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_6_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_5_0 : STD_LOGIC; 
  signal lut3854_950_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_9_b_1_Q : STD_LOGIC; 
  signal lut3637_883_0 : STD_LOGIC; 
  signal spi_top_1_tx_controller_state_FSM_FFd2_3277 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd2_0 : STD_LOGIC; 
  signal lut1241_388_3279 : STD_LOGIC; 
  signal lut1239_386_3280 : STD_LOGIC; 
  signal Q_2402_418 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_0 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_9_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_10_0 : STD_LOGIC; 
  signal lut3633_879_3289 : STD_LOGIC; 
  signal lut3632_878_3290 : STD_LOGIC; 
  signal Q_3211_908 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_Q_3353 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter_cy_0_Q_3361 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter_cy_4_Q_3362 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter_cy_8_Q_3363 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Mcount_read_addr_cy_3_Q_3364 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Mcount_read_addr_cy_7_Q_3365 : STD_LOGIC; 
  signal spi_top_1_tx_controller_state_FSM_FFd1_3366 : STD_LOGIC; 
  signal Q_2204_259 : STD_LOGIC; 
  signal lut855_256_0 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_GND_14_o_GND_14_o_OR_8_o_inv : STD_LOGIC; 
  signal Q_2650_582 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_Q_3391 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_Q_3396 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_Q_3401 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_Q_3404 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_Q_3405 : STD_LOGIC; 
  signal lut1456_453_0 : STD_LOGIC; 
  signal debug_light_generator_1_spi_tx_buffer_full_inv : STD_LOGIC; 
  signal debug_light_generator_1_n0896_inv_0 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_Q_3412 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_Q_3417 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_Q_3422 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_Q_3427 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_Q_3432 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_Q_3437 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_Q_3443 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_Q_3444 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_Q_3448 : STD_LOGIC; 
  signal lut3485_827_3450 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_Q_3454 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_Q_3460 : STD_LOGIC; 
  signal temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_Q_3463 : STD_LOGIC; 
  signal lut2659_731_3464 : STD_LOGIC; 
  signal temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_Q_3468 : STD_LOGIC; 
  signal temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_0_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_1_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_2_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_Q_3476 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_3_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_5_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_6_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_Q_3481 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_7_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_8_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_9_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_10_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_1_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_Q_3493 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_3_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_5_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_Q_3499 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_8_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_0 : STD_LOGIC; 
  signal lut2396_75_3503 : STD_LOGIC; 
  signal temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_Q_3504 : STD_LOGIC; 
  signal lut2422_79_3505 : STD_LOGIC; 
  signal lut2434_80_3506 : STD_LOGIC; 
  signal temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_Q_3507 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_1_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_2_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_Q_3511 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_3_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_4_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_Q_3514 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_7_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_8_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_9_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_10_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_0 : STD_LOGIC; 
  signal clk_50mhz_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_ungated_miso_3525 : STD_LOGIC; 
  signal sclk_IBUF_0 : STD_LOGIC; 
  signal mosi_IBUF_0 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_uart_tx_3528 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7_0 : STD_LOGIC; 
  signal lut1903_580_3531 : STD_LOGIC; 
  signal many_buttons_1_gen_buttons_j_single_button_1_pressed_3532 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_sample_data_3533 : STD_LOGIC; 
  signal lut460_199_3534 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_0_r_1_Q : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_7_g_1_Q : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_8_g_1_Q : STD_LOGIC; 
  signal Q_2247_296 : STD_LOGIC; 
  signal lut936_292_3539 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_Q : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_sclk_d2_3557 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_sclk_d1_3558 : STD_LOGIC; 
  signal lut3641_887_3559 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_17_g_3_Q : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_19_g_3_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_16_g_3_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_18_g_3_Q : STD_LOGIC; 
  signal lut3636_882_3564 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_8_r_1_Q : STD_LOGIC; 
  signal lut3853_949_3566 : STD_LOGIC; 
  signal lut3856_952_3567 : STD_LOGIC; 
  signal lut438_183_3569 : STD_LOGIC; 
  signal lut3719_940_3570 : STD_LOGIC; 
  signal lut934_290_3571 : STD_LOGIC; 
  signal lut3623_871_3572 : STD_LOGIC; 
  signal lut3582_843_3573 : STD_LOGIC; 
  signal lut3630_876_3574 : STD_LOGIC; 
  signal lut3642_888_3575 : STD_LOGIC; 
  signal lut3638_884_3576 : STD_LOGIC; 
  signal lut3640_886_3577 : STD_LOGIC; 
  signal spi_top_1_tx_controller_data_fully_latched_d1_3578 : STD_LOGIC; 
  signal Q_3225_924 : STD_LOGIC; 
  signal lut856_257_3582 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_9_r_1_Q : STD_LOGIC; 
  signal lut3635_881_3584 : STD_LOGIC; 
  signal lut916_281_3585 : STD_LOGIC; 
  signal lut935_291_3586 : STD_LOGIC; 
  signal lut4141_1039_3587 : STD_LOGIC; 
  signal lut4144_1042_3588 : STD_LOGIC; 
  signal lut4140_1038_3589 : STD_LOGIC; 
  signal lut3277_806_3590 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_has_been_fully_latched_3592 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_data_tentatively_latched_int_3593 : STD_LOGIC; 
  signal lut3981_1013_3594 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd6_3595 : STD_LOGIC; 
  signal lut3955_998_3596 : STD_LOGIC; 
  signal lut3855_951_3597 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal lut3894_965_3599 : STD_LOGIC; 
  signal lut2658_730_3600 : STD_LOGIC; 
  signal lut3887_961_3601 : STD_LOGIC; 
  signal lut1897_107_3602 : STD_LOGIC; 
  signal lut1904_581_3603 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lutdi_217 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lutdi1_211 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lutdi2_205 : STD_LOGIC; 
  signal ProtoComp39_CYINITGND_0 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lutdi3_197 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_pack_3 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lutdi4_232 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lutdi5_226 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter1 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter2 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter3 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter4 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter5 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter6 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter7 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter8 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter9 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter10 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter11 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_Mcount_counter12 : STD_LOGIC; 
  signal lut1570_121_322 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_1_rt_368 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_2_rt_364 : STD_LOGIC; 
  signal spi_top_1_Result_0_1 : STD_LOGIC; 
  signal spi_top_1_Result_1_1 : STD_LOGIC; 
  signal spi_top_1_Result_2_1 : STD_LOGIC; 
  signal spi_top_1_Result_3_1 : STD_LOGIC; 
  signal ProtoComp43_CYINITGND_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_3_rt_352 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_4_rt_401 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_5_rt_397 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_6_rt_393 : STD_LOGIC; 
  signal spi_top_1_Result_4_1 : STD_LOGIC; 
  signal spi_top_1_Result_5_1 : STD_LOGIC; 
  signal spi_top_1_Result_6_1 : STD_LOGIC; 
  signal spi_top_1_Result_7_1 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_7_rt_381 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_8_rt_428 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_9_rt_424 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_10_rt_420 : STD_LOGIC; 
  signal spi_top_1_Result_8_1 : STD_LOGIC; 
  signal spi_top_1_Result_9_1 : STD_LOGIC; 
  signal spi_top_1_Result_10_1 : STD_LOGIC; 
  signal spi_top_1_Result_11_1 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt_410 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg1 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg2 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg3 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg4 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg5 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg6 : STD_LOGIC; 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg7 : STD_LOGIC; 
  signal lut855_256_472 : STD_LOGIC; 
  signal Q_1618_124 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count1 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count2 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count3 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count4 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count5 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count6 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count7 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count8 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count9 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count10 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count11 : STD_LOGIC; 
  signal lut1897_1071_624 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mcount_tx_count12 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_0_Q_646 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_1_Q_642 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_2_Q_638 : STD_LOGIC; 
  signal ProtoComp51_CYINITVCC_1 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_3_Q_628 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_4_Q_668 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_5_Q_664 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_6_Q_660 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_7_Q_650 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_8_Q_695 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_9_Q_691 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_10_Q_687 : STD_LOGIC; 
  signal lut1456_453_674 : STD_LOGIC; 
  signal Q_1811_138 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter1 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter2 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter3 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter4 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter5 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter6 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter7 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter8 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter9 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter10 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter11 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter12 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter13 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter14 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter15 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter16 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter17 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter18 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter19 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter20 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter21 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter22 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter23 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter24 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter25 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter26 : STD_LOGIC; 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter27 : STD_LOGIC; 
  signal lut2963_71_899 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_1_rt_945 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_2_rt_941 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_3_ProtoComp43_CYINITGND_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_3_rt_929 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_4_rt_978 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_5_rt_974 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_6_rt_970 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_7_rt_958 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_8_rt_1005 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_9_rt_1001 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_10_rt_997 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt_987 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_1_rt_1032 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_2_rt_1028 : STD_LOGIC; 
  signal ProtoComp57_CYINITGND_0 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_3_rt_1017 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_4_rt_1060 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_5_rt_1056 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_6_rt_1052 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_7_rt_1041 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_8_rt_1086 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_9_rt_1082 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_timer_10_rt_1078 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt_rt_1069 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi_1116 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_0_Q_1115 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi1_1109 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_1_Q_1108 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi2_1102 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_2_Q_1101 : STD_LOGIC; 
  signal ProtoComp60_CYINITGND_0 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi3_1093 : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_3_Q_1092 : STD_LOGIC; 
  signal debug_light_generator_1_spi_tx_buffer_full_counter_27_rt_1132 : STD_LOGIC; 
  signal debug_light_generator_1_n0896_inv1_lut : STD_LOGIC; 
  signal debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_4_Q : STD_LOGIC; 
  signal debug_light_generator_1_n0896_inv : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_1_rt_1158 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_2_rt_1154 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_3_ProtoComp57_CYINITGND_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_3_rt_1143 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_4_rt_1186 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_5_rt_1182 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_6_rt_1178 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_7_rt_1167 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_8_rt_1207 : STD_LOGIC; 
  signal temp_midi_note_player_1_audio_freq_counter_9_rt_1203 : STD_LOGIC; 
  signal temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt_rt_1200 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_lut_0_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_1_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_2_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_0_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_1_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_2_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_3_Q : STD_LOGIC; 
  signal ProtoComp63_CYINITGND_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_3_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_4_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_5_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_6_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_5_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_6_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_7_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_7_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_8_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_9_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_10_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_8_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_9_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_10_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_0_mand1_1304 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_1_mand1_1298 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_2_mand1_1292 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_0_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_1_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_2_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_3_1 : STD_LOGIC; 
  signal ProtoComp66_CYINITGND_0 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_3_mand1_1278 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_5_mand1_1340 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_6_mand1_1334 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_4_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_5_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_6_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_7_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_4_mand1_1321 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_7_mand1_1315 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_8_mand1_1379 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_9_mand1_1373 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_10_mand1_1366 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_8_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_9_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Result_10_1 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_11_mand1_1352 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_12_mand1_1414 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_13_mand1_1408 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_14 : STD_LOGIC; 
  signal temp_midi_note_player_1_Eqn_15 : STD_LOGIC; 
  signal lut2456_83_1428 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_lut_0_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_1_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_2_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_1_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_2_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_3_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_ProtoComp63_CYINITGND_0 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_3_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_4_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_5_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_6_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_4_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_5_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_6_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_7_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_7_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_8_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_9_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_10_rt : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_8_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_9_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_10_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_Q : STD_LOGIC; 
  signal spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt : STD_LOGIC;
 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi_1514 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi1_1508 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi2_1502 : STD_LOGIC; 
  signal ProtoComp70_CYINITVCC_1 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi3 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi4_1526 : STD_LOGIC; 
  signal clk_50mhz_BUFGP_IBUFG_1532 : STD_LOGIC; 
  signal pb_0_IBUF_1535 : STD_LOGIC; 
  signal pb_1_IBUF_1538 : STD_LOGIC; 
  signal cs_n_IBUF_1541 : STD_LOGIC; 
  signal sw_0_IBUF_1547 : STD_LOGIC; 
  signal sw_1_IBUF_1550 : STD_LOGIC; 
  signal sclk_IBUF_1555 : STD_LOGIC; 
  signal mosi_IBUF_1558 : STD_LOGIC; 
  signal pi_to_fpga_pin_IBUF_1563 : STD_LOGIC; 
  signal Q_3200_897 : STD_LOGIC; 
  signal Q_3192_873 : STD_LOGIC; 
  signal lut3578_840_1604 : STD_LOGIC; 
  signal Q_3199_893 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_pack_1 : STD_LOGIC; 
  signal lut3617_868_1623 : STD_LOGIC; 
  signal Q_3203_899 : STD_LOGIC; 
  signal Q_3211_908_pack_7 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_bit_index_0_pack_9 : STD_LOGIC; 
  signal Q_3215_913 : STD_LOGIC; 
  signal Q_3207_904 : STD_LOGIC; 
  signal lut3643_889_1704 : STD_LOGIC; 
  signal Q_3234_934 : STD_LOGIC; 
  signal Q_3231_930 : STD_LOGIC; 
  signal spi_top_1_tx_controller_data_fully_latched_d1_pack_7 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_data_fully_latched_int_rt_1726 : STD_LOGIC; 
  signal spi_top_1_tx_controller_data_fully_latched_re_1719 : STD_LOGIC; 
  signal lut3925_983_1718 : STD_LOGIC; 
  signal Q_3222_921 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_data_out_1711 : STD_LOGIC; 
  signal lut3713_937_1710 : STD_LOGIC; 
  signal Q_2616_555 : STD_LOGIC; 
  signal lut1250_394_1767 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_next_byte_index_int_0_pack_7 : STD_LOGIC; 
  signal lut1286_412_1758 : STD_LOGIC; 
  signal lut1280_409_1757 : STD_LOGIC; 
  signal lut1268_403_1749 : STD_LOGIC; 
  signal lut3286_811_1790 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_7_r_1_Q : STD_LOGIC; 
  signal lut3267_802_1781 : STD_LOGIC; 
  signal lut3256_799_1780 : STD_LOGIC; 
  signal lut3637_883_1823 : STD_LOGIC; 
  signal lut3611_864_1822 : STD_LOGIC; 
  signal lut3631_877_1815 : STD_LOGIC; 
  signal lut3605_860_1814 : STD_LOGIC; 
  signal lut3634_880_1808 : STD_LOGIC; 
  signal lut3599_856_1807 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_current_led_int_3_pack_12 : STD_LOGIC; 
  signal Q_3173_852 : STD_LOGIC; 
  signal lut3587_847_1796 : STD_LOGIC; 
  signal lut1242_389_1866 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_next_byte_index_int_4_pack_14 : STD_LOGIC; 
  signal lut1262_400_1856 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_next_byte_index_int_5_pack_9 : STD_LOGIC; 
  signal lut1256_397_1847 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_next_byte_index_int_2_pack_11 : STD_LOGIC; 
  signal lut1274_406_1840 : STD_LOGIC; 
  signal spi_top_1_tx_controller_state_FSM_FFd2_pack_2 : STD_LOGIC; 
  signal lut923_285_1876 : STD_LOGIC; 
  signal Q_2258_307 : STD_LOGIC; 
  signal Q_2254_302 : STD_LOGIC; 
  signal lut943_297_1904 : STD_LOGIC; 
  signal Q_3105_823 : STD_LOGIC; 
  signal lut917_282_1977 : STD_LOGIC; 
  signal lut937_293_2002 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd2_2028 : STD_LOGIC; 
  signal lut3949_995_2027 : STD_LOGIC; 
  signal lut3919_980_2026 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal lut4144_1042_pack_2 : STD_LOGIC; 
  signal lut4145_1043_2042 : STD_LOGIC; 
  signal lut3277_806_pack_2 : STD_LOGIC; 
  signal lut3273_804_2083 : STD_LOGIC; 
  signal Q_3060_808_pack_3 : STD_LOGIC; 
  signal debug_light_generator_1_held_spi_tx_buffer_full_pack_1 : STD_LOGIC; 
  signal Q_3250_958 : STD_LOGIC; 
  signal lut3937_989_2111 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_3_2128 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_4_2118 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_bit_index_2_latched_data_int_7_Mux_4_o : STD_LOGIC; 
  signal Q_2274_326 : STD_LOGIC; 
  signal Q_2270_321 : STD_LOGIC; 
  signal Q_2266_316 : STD_LOGIC; 
  signal lut961_311_2136 : STD_LOGIC; 
  signal lut1170_365_2185 : STD_LOGIC; 
  signal lut1161_362_2184 : STD_LOGIC; 
  signal lut1152_359_2178 : STD_LOGIC; 
  signal lut1143_356_2177 : STD_LOGIC; 
  signal lut1134_353_2171 : STD_LOGIC; 
  signal lut1125_350_2170 : STD_LOGIC; 
  signal lut1116_347_2163 : STD_LOGIC; 
  signal lut1107_344_2162 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_contents_count_int_9_pack_4 : STD_LOGIC; 
  signal lut1089_338_2219 : STD_LOGIC; 
  signal lut1080_335_2218 : STD_LOGIC; 
  signal spi_top_1_tx_fifo_contents_count_int_8_pack_6 : STD_LOGIC; 
  signal lut1098_341_2212 : STD_LOGIC; 
  signal lut1071_332_2211 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_bit_index_2_pack_9 : STD_LOGIC; 
  signal lut1292_415_2235 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_has_been_fully_latched_pack_6 : STD_LOGIC; 
  signal Q_3327_1047 : STD_LOGIC; 
  signal lut3931_986_2265 : STD_LOGIC; 
  signal lut1329_436_pack_8 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_Q : STD_LOGIC; 
  signal lut3994_1021_2307 : STD_LOGIC; 
  signal Q_3300_1010 : STD_LOGIC; 
  signal lut3981_1013_pack_10 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_Q : STD_LOGIC; 
  signal Q_3318_1033 : STD_LOGIC; 
  signal Q_3312_1025 : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_Q : STD_LOGIC; 
  signal Q_3306_1018 : STD_LOGIC; 
  signal lut3982_1014_2280 : STD_LOGIC; 
  signal Q_2467_455 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_state_FSM_FFd6_pack_7 : STD_LOGIC; 
  signal Q_2479_467 : STD_LOGIC; 
  signal Q_2471_459 : STD_LOGIC; 
  signal Q_2485_473 : STD_LOGIC; 
  signal Q_2475_463 : STD_LOGIC; 
  signal spi_top_1_spi_tx_1_bit_index_0_pack_1 : STD_LOGIC; 
  signal lut1304_423_2364 : STD_LOGIC; 
  signal lut1298_419_2363 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_21_g_3_Q : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_rt_2386 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_16_g_3_Q : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_rt_2381 : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_data_19_g_3_Q : STD_LOGIC; 
  signal debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_rt_2376 : STD_LOGIC; 
  signal lut3956_999_2414 : STD_LOGIC; 
  signal lut3943_992_2401 : STD_LOGIC; 
  signal temp_midi_note_player_1_N65 : STD_LOGIC; 
  signal temp_midi_note_player_1_N64 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_Q : STD_LOGIC; 
  signal temp_midi_note_player_1_N67 : STD_LOGIC; 
  signal temp_midi_note_player_1_N66 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_Q : STD_LOGIC; 
  signal midi_no_1_pack_14 : STD_LOGIC; 
  signal Q_2063_187 : STD_LOGIC; 
  signal temp_midi_note_player_1_N61 : STD_LOGIC; 
  signal temp_midi_note_player_1_N60 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_3_Q : STD_LOGIC; 
  signal lut2095_674_2489 : STD_LOGIC; 
  signal Q_3246_954 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N39_pack_10 : STD_LOGIC; 
  signal Q_3315_1029 : STD_LOGIC; 
  signal Q_3262_971 : STD_LOGIC; 
  signal Q_3258_967 : STD_LOGIC; 
  signal lut3894_965_pack_12 : STD_LOGIC; 
  signal lut3907_974_2546 : STD_LOGIC; 
  signal temp_midi_note_player_1_N63 : STD_LOGIC; 
  signal temp_midi_note_player_1_N62 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_Q : STD_LOGIC; 
  signal temp_midi_note_player_1_N69 : STD_LOGIC; 
  signal temp_midi_note_player_1_N68 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_Q : STD_LOGIC; 
  signal temp_midi_note_player_1_N55 : STD_LOGIC; 
  signal temp_midi_note_player_1_N54 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_Q : STD_LOGIC; 
  signal temp_midi_note_player_1_N53 : STD_LOGIC; 
  signal temp_midi_note_player_1_N52 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_8_Q : STD_LOGIC; 
  signal lut3720_941_2677 : STD_LOGIC; 
  signal Q_3243_945 : STD_LOGIC; 
  signal lut3854_950_2711 : STD_LOGIC; 
  signal lut2089_671_2702 : STD_LOGIC; 
  signal lut2070_661_2734 : STD_LOGIC; 
  signal lut2657_729_2727 : STD_LOGIC; 
  signal midi_no_5_pack_17 : STD_LOGIC; 
  signal Q_2078_201 : STD_LOGIC; 
  signal temp_midi_note_player_1_N59 : STD_LOGIC; 
  signal temp_midi_note_player_1_N58 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_1_Q : STD_LOGIC; 
  signal Q_2058_179 : STD_LOGIC; 
  signal midi_no_3_pack_13 : STD_LOGIC; 
  signal lut454_195_2813 : STD_LOGIC; 
  signal lut448_191_2812 : STD_LOGIC; 
  signal temp_midi_note_player_1_N57 : STD_LOGIC; 
  signal temp_midi_note_player_1_N56 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_5_Q : STD_LOGIC; 
  signal temp_midi_note_player_1_N71 : STD_LOGIC; 
  signal temp_midi_note_player_1_N70 : STD_LOGIC; 
  signal temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_Q : STD_LOGIC; 
  signal lut2083_668_2851 : STD_LOGIC; 
  signal lut2077_665_2842 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_bit_index_0_pack_9 : STD_LOGIC; 
  signal lut1791_574_2889 : STD_LOGIC; 
  signal lut1785_570_2888 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_bit_index_2_pack_11 : STD_LOGIC; 
  signal lut1779_566_2880 : STD_LOGIC; 
  signal lut1773_562_2879 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_6_2871 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_7_2862 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7_2861 : STD_LOGIC; 
  signal Q_2726_631 : STD_LOGIC; 
  signal lut2003_619_2910 : STD_LOGIC; 
  signal lut2009_622_2902 : STD_LOGIC; 
  signal lut1740_546_2946 : STD_LOGIC; 
  signal lut1734_543_2937 : STD_LOGIC; 
  signal lut1752_552_2929 : STD_LOGIC; 
  signal lut1746_549_2922 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_bit_counter_2_pack_6 : STD_LOGIC; 
  signal lut1682_515_2961 : STD_LOGIC; 
  signal lut1675_510_2960 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_bit_counter_0_pack_4 : STD_LOGIC; 
  signal lut1694_523_2951 : STD_LOGIC; 
  signal lut1688_519_2950 : STD_LOGIC; 
  signal lut2063_656_2998 : STD_LOGIC; 
  signal lut2045_644_2997 : STD_LOGIC; 
  signal lut2039_640_2991 : STD_LOGIC; 
  signal lut2033_636_2990 : STD_LOGIC; 
  signal lut2027_632_2982 : STD_LOGIC; 
  signal lut2020_627_2981 : STD_LOGIC; 
  signal lut2057_652_2975 : STD_LOGIC; 
  signal lut2051_648_2974 : STD_LOGIC; 
  signal lut1716_534_3028 : STD_LOGIC; 
  signal lut1710_531_3019 : STD_LOGIC; 
  signal lut1728_540_3011 : STD_LOGIC; 
  signal lut1722_537_3004 : STD_LOGIC; 
  signal uart_top_1_uart_rx_1_new_data_3038 : STD_LOGIC; 
  signal lut3962_1002_3037 : STD_LOGIC; 
  signal lut3913_977_3054 : STD_LOGIC; 
  signal Q_2054_176 : STD_LOGIC; 
  signal uart_top_1_uart_tx_1_uart_tx_pack_3 : STD_LOGIC; 
  signal lut3888_962_3082 : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKB : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKB : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_CLKA : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_read_addr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_miso_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_led_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_fpga_to_pi_pin_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_light_square_data_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_50mhz_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_bit_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_data_out_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_data_fully_latched_re_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_data_fully_latched_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_7_b_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_7_r_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_7_g_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_8_r_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_8_r_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_9_r_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_9_r_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_8_g_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_9_b_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_dequeue_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_empty_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_0_r_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_0_g_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_0_b_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_0_b_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_held_spi_tx_buffer_full_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_data_fully_latched_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_ungated_miso_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_tx_byte_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_data_tentatively_latched_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_has_been_fully_latched_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_18_g_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_18_g_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_19_g_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_22_r_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_22_r_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_16_g_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_20_g_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_20_g_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_21_g_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_increment_bit_counter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_increment_bit_counter_IN : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_sample_data_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_b_single_button_1_pressed_CLK : STD_LOGIC; 
  signal NlwBufferSignal_spi_top_1_tx_fifo_full_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_k_single_button_1_toggle_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_e_single_button_1_toggle_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_o_single_button_1_toggle_int_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_17_g_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_debug_light_generator_1_ws2812_data_17_g_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_g_single_button_1_pressed_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_u_single_button_1_pressed_CLK : STD_LOGIC; 
  signal NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_midi_no_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_r_single_button_1_pressed_CLK : STD_LOGIC; 
  signal NlwBufferSignal_many_buttons_1_gen_buttons_j_single_button_1_pressed_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_new_data_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_check_framing_error_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_rx_1_check_framing_error_IN : STD_LOGIC; 
  signal NlwBufferSignal_ctrl_reset_n_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ctrl_reset_n_IN : STD_LOGIC; 
  signal NlwBufferSignal_led_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_uart_top_1_uart_tx_1_uart_tx_CLK : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_CLKB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ENB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_REGCEB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_RSTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_CLKB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ENB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_REGCEB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_RSTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_CLKB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ENB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_REGCEB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_RSTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_CLKB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ENB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_REGCEB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_RSTB_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_61_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_19_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_57_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_58_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_59_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_60_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_53_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_8_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_8_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_8_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_54_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_55_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_56_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_50_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_51_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_52_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_9_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_5_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_10_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_70_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_71_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_72_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_73_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_66_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_67_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_68_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_69_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_62_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_63_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_64_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_65_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_113_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_114_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_115_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_116_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_109_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_110_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_111_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_112_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_105_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_106_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_107_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_108_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_101_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_102_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_103_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_104_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_97_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_98_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_99_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_100_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_93_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_94_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_95_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_96_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_90_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_91_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_92_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_20_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_16_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_18_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_124_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_125_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_126_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_120_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_121_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_122_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_123_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_117_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_118_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_119_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_n0896_inv1_cy_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_80_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_81_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_82_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_76_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_77_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_78_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_79_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_74_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_75_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_32_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_33_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_34_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_28_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_29_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_30_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_31_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_25_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_26_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_27_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_85_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_86_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_44_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_45_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_46_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_buttons_17_pressed_INV_306_o_norst_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_40_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_41_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_42_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_43_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_37_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_38_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_current_ws2812_b_0_39_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal debug_light_generator_1_ws2812_drv_1_bit_index : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal spi_top_1_tx_fifo_contents_count_int : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal uart_top_1_uart_rx_1_bit_counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal uart_top_1_uart_tx_1_bit_index : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_timer_limit : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal uart_top_1_uart_rx_1_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal temp_midi_note_player_1_audio_freq_counter : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal midi_no : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal uart_top_1_uart_tx_1_uart_data : STD_LOGIC_VECTOR ( 8 downto 1 ); 
  signal spi_top_1_spi_tx_1_next_byte_index_int : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_current_led_int : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal spi_top_1_tx_fifo_read_addr : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal spi_top_1_spi_tx_1_bit_index : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal spi_top_1_tx_fifo_next_write_addr : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal spi_top_1_read_out_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal pcm_out : STD_LOGIC_VECTOR ( 15 downto 8 ); 
  signal temp_midi_note_player_1_sine_driver_counter : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal uart_top_1_uart_rx_1_counter_max : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal uart_top_1_uart_rx_1_counter : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal spi_top_1_tx_controller_remaining_bytes_this_msg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal spi_top_1_spi_tx_1_latched_data_int : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal uart_top_1_uart_tx_1_tx_count : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal debug_light_generator_1_spi_tx_buffer_full_counter : STD_LOGIC_VECTOR ( 27 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_timer : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal spi_top_1_tx_controller_read_out_data_held : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal spi_top_1_tx_controller_tx_byte : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal uart_top_1_uart_rx_1_Mcompar_n0102_lut : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal uart_top_1_uart_rx_1_Mcount_counter_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal spi_top_1_tx_fifo_Mcount_read_addr_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal uart_top_1_uart_tx_1_Mcount_tx_count_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal spi_top_1_tx_fifo_Mcount_next_write_addr_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal spi_top_1_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_Result : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_Mcount_timer_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal temp_midi_note_player_1_Result : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal temp_midi_note_player_1_Mcount_audio_freq_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal temp_midi_note_player_1_Maccum_sine_driver_counter_lut : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA : STD_LOGIC_VECTOR ( 13 downto 2 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB : STD_LOGIC_VECTOR ( 13 downto 2 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA : STD_LOGIC_VECTOR ( 13 downto 2 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB : STD_LOGIC_VECTOR ( 13 downto 2 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA : STD_LOGIC_VECTOR ( 13 downto 1 ); 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA : STD_LOGIC_VECTOR ( 13 downto 1 ); 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA : STD_LOGIC_VECTOR ( 13 downto 1 ); 
  signal NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA : STD_LOGIC_VECTOR ( 13 downto 1 ); 
begin
  spi_top_1_tx_fifo_ram_1_Mram_ram1 : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 4,
      DATA_WIDTH_B => 4,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y20"
    )
    port map (
      CLKA => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKA,
      CLKB => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKB,
      ENA => '1',
      ENB => '1',
      REGCEA => '0',
      REGCEB => '0',
      RSTA => '0',
      RSTB => '0',
      ADDRA(13) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(13),
      ADDRA(12) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(12),
      ADDRA(11) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(11),
      ADDRA(10) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(10),
      ADDRA(9) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(9),
      ADDRA(8) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(8),
      ADDRA(7) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(7),
      ADDRA(6) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(6),
      ADDRA(5) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(5),
      ADDRA(4) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(4),
      ADDRA(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(3),
      ADDRA(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(2),
      ADDRA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_1_UNCONNECTED,
      ADDRA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(13),
      ADDRB(12) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(12),
      ADDRB(11) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(11),
      ADDRB(10) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(10),
      ADDRB(9) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(9),
      ADDRB(8) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(8),
      ADDRB(7) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(7),
      ADDRB(6) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(6),
      ADDRB(5) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(5),
      ADDRB(4) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(4),
      ADDRB(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(3),
      ADDRB(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(2),
      ADDRB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_31_UNCONNECTED,
      DIA(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_30_UNCONNECTED,
      DIA(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_29_UNCONNECTED,
      DIA(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_28_UNCONNECTED,
      DIA(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_27_UNCONNECTED,
      DIA(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_26_UNCONNECTED,
      DIA(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_25_UNCONNECTED,
      DIA(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_24_UNCONNECTED,
      DIA(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_23_UNCONNECTED,
      DIA(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_22_UNCONNECTED,
      DIA(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_21_UNCONNECTED,
      DIA(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_20_UNCONNECTED,
      DIA(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_19_UNCONNECTED,
      DIA(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_18_UNCONNECTED,
      DIA(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_17_UNCONNECTED,
      DIA(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_16_UNCONNECTED,
      DIA(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_15_UNCONNECTED,
      DIA(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_14_UNCONNECTED,
      DIA(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_13_UNCONNECTED,
      DIA(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_12_UNCONNECTED,
      DIA(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_11_UNCONNECTED,
      DIA(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_10_UNCONNECTED,
      DIA(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_9_UNCONNECTED,
      DIA(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_8_UNCONNECTED,
      DIA(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_7_UNCONNECTED,
      DIA(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_6_UNCONNECTED,
      DIA(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_5_UNCONNECTED,
      DIA(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_4_UNCONNECTED,
      DIA(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(3),
      DIA(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(2),
      DIA(1) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(1),
      DIA(0) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(0),
      DIB(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_31_UNCONNECTED,
      DIB(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_30_UNCONNECTED,
      DIB(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_29_UNCONNECTED,
      DIB(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_28_UNCONNECTED,
      DIB(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_27_UNCONNECTED,
      DIB(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_26_UNCONNECTED,
      DIB(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_25_UNCONNECTED,
      DIB(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_24_UNCONNECTED,
      DIB(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_23_UNCONNECTED,
      DIB(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_22_UNCONNECTED,
      DIB(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_21_UNCONNECTED,
      DIB(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_20_UNCONNECTED,
      DIB(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_19_UNCONNECTED,
      DIB(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_18_UNCONNECTED,
      DIB(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_17_UNCONNECTED,
      DIB(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_16_UNCONNECTED,
      DIB(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_15_UNCONNECTED,
      DIB(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_14_UNCONNECTED,
      DIB(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_13_UNCONNECTED,
      DIB(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_12_UNCONNECTED,
      DIB(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_11_UNCONNECTED,
      DIB(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_10_UNCONNECTED,
      DIB(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_9_UNCONNECTED,
      DIB(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_8_UNCONNECTED,
      DIB(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_7_UNCONNECTED,
      DIB(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_6_UNCONNECTED,
      DIB(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_5_UNCONNECTED,
      DIB(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_4_UNCONNECTED,
      DIB(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_3_UNCONNECTED,
      DIB(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_2_UNCONNECTED,
      DIB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_1_UNCONNECTED,
      DIB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIPB_0_UNCONNECTED,
      DOA(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_31_UNCONNECTED,
      DOA(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_30_UNCONNECTED,
      DOA(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_29_UNCONNECTED,
      DOA(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_28_UNCONNECTED,
      DOA(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_27_UNCONNECTED,
      DOA(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_26_UNCONNECTED,
      DOA(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_25_UNCONNECTED,
      DOA(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_24_UNCONNECTED,
      DOA(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_23_UNCONNECTED,
      DOA(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_22_UNCONNECTED,
      DOA(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_21_UNCONNECTED,
      DOA(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_20_UNCONNECTED,
      DOA(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_19_UNCONNECTED,
      DOA(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_18_UNCONNECTED,
      DOA(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_17_UNCONNECTED,
      DOA(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_16_UNCONNECTED,
      DOA(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_15_UNCONNECTED,
      DOA(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_14_UNCONNECTED,
      DOA(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_13_UNCONNECTED,
      DOA(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_12_UNCONNECTED,
      DOA(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_11_UNCONNECTED,
      DOA(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_10_UNCONNECTED,
      DOA(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_9_UNCONNECTED,
      DOA(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_8_UNCONNECTED,
      DOA(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_7_UNCONNECTED,
      DOA(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_6_UNCONNECTED,
      DOA(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_5_UNCONNECTED,
      DOA(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_4_UNCONNECTED,
      DOA(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_3_UNCONNECTED,
      DOA(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_2_UNCONNECTED,
      DOA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_1_UNCONNECTED,
      DOA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOA_0_UNCONNECTED,
      DOB(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_31_UNCONNECTED,
      DOB(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_30_UNCONNECTED,
      DOB(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_29_UNCONNECTED,
      DOB(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_28_UNCONNECTED,
      DOB(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_27_UNCONNECTED,
      DOB(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_26_UNCONNECTED,
      DOB(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_25_UNCONNECTED,
      DOB(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_24_UNCONNECTED,
      DOB(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_23_UNCONNECTED,
      DOB(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_22_UNCONNECTED,
      DOB(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_21_UNCONNECTED,
      DOB(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_20_UNCONNECTED,
      DOB(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_19_UNCONNECTED,
      DOB(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_18_UNCONNECTED,
      DOB(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_17_UNCONNECTED,
      DOB(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_16_UNCONNECTED,
      DOB(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_15_UNCONNECTED,
      DOB(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_14_UNCONNECTED,
      DOB(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_13_UNCONNECTED,
      DOB(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_12_UNCONNECTED,
      DOB(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_11_UNCONNECTED,
      DOB(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_10_UNCONNECTED,
      DOB(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_9_UNCONNECTED,
      DOB(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_8_UNCONNECTED,
      DOB(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_7_UNCONNECTED,
      DOB(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_6_UNCONNECTED,
      DOB(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_5_UNCONNECTED,
      DOB(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOB_4_UNCONNECTED,
      DOB(3) => spi_top_1_read_out_data(3),
      DOB(2) => spi_top_1_read_out_data(2),
      DOB(1) => spi_top_1_read_out_data(1),
      DOB(0) => spi_top_1_read_out_data(0),
      DOPA(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram1_DOPB_0_UNCONNECTED,
      WEA(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(3),
      WEA(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(2),
      WEA(1) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(1),
      WEA(0) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(0),
      WEB(3) => '0',
      WEB(2) => '0',
      WEB(1) => '0',
      WEB(0) => '0'
    );
  spi_top_1_tx_fifo_ram_1_Mram_ram2 : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 4,
      DATA_WIDTH_B => 4,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y18"
    )
    port map (
      CLKA => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKA,
      CLKB => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKB,
      ENA => '1',
      ENB => '1',
      REGCEA => '0',
      REGCEB => '0',
      RSTA => '0',
      RSTB => '0',
      ADDRA(13) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(13),
      ADDRA(12) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(12),
      ADDRA(11) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(11),
      ADDRA(10) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(10),
      ADDRA(9) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(9),
      ADDRA(8) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(8),
      ADDRA(7) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(7),
      ADDRA(6) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(6),
      ADDRA(5) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(5),
      ADDRA(4) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(4),
      ADDRA(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(3),
      ADDRA(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(2),
      ADDRA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_1_UNCONNECTED,
      ADDRA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(13),
      ADDRB(12) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(12),
      ADDRB(11) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(11),
      ADDRB(10) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(10),
      ADDRB(9) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(9),
      ADDRB(8) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(8),
      ADDRB(7) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(7),
      ADDRB(6) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(6),
      ADDRB(5) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(5),
      ADDRB(4) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(4),
      ADDRB(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(3),
      ADDRB(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(2),
      ADDRB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_31_UNCONNECTED,
      DIA(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_30_UNCONNECTED,
      DIA(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_29_UNCONNECTED,
      DIA(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_28_UNCONNECTED,
      DIA(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_27_UNCONNECTED,
      DIA(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_26_UNCONNECTED,
      DIA(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_25_UNCONNECTED,
      DIA(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_24_UNCONNECTED,
      DIA(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_23_UNCONNECTED,
      DIA(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_22_UNCONNECTED,
      DIA(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_21_UNCONNECTED,
      DIA(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_20_UNCONNECTED,
      DIA(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_19_UNCONNECTED,
      DIA(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_18_UNCONNECTED,
      DIA(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_17_UNCONNECTED,
      DIA(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_16_UNCONNECTED,
      DIA(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_15_UNCONNECTED,
      DIA(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_14_UNCONNECTED,
      DIA(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_13_UNCONNECTED,
      DIA(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_12_UNCONNECTED,
      DIA(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_11_UNCONNECTED,
      DIA(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_10_UNCONNECTED,
      DIA(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_9_UNCONNECTED,
      DIA(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_8_UNCONNECTED,
      DIA(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_7_UNCONNECTED,
      DIA(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_6_UNCONNECTED,
      DIA(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_5_UNCONNECTED,
      DIA(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_4_UNCONNECTED,
      DIA(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(3),
      DIA(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(2),
      DIA(1) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(1),
      DIA(0) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(0),
      DIB(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_31_UNCONNECTED,
      DIB(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_30_UNCONNECTED,
      DIB(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_29_UNCONNECTED,
      DIB(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_28_UNCONNECTED,
      DIB(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_27_UNCONNECTED,
      DIB(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_26_UNCONNECTED,
      DIB(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_25_UNCONNECTED,
      DIB(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_24_UNCONNECTED,
      DIB(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_23_UNCONNECTED,
      DIB(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_22_UNCONNECTED,
      DIB(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_21_UNCONNECTED,
      DIB(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_20_UNCONNECTED,
      DIB(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_19_UNCONNECTED,
      DIB(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_18_UNCONNECTED,
      DIB(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_17_UNCONNECTED,
      DIB(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_16_UNCONNECTED,
      DIB(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_15_UNCONNECTED,
      DIB(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_14_UNCONNECTED,
      DIB(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_13_UNCONNECTED,
      DIB(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_12_UNCONNECTED,
      DIB(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_11_UNCONNECTED,
      DIB(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_10_UNCONNECTED,
      DIB(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_9_UNCONNECTED,
      DIB(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_8_UNCONNECTED,
      DIB(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_7_UNCONNECTED,
      DIB(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_6_UNCONNECTED,
      DIB(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_5_UNCONNECTED,
      DIB(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_4_UNCONNECTED,
      DIB(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_3_UNCONNECTED,
      DIB(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_2_UNCONNECTED,
      DIB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_1_UNCONNECTED,
      DIB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIPB_0_UNCONNECTED,
      DOA(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_31_UNCONNECTED,
      DOA(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_30_UNCONNECTED,
      DOA(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_29_UNCONNECTED,
      DOA(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_28_UNCONNECTED,
      DOA(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_27_UNCONNECTED,
      DOA(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_26_UNCONNECTED,
      DOA(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_25_UNCONNECTED,
      DOA(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_24_UNCONNECTED,
      DOA(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_23_UNCONNECTED,
      DOA(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_22_UNCONNECTED,
      DOA(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_21_UNCONNECTED,
      DOA(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_20_UNCONNECTED,
      DOA(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_19_UNCONNECTED,
      DOA(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_18_UNCONNECTED,
      DOA(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_17_UNCONNECTED,
      DOA(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_16_UNCONNECTED,
      DOA(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_15_UNCONNECTED,
      DOA(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_14_UNCONNECTED,
      DOA(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_13_UNCONNECTED,
      DOA(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_12_UNCONNECTED,
      DOA(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_11_UNCONNECTED,
      DOA(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_10_UNCONNECTED,
      DOA(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_9_UNCONNECTED,
      DOA(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_8_UNCONNECTED,
      DOA(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_7_UNCONNECTED,
      DOA(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_6_UNCONNECTED,
      DOA(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_5_UNCONNECTED,
      DOA(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_4_UNCONNECTED,
      DOA(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_3_UNCONNECTED,
      DOA(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_2_UNCONNECTED,
      DOA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_1_UNCONNECTED,
      DOA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOA_0_UNCONNECTED,
      DOB(31) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_31_UNCONNECTED,
      DOB(30) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_30_UNCONNECTED,
      DOB(29) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_29_UNCONNECTED,
      DOB(28) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_28_UNCONNECTED,
      DOB(27) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_27_UNCONNECTED,
      DOB(26) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_26_UNCONNECTED,
      DOB(25) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_25_UNCONNECTED,
      DOB(24) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_24_UNCONNECTED,
      DOB(23) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_23_UNCONNECTED,
      DOB(22) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_22_UNCONNECTED,
      DOB(21) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_21_UNCONNECTED,
      DOB(20) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_20_UNCONNECTED,
      DOB(19) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_19_UNCONNECTED,
      DOB(18) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_18_UNCONNECTED,
      DOB(17) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_17_UNCONNECTED,
      DOB(16) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_16_UNCONNECTED,
      DOB(15) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_15_UNCONNECTED,
      DOB(14) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_14_UNCONNECTED,
      DOB(13) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_13_UNCONNECTED,
      DOB(12) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_12_UNCONNECTED,
      DOB(11) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_11_UNCONNECTED,
      DOB(10) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_10_UNCONNECTED,
      DOB(9) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_9_UNCONNECTED,
      DOB(8) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_8_UNCONNECTED,
      DOB(7) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_7_UNCONNECTED,
      DOB(6) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_6_UNCONNECTED,
      DOB(5) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_5_UNCONNECTED,
      DOB(4) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOB_4_UNCONNECTED,
      DOB(3) => spi_top_1_read_out_data(7),
      DOB(2) => spi_top_1_read_out_data(6),
      DOB(1) => spi_top_1_read_out_data(5),
      DOB(0) => spi_top_1_read_out_data(4),
      DOPA(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_spi_top_1_tx_fifo_ram_1_Mram_ram2_DOPB_0_UNCONNECTED,
      WEA(3) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(3),
      WEA(2) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(2),
      WEA(1) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(1),
      WEA(0) => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(0),
      WEB(3) => '0',
      WEB(2) => '0',
      WEB(1) => '0',
      WEB(0) => '0'
    );
  temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5 : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 0,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"003FFFFEAAAAA5555500000FFFFFAAAAA55555400003FFFFEAAAA95555400000",
      INIT_01 => X"00000FFFFFAAAAA55555400003FFFFEAAAAA5555500000FFFFFAAAAA95555400",
      INIT_02 => X"400000FFFFFAAAAA95555500000FFFFFEAAAA95555500000FFFFFAAAAA955554",
      INIT_03 => X"00000FFFFFEAAAAA55555400000FFFFFEAAAAA55555000003FFFFFAAAAA95555",
      INIT_04 => X"03FFFFFEAAAAA555555000003FFFFFAAAAAA55555400000FFFFFEAAAAA555554",
      INIT_05 => X"EAAAAA9555554000003FFFFFEAAAAA9555554000003FFFFFEAAAAA5555550000",
      INIT_06 => X"50000003FFFFFFAAAAAA95555550000003FFFFFEAAAAAA5555550000003FFFFF",
      INIT_07 => X"AAA955555540000003FFFFFFEAAAAAA95555554000000FFFFFFFAAAAAA955555",
      INIT_08 => X"AAAAAAA9555555500000000FFFFFFFEAAAAAAA555555540000000FFFFFFFAAAA",
      INIT_09 => X"AAA9555555554000000003FFFFFFFFAAAAAAAA95555555500000000FFFFFFFFE",
      INIT_0A => X"000000000FFFFFFFFFFEAAAAAAAAA95555555554000000000FFFFFFFFFEAAAAA",
      INIT_0B => X"AAA55555555555550000000000003FFFFFFFFFFFAAAAAAAAAAA9555555555540",
      INIT_0C => X"AAAAAAAA55555555555555554000000000000003FFFFFFFFFFFFFEAAAAAAAAAA",
      INIT_0D => X"55555555555550000000000000000000000FFFFFFFFFFFFFFFFFFFEAAAAAAAAA",
      INIT_0E => X"FFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"5555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"AAAAAAAAAFFFFFFFFFFFFFFFFFFFC00000000000000000000015555555555555",
      INIT_13 => X"AAAAAAAAAAFFFFFFFFFFFFFF00000000000000055555555555555556AAAAAAAA",
      INIT_14 => X"055555555555AAAAAAAAAAABFFFFFFFFFFF00000000000015555555555556AAA",
      INIT_15 => X"AAAAAFFFFFFFFFC0000000005555555555AAAAAAAAAAFFFFFFFFFFC000000000",
      INIT_16 => X"FFFFFFFFC0000000155555555AAAAAAAABFFFFFFFF000000000555555555AAAA",
      INIT_17 => X"AAABFFFFFFC000000055555556AAAAAAAFFFFFFFC000000015555555AAAAAAAA",
      INIT_18 => X"55555AAAAAABFFFFFFC0000005555555AAAAAAAFFFFFFF00000005555555AAAA",
      INIT_19 => X"FFFFF0000001555556AAAAAAFFFFFF0000001555555AAAAAABFFFFFF00000015",
      INIT_1A => X"0001555556AAAAAFFFFFF000000555555AAAAAAFFFFFF000000555555AAAAAAF",
      INIT_1B => X"555556AAAAAFFFFFC00000555556AAAAABFFFFF000001555556AAAAAFFFFFF00",
      INIT_1C => X"5555AAAAABFFFFF00000155556AAAAAFFFFFC00000555556AAAAAFFFFFC00000",
      INIT_1D => X"55555AAAAABFFFFC0000155555AAAAAFFFFFC0000155555AAAAABFFFFC000005",
      INIT_1E => X"0055555AAAAABFFFFC0000155556AAAAAFFFFF00000555556AAAABFFFFC00000",
      INIT_1F => X"0000055555AAAAAFFFFF00000555556AAAABFFFFC0000155556AAAAAFFFFF000",
      INIT_20 => X"FFC0000155555AAAAAFFFFF0000055555AAAAABFFFFC0000155556AAAABFFFFC",
      INIT_21 => X"FFFFF0000055555AAAAABFFFFC0000155555AAAAAFFFFF00000555556AAAABFF",
      INIT_22 => X"BFFFFF00000555556AAAAAFFFFF00000155556AAAAAFFFFF00000555556AAAAB",
      INIT_23 => X"FFFFF00000155555AAAAABFFFFF00000155555AAAAAFFFFFC0000055555AAAAA",
      INIT_24 => X"FC00000155555AAAAAAFFFFFC00000555555AAAAABFFFFF00000155555AAAAAB",
      INIT_25 => X"1555556AAAAABFFFFFC000001555556AAAAABFFFFFC00000155555AAAAAAFFFF",
      INIT_26 => X"AFFFFFFC0000005555556AAAAAAFFFFFFC000001555555AAAAAAFFFFFFC00000",
      INIT_27 => X"5556AAAAAABFFFFFFC00000015555556AAAAAABFFFFFF00000005555556AAAAA",
      INIT_28 => X"55555556AAAAAAAFFFFFFFF000000015555555AAAAAAABFFFFFFF00000005555",
      INIT_29 => X"5556AAAAAAAABFFFFFFFFC00000000555555556AAAAAAAAFFFFFFFF000000001",
      INIT_2A => X"FFFFFFFFF000000000015555555556AAAAAAAAABFFFFFFFFF000000000155555",
      INIT_2B => X"555AAAAAAAAAAAAAFFFFFFFFFFFFC00000000000555555555556AAAAAAAAAABF",
      INIT_2C => X"55555555AAAAAAAAAAAAAAAABFFFFFFFFFFFFFFC000000000000015555555555",
      INIT_2D => X"AAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFF00000000000000000001555555555",
      INIT_2E => X"000000000000000005555555555555555555555555555555555AAAAAAAAAAAAA",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"AAAAAAAAAAAA9555555555555555555555555555555555400000000000000000",
      INIT_32 => X"55555555500000000000000000003FFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAA",
      INIT_33 => X"555555555500000000000000FFFFFFFFFFFFFFFAAAAAAAAAAAAAAAA955555555",
      INIT_34 => X"FAAAAAAAAAAA55555555555400000000000FFFFFFFFFFFFEAAAAAAAAAAAA9555",
      INIT_35 => X"555550000000003FFFFFFFFFAAAAAAAAAA555555555500000000003FFFFFFFFF",
      INIT_36 => X"000000003FFFFFFFEAAAAAAAA55555555400000000FFFFFFFFFAAAAAAAAA5555",
      INIT_37 => X"55540000003FFFFFFFAAAAAAA9555555500000003FFFFFFFEAAAAAAA55555555",
      INIT_38 => X"AAAAA55555540000003FFFFFFAAAAAAA55555550000000FFFFFFFAAAAAAA5555",
      INIT_39 => X"00000FFFFFFEAAAAA9555555000000FFFFFFEAAAAAA5555554000000FFFFFFEA",
      INIT_3A => X"FFFEAAAAA955555000000FFFFFFAAAAAA555555000000FFFFFFAAAAAA5555550",
      INIT_3B => X"AAAAA955555000003FFFFFAAAAA955555400000FFFFFEAAAAA955555000000FF",
      INIT_3C => X"AAAA95555400000FFFFFEAAAA955555000003FFFFFAAAAA955555000003FFFFF",
      INIT_3D => X"AAAAA55555400003FFFFEAAAAA55555000003FFFFEAAAAA55555400003FFFFFA",
      INIT_3E => X"FFAAAAA55555400003FFFFEAAAA95555500000FFFFFAAAAA95555400003FFFFF",
      INIT_3F => X"FFFFFAAAAA5555500000FFFFFAAAAA95555400003FFFFEAAAA95555500000FFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y14"
    )
    port map (
      CLKA => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_CLKA,
      CLKB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_CLKB_UNCONNECTED,
      ENA => '1',
      ENB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ENB_UNCONNECTED,
      REGCEA => '0',
      REGCEB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_REGCEB_UNCONNECTED,
      RSTA => '0',
      RSTB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_RSTB_UNCONNECTED,
      ADDRA(13) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(13),
      ADDRA(12) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(12),
      ADDRA(11) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(11),
      ADDRA(10) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(10),
      ADDRA(9) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(9),
      ADDRA(8) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(8),
      ADDRA(7) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(7),
      ADDRA(6) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(6),
      ADDRA(5) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(5),
      ADDRA(4) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(4),
      ADDRA(3) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(3),
      ADDRA(2) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(2),
      ADDRA(1) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(1),
      ADDRA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_13_UNCONNECTED,
      ADDRB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_12_UNCONNECTED,
      ADDRB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_11_UNCONNECTED,
      ADDRB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_10_UNCONNECTED,
      ADDRB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_9_UNCONNECTED,
      ADDRB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_8_UNCONNECTED,
      ADDRB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_7_UNCONNECTED,
      ADDRB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_6_UNCONNECTED,
      ADDRB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_5_UNCONNECTED,
      ADDRB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_4_UNCONNECTED,
      ADDRB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_3_UNCONNECTED,
      ADDRB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_31_UNCONNECTED,
      DIA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_30_UNCONNECTED,
      DIA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_29_UNCONNECTED,
      DIA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_28_UNCONNECTED,
      DIA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_27_UNCONNECTED,
      DIA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_26_UNCONNECTED,
      DIA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_25_UNCONNECTED,
      DIA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_24_UNCONNECTED,
      DIA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_23_UNCONNECTED,
      DIA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_22_UNCONNECTED,
      DIA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_21_UNCONNECTED,
      DIA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_20_UNCONNECTED,
      DIA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_19_UNCONNECTED,
      DIA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_18_UNCONNECTED,
      DIA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_17_UNCONNECTED,
      DIA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_16_UNCONNECTED,
      DIA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_15_UNCONNECTED,
      DIA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_14_UNCONNECTED,
      DIA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_13_UNCONNECTED,
      DIA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_12_UNCONNECTED,
      DIA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_11_UNCONNECTED,
      DIA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_10_UNCONNECTED,
      DIA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_9_UNCONNECTED,
      DIA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_8_UNCONNECTED,
      DIA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_7_UNCONNECTED,
      DIA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_6_UNCONNECTED,
      DIA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_5_UNCONNECTED,
      DIA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_4_UNCONNECTED,
      DIA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_3_UNCONNECTED,
      DIA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIA_2_UNCONNECTED,
      DIA(1) => '0',
      DIA(0) => '0',
      DIB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_31_UNCONNECTED,
      DIB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_30_UNCONNECTED,
      DIB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_29_UNCONNECTED,
      DIB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_28_UNCONNECTED,
      DIB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_27_UNCONNECTED,
      DIB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_26_UNCONNECTED,
      DIB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_25_UNCONNECTED,
      DIB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_24_UNCONNECTED,
      DIB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_23_UNCONNECTED,
      DIB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_22_UNCONNECTED,
      DIB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_21_UNCONNECTED,
      DIB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_20_UNCONNECTED,
      DIB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_19_UNCONNECTED,
      DIB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_18_UNCONNECTED,
      DIB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_17_UNCONNECTED,
      DIB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_16_UNCONNECTED,
      DIB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_15_UNCONNECTED,
      DIB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_14_UNCONNECTED,
      DIB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_13_UNCONNECTED,
      DIB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_12_UNCONNECTED,
      DIB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_11_UNCONNECTED,
      DIB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_10_UNCONNECTED,
      DIB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_9_UNCONNECTED,
      DIB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_8_UNCONNECTED,
      DIB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_7_UNCONNECTED,
      DIB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_6_UNCONNECTED,
      DIB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_5_UNCONNECTED,
      DIB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_4_UNCONNECTED,
      DIB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_3_UNCONNECTED,
      DIB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_2_UNCONNECTED,
      DIB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_1_UNCONNECTED,
      DIB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DIPB_0_UNCONNECTED,
      DOA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_31_UNCONNECTED,
      DOA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_30_UNCONNECTED,
      DOA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_29_UNCONNECTED,
      DOA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_28_UNCONNECTED,
      DOA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_27_UNCONNECTED,
      DOA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_26_UNCONNECTED,
      DOA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_25_UNCONNECTED,
      DOA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_24_UNCONNECTED,
      DOA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_23_UNCONNECTED,
      DOA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_22_UNCONNECTED,
      DOA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_21_UNCONNECTED,
      DOA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_20_UNCONNECTED,
      DOA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_19_UNCONNECTED,
      DOA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_18_UNCONNECTED,
      DOA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_17_UNCONNECTED,
      DOA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_16_UNCONNECTED,
      DOA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_15_UNCONNECTED,
      DOA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_14_UNCONNECTED,
      DOA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_13_UNCONNECTED,
      DOA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_12_UNCONNECTED,
      DOA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_11_UNCONNECTED,
      DOA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_10_UNCONNECTED,
      DOA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_9_UNCONNECTED,
      DOA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_8_UNCONNECTED,
      DOA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_7_UNCONNECTED,
      DOA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_6_UNCONNECTED,
      DOA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_5_UNCONNECTED,
      DOA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_4_UNCONNECTED,
      DOA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_3_UNCONNECTED,
      DOA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOA_2_UNCONNECTED,
      DOA(1) => pcm_out(9),
      DOA(0) => pcm_out(8),
      DOB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_31_UNCONNECTED,
      DOB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_30_UNCONNECTED,
      DOB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_29_UNCONNECTED,
      DOB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_28_UNCONNECTED,
      DOB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_27_UNCONNECTED,
      DOB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_26_UNCONNECTED,
      DOB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_25_UNCONNECTED,
      DOB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_24_UNCONNECTED,
      DOB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_23_UNCONNECTED,
      DOB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_22_UNCONNECTED,
      DOB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_21_UNCONNECTED,
      DOB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_20_UNCONNECTED,
      DOB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_19_UNCONNECTED,
      DOB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_18_UNCONNECTED,
      DOB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_17_UNCONNECTED,
      DOB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_16_UNCONNECTED,
      DOB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_15_UNCONNECTED,
      DOB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_14_UNCONNECTED,
      DOB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_13_UNCONNECTED,
      DOB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_12_UNCONNECTED,
      DOB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_11_UNCONNECTED,
      DOB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_10_UNCONNECTED,
      DOB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_9_UNCONNECTED,
      DOB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_8_UNCONNECTED,
      DOB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_7_UNCONNECTED,
      DOB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_6_UNCONNECTED,
      DOB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_5_UNCONNECTED,
      DOB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_4_UNCONNECTED,
      DOB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_3_UNCONNECTED,
      DOB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_2_UNCONNECTED,
      DOB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_1_UNCONNECTED,
      DOB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOB_0_UNCONNECTED,
      DOPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_DOPB_0_UNCONNECTED,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_3_UNCONNECTED,
      WEB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_2_UNCONNECTED,
      WEB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_1_UNCONNECTED,
      WEB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_WEB_0_UNCONNECTED
    );
  temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6 : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 0,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFEAAAAAAAAAAAAAAAAAAAA55555555555555555555400000000000000000000",
      INIT_01 => X"AAAAA55555555555555555555400000000000000000000FFFFFFFFFFFFFFFFFF",
      INIT_02 => X"555555000000000000000000000FFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAA",
      INIT_03 => X"00000FFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAA9555555555555555",
      INIT_04 => X"FEAAAAAAAAAAAAAAAAAAAAAA9555555555555555555555500000000000000000",
      INIT_05 => X"5555555555555555554000000000000000000000003FFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"00000003FFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAA955555",
      INIT_07 => X"AAAAAAAAAAAAAAAAA95555555555555555555555555550000000000000000000",
      INIT_08 => X"00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAA",
      INIT_09 => X"AAAAAAAAAAAAAAAAAAAAA9555555555555555555555555555555555000000000",
      INIT_0A => X"000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAA",
      INIT_0B => X"5555555555555555555555555555400000000000000000000000000000000000",
      INIT_0C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555555555555555555",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_14 => X"0000000000000000000000000000000000055555555555555555555555555555",
      INIT_15 => X"AAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000",
      INIT_16 => X"000000001555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAA",
      INIT_17 => X"AAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000",
      INIT_18 => X"0000000000000000001555555555555555555555555555AAAAAAAAAAAAAAAAAA",
      INIT_19 => X"55555AAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFF0000000000000000000000005555555555555555555",
      INIT_1B => X"000000000000000015555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAFF",
      INIT_1C => X"555555555555555AAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFC00000",
      INIT_1D => X"AAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFC000000000000000000001555555",
      INIT_1E => X"FFFFFFFFFFFFFFFFFC00000000000000000000555555555555555555556AAAAA",
      INIT_1F => X"00000000000000000000555555555555555555556AAAAAAAAAAAAAAAAAAAAFFF",
      INIT_20 => X"00155555555555555555555AAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFC",
      INIT_21 => X"55555AAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFF000000000000000000",
      INIT_22 => X"AAAAAAFFFFFFFFFFFFFFFFFFFFF0000000000000000000005555555555555555",
      INIT_23 => X"FFFFF00000000000000000000005555555555555555555556AAAAAAAAAAAAAAA",
      INIT_24 => X"0155555555555555555555556AAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFF",
      INIT_25 => X"AAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000",
      INIT_26 => X"FFFFFFFC000000000000000000000000015555555555555555555555556AAAAA",
      INIT_27 => X"555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000055555555555",
      INIT_29 => X"5555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFF",
      INIT_2A => X"FFFFFFFFF0000000000000000000000000000000000000000555555555555555",
      INIT_2B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"5555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2D => X"0000000000000000000000000000000000055555555555555555555555555555",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"5555555555555555555555555555400000000000000000000000000000000000",
      INIT_33 => X"AAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555555",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_35 => X"5555555555555540000000000000000000000000000000000000003FFFFFFFFF",
      INIT_36 => X"FFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555",
      INIT_37 => X"55555555554000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAA555555555555555555",
      INIT_39 => X"AAAAA555555555555555555555555500000000000000000000000000FFFFFFFF",
      INIT_3A => X"000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAA",
      INIT_3B => X"FFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555500",
      INIT_3C => X"AAAAAAAAAAAAAAA55555555555555555555540000000000000000000003FFFFF",
      INIT_3D => X"5555555555555554000000000000000000003FFFFFFFFFFFFFFFFFFFFEAAAAAA",
      INIT_3E => X"000000000000000003FFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAA955555",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAA955555555555555555555000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y10"
    )
    port map (
      CLKA => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_CLKA,
      CLKB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_CLKB_UNCONNECTED,
      ENA => '1',
      ENB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ENB_UNCONNECTED,
      REGCEA => '0',
      REGCEB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_REGCEB_UNCONNECTED,
      RSTA => '0',
      RSTB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_RSTB_UNCONNECTED,
      ADDRA(13) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(13),
      ADDRA(12) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(12),
      ADDRA(11) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(11),
      ADDRA(10) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(10),
      ADDRA(9) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(9),
      ADDRA(8) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(8),
      ADDRA(7) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(7),
      ADDRA(6) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(6),
      ADDRA(5) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(5),
      ADDRA(4) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(4),
      ADDRA(3) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(3),
      ADDRA(2) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(2),
      ADDRA(1) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(1),
      ADDRA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_13_UNCONNECTED,
      ADDRB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_12_UNCONNECTED,
      ADDRB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_11_UNCONNECTED,
      ADDRB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_10_UNCONNECTED,
      ADDRB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_9_UNCONNECTED,
      ADDRB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_8_UNCONNECTED,
      ADDRB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_7_UNCONNECTED,
      ADDRB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_6_UNCONNECTED,
      ADDRB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_5_UNCONNECTED,
      ADDRB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_4_UNCONNECTED,
      ADDRB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_3_UNCONNECTED,
      ADDRB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_31_UNCONNECTED,
      DIA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_30_UNCONNECTED,
      DIA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_29_UNCONNECTED,
      DIA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_28_UNCONNECTED,
      DIA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_27_UNCONNECTED,
      DIA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_26_UNCONNECTED,
      DIA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_25_UNCONNECTED,
      DIA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_24_UNCONNECTED,
      DIA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_23_UNCONNECTED,
      DIA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_22_UNCONNECTED,
      DIA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_21_UNCONNECTED,
      DIA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_20_UNCONNECTED,
      DIA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_19_UNCONNECTED,
      DIA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_18_UNCONNECTED,
      DIA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_17_UNCONNECTED,
      DIA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_16_UNCONNECTED,
      DIA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_15_UNCONNECTED,
      DIA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_14_UNCONNECTED,
      DIA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_13_UNCONNECTED,
      DIA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_12_UNCONNECTED,
      DIA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_11_UNCONNECTED,
      DIA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_10_UNCONNECTED,
      DIA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_9_UNCONNECTED,
      DIA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_8_UNCONNECTED,
      DIA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_7_UNCONNECTED,
      DIA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_6_UNCONNECTED,
      DIA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_5_UNCONNECTED,
      DIA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_4_UNCONNECTED,
      DIA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_3_UNCONNECTED,
      DIA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIA_2_UNCONNECTED,
      DIA(1) => '0',
      DIA(0) => '0',
      DIB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_31_UNCONNECTED,
      DIB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_30_UNCONNECTED,
      DIB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_29_UNCONNECTED,
      DIB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_28_UNCONNECTED,
      DIB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_27_UNCONNECTED,
      DIB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_26_UNCONNECTED,
      DIB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_25_UNCONNECTED,
      DIB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_24_UNCONNECTED,
      DIB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_23_UNCONNECTED,
      DIB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_22_UNCONNECTED,
      DIB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_21_UNCONNECTED,
      DIB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_20_UNCONNECTED,
      DIB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_19_UNCONNECTED,
      DIB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_18_UNCONNECTED,
      DIB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_17_UNCONNECTED,
      DIB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_16_UNCONNECTED,
      DIB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_15_UNCONNECTED,
      DIB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_14_UNCONNECTED,
      DIB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_13_UNCONNECTED,
      DIB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_12_UNCONNECTED,
      DIB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_11_UNCONNECTED,
      DIB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_10_UNCONNECTED,
      DIB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_9_UNCONNECTED,
      DIB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_8_UNCONNECTED,
      DIB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_7_UNCONNECTED,
      DIB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_6_UNCONNECTED,
      DIB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_5_UNCONNECTED,
      DIB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_4_UNCONNECTED,
      DIB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_3_UNCONNECTED,
      DIB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_2_UNCONNECTED,
      DIB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_1_UNCONNECTED,
      DIB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DIPB_0_UNCONNECTED,
      DOA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_31_UNCONNECTED,
      DOA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_30_UNCONNECTED,
      DOA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_29_UNCONNECTED,
      DOA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_28_UNCONNECTED,
      DOA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_27_UNCONNECTED,
      DOA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_26_UNCONNECTED,
      DOA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_25_UNCONNECTED,
      DOA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_24_UNCONNECTED,
      DOA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_23_UNCONNECTED,
      DOA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_22_UNCONNECTED,
      DOA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_21_UNCONNECTED,
      DOA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_20_UNCONNECTED,
      DOA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_19_UNCONNECTED,
      DOA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_18_UNCONNECTED,
      DOA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_17_UNCONNECTED,
      DOA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_16_UNCONNECTED,
      DOA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_15_UNCONNECTED,
      DOA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_14_UNCONNECTED,
      DOA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_13_UNCONNECTED,
      DOA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_12_UNCONNECTED,
      DOA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_11_UNCONNECTED,
      DOA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_10_UNCONNECTED,
      DOA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_9_UNCONNECTED,
      DOA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_8_UNCONNECTED,
      DOA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_7_UNCONNECTED,
      DOA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_6_UNCONNECTED,
      DOA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_5_UNCONNECTED,
      DOA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_4_UNCONNECTED,
      DOA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_3_UNCONNECTED,
      DOA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOA_2_UNCONNECTED,
      DOA(1) => pcm_out(11),
      DOA(0) => pcm_out(10),
      DOB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_31_UNCONNECTED,
      DOB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_30_UNCONNECTED,
      DOB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_29_UNCONNECTED,
      DOB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_28_UNCONNECTED,
      DOB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_27_UNCONNECTED,
      DOB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_26_UNCONNECTED,
      DOB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_25_UNCONNECTED,
      DOB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_24_UNCONNECTED,
      DOB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_23_UNCONNECTED,
      DOB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_22_UNCONNECTED,
      DOB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_21_UNCONNECTED,
      DOB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_20_UNCONNECTED,
      DOB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_19_UNCONNECTED,
      DOB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_18_UNCONNECTED,
      DOB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_17_UNCONNECTED,
      DOB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_16_UNCONNECTED,
      DOB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_15_UNCONNECTED,
      DOB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_14_UNCONNECTED,
      DOB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_13_UNCONNECTED,
      DOB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_12_UNCONNECTED,
      DOB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_11_UNCONNECTED,
      DOB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_10_UNCONNECTED,
      DOB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_9_UNCONNECTED,
      DOB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_8_UNCONNECTED,
      DOB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_7_UNCONNECTED,
      DOB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_6_UNCONNECTED,
      DOB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_5_UNCONNECTED,
      DOB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_4_UNCONNECTED,
      DOB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_3_UNCONNECTED,
      DOB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_2_UNCONNECTED,
      DOB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_1_UNCONNECTED,
      DOB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOB_0_UNCONNECTED,
      DOPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_DOPB_0_UNCONNECTED,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_3_UNCONNECTED,
      WEB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_2_UNCONNECTED,
      WEB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_1_UNCONNECTED,
      WEB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_WEB_0_UNCONNECTED
    );
  temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7 : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 0,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"5555555555555555555555555555555555555555555555000000000000000000",
      INIT_02 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555555555555",
      INIT_03 => X"FFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"5555555400000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_08 => X"AAAAAAAAAAAAAAAAAAAAAAA55555555555555555555555555555555555555555",
      INIT_09 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0A => X"FFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFF",
      INIT_16 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_17 => X"55555555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAA",
      INIT_18 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000055555555",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFF",
      INIT_1D => X"5555555555555555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1E => X"0000000000000000015555555555555555555555555555555555555555555555",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_21 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_23 => X"0000055555555555555555555555555555555555555555555555555555555555",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000000",
      INIT_26 => X"AAAAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_28 => X"55555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_29 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_2A => X"0000000005555555555555555555555555555555555555555555555555555555",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"5555555555555555555555555555555555555555555555555555554000000000",
      INIT_36 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_37 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA955555555555555555555555",
      INIT_38 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAA",
      INIT_3A => X"000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"5555555555555555555555555555555555555555555555555555555555400000",
      INIT_3D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9555555555555555555555555555",
      INIT_3E => X"FFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y16"
    )
    port map (
      CLKA => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_CLKA,
      CLKB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_CLKB_UNCONNECTED,
      ENA => '1',
      ENB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ENB_UNCONNECTED,
      REGCEA => '0',
      REGCEB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_REGCEB_UNCONNECTED,
      RSTA => '0',
      RSTB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_RSTB_UNCONNECTED,
      ADDRA(13) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(13),
      ADDRA(12) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(12),
      ADDRA(11) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(11),
      ADDRA(10) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(10),
      ADDRA(9) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(9),
      ADDRA(8) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(8),
      ADDRA(7) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(7),
      ADDRA(6) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(6),
      ADDRA(5) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(5),
      ADDRA(4) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(4),
      ADDRA(3) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(3),
      ADDRA(2) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(2),
      ADDRA(1) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(1),
      ADDRA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_13_UNCONNECTED,
      ADDRB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_12_UNCONNECTED,
      ADDRB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_11_UNCONNECTED,
      ADDRB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_10_UNCONNECTED,
      ADDRB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_9_UNCONNECTED,
      ADDRB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_8_UNCONNECTED,
      ADDRB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_7_UNCONNECTED,
      ADDRB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_6_UNCONNECTED,
      ADDRB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_5_UNCONNECTED,
      ADDRB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_4_UNCONNECTED,
      ADDRB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_3_UNCONNECTED,
      ADDRB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_31_UNCONNECTED,
      DIA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_30_UNCONNECTED,
      DIA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_29_UNCONNECTED,
      DIA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_28_UNCONNECTED,
      DIA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_27_UNCONNECTED,
      DIA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_26_UNCONNECTED,
      DIA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_25_UNCONNECTED,
      DIA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_24_UNCONNECTED,
      DIA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_23_UNCONNECTED,
      DIA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_22_UNCONNECTED,
      DIA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_21_UNCONNECTED,
      DIA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_20_UNCONNECTED,
      DIA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_19_UNCONNECTED,
      DIA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_18_UNCONNECTED,
      DIA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_17_UNCONNECTED,
      DIA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_16_UNCONNECTED,
      DIA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_15_UNCONNECTED,
      DIA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_14_UNCONNECTED,
      DIA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_13_UNCONNECTED,
      DIA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_12_UNCONNECTED,
      DIA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_11_UNCONNECTED,
      DIA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_10_UNCONNECTED,
      DIA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_9_UNCONNECTED,
      DIA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_8_UNCONNECTED,
      DIA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_7_UNCONNECTED,
      DIA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_6_UNCONNECTED,
      DIA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_5_UNCONNECTED,
      DIA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_4_UNCONNECTED,
      DIA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_3_UNCONNECTED,
      DIA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIA_2_UNCONNECTED,
      DIA(1) => '0',
      DIA(0) => '0',
      DIB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_31_UNCONNECTED,
      DIB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_30_UNCONNECTED,
      DIB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_29_UNCONNECTED,
      DIB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_28_UNCONNECTED,
      DIB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_27_UNCONNECTED,
      DIB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_26_UNCONNECTED,
      DIB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_25_UNCONNECTED,
      DIB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_24_UNCONNECTED,
      DIB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_23_UNCONNECTED,
      DIB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_22_UNCONNECTED,
      DIB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_21_UNCONNECTED,
      DIB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_20_UNCONNECTED,
      DIB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_19_UNCONNECTED,
      DIB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_18_UNCONNECTED,
      DIB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_17_UNCONNECTED,
      DIB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_16_UNCONNECTED,
      DIB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_15_UNCONNECTED,
      DIB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_14_UNCONNECTED,
      DIB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_13_UNCONNECTED,
      DIB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_12_UNCONNECTED,
      DIB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_11_UNCONNECTED,
      DIB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_10_UNCONNECTED,
      DIB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_9_UNCONNECTED,
      DIB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_8_UNCONNECTED,
      DIB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_7_UNCONNECTED,
      DIB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_6_UNCONNECTED,
      DIB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_5_UNCONNECTED,
      DIB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_4_UNCONNECTED,
      DIB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_3_UNCONNECTED,
      DIB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_2_UNCONNECTED,
      DIB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_1_UNCONNECTED,
      DIB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DIPB_0_UNCONNECTED,
      DOA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_31_UNCONNECTED,
      DOA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_30_UNCONNECTED,
      DOA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_29_UNCONNECTED,
      DOA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_28_UNCONNECTED,
      DOA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_27_UNCONNECTED,
      DOA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_26_UNCONNECTED,
      DOA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_25_UNCONNECTED,
      DOA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_24_UNCONNECTED,
      DOA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_23_UNCONNECTED,
      DOA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_22_UNCONNECTED,
      DOA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_21_UNCONNECTED,
      DOA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_20_UNCONNECTED,
      DOA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_19_UNCONNECTED,
      DOA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_18_UNCONNECTED,
      DOA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_17_UNCONNECTED,
      DOA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_16_UNCONNECTED,
      DOA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_15_UNCONNECTED,
      DOA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_14_UNCONNECTED,
      DOA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_13_UNCONNECTED,
      DOA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_12_UNCONNECTED,
      DOA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_11_UNCONNECTED,
      DOA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_10_UNCONNECTED,
      DOA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_9_UNCONNECTED,
      DOA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_8_UNCONNECTED,
      DOA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_7_UNCONNECTED,
      DOA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_6_UNCONNECTED,
      DOA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_5_UNCONNECTED,
      DOA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_4_UNCONNECTED,
      DOA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_3_UNCONNECTED,
      DOA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOA_2_UNCONNECTED,
      DOA(1) => pcm_out(13),
      DOA(0) => pcm_out(12),
      DOB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_31_UNCONNECTED,
      DOB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_30_UNCONNECTED,
      DOB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_29_UNCONNECTED,
      DOB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_28_UNCONNECTED,
      DOB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_27_UNCONNECTED,
      DOB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_26_UNCONNECTED,
      DOB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_25_UNCONNECTED,
      DOB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_24_UNCONNECTED,
      DOB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_23_UNCONNECTED,
      DOB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_22_UNCONNECTED,
      DOB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_21_UNCONNECTED,
      DOB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_20_UNCONNECTED,
      DOB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_19_UNCONNECTED,
      DOB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_18_UNCONNECTED,
      DOB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_17_UNCONNECTED,
      DOB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_16_UNCONNECTED,
      DOB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_15_UNCONNECTED,
      DOB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_14_UNCONNECTED,
      DOB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_13_UNCONNECTED,
      DOB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_12_UNCONNECTED,
      DOB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_11_UNCONNECTED,
      DOB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_10_UNCONNECTED,
      DOB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_9_UNCONNECTED,
      DOB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_8_UNCONNECTED,
      DOB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_7_UNCONNECTED,
      DOB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_6_UNCONNECTED,
      DOB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_5_UNCONNECTED,
      DOB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_4_UNCONNECTED,
      DOB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_3_UNCONNECTED,
      DOB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_2_UNCONNECTED,
      DOB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_1_UNCONNECTED,
      DOB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOB_0_UNCONNECTED,
      DOPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_DOPB_0_UNCONNECTED,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_3_UNCONNECTED,
      WEB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_2_UNCONNECTED,
      WEB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_1_UNCONNECTED,
      WEB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_WEB_0_UNCONNECTED
    );
  temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8 : X_RAMB16BWER
    generic map(
      DATA_WIDTH_A => 2,
      DATA_WIDTH_B => 0,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"5555555555555555555555555555555555555555554000000000000000000000",
      INIT_06 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_07 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_08 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_09 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0E => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0F => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_10 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_11 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_12 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_13 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_14 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_15 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_16 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_17 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_18 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_19 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_1A => X"0000000000000000000005555555555555555555555555555555555555555555",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_27 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_28 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_29 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_2F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_30 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_31 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_32 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_33 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_34 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_35 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_36 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_37 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_38 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_39 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "SPARTAN6",
      INIT_FILE => "NONE",
      LOC => "RAMB16_X1Y12"
    )
    port map (
      CLKA => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_CLKA,
      CLKB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_CLKB_UNCONNECTED,
      ENA => '1',
      ENB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ENB_UNCONNECTED,
      REGCEA => '0',
      REGCEB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_REGCEB_UNCONNECTED,
      RSTA => '0',
      RSTB => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_RSTB_UNCONNECTED,
      ADDRA(13) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(13),
      ADDRA(12) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(12),
      ADDRA(11) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(11),
      ADDRA(10) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(10),
      ADDRA(9) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(9),
      ADDRA(8) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(8),
      ADDRA(7) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(7),
      ADDRA(6) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(6),
      ADDRA(5) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(5),
      ADDRA(4) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(4),
      ADDRA(3) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(3),
      ADDRA(2) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(2),
      ADDRA(1) => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(1),
      ADDRA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_0_UNCONNECTED,
      ADDRB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_13_UNCONNECTED,
      ADDRB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_12_UNCONNECTED,
      ADDRB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_11_UNCONNECTED,
      ADDRB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_10_UNCONNECTED,
      ADDRB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_9_UNCONNECTED,
      ADDRB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_8_UNCONNECTED,
      ADDRB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_7_UNCONNECTED,
      ADDRB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_6_UNCONNECTED,
      ADDRB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_5_UNCONNECTED,
      ADDRB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_4_UNCONNECTED,
      ADDRB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_3_UNCONNECTED,
      ADDRB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_31_UNCONNECTED,
      DIA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_30_UNCONNECTED,
      DIA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_29_UNCONNECTED,
      DIA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_28_UNCONNECTED,
      DIA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_27_UNCONNECTED,
      DIA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_26_UNCONNECTED,
      DIA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_25_UNCONNECTED,
      DIA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_24_UNCONNECTED,
      DIA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_23_UNCONNECTED,
      DIA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_22_UNCONNECTED,
      DIA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_21_UNCONNECTED,
      DIA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_20_UNCONNECTED,
      DIA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_19_UNCONNECTED,
      DIA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_18_UNCONNECTED,
      DIA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_17_UNCONNECTED,
      DIA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_16_UNCONNECTED,
      DIA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_15_UNCONNECTED,
      DIA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_14_UNCONNECTED,
      DIA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_13_UNCONNECTED,
      DIA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_12_UNCONNECTED,
      DIA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_11_UNCONNECTED,
      DIA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_10_UNCONNECTED,
      DIA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_9_UNCONNECTED,
      DIA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_8_UNCONNECTED,
      DIA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_7_UNCONNECTED,
      DIA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_6_UNCONNECTED,
      DIA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_5_UNCONNECTED,
      DIA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_4_UNCONNECTED,
      DIA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_3_UNCONNECTED,
      DIA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIA_2_UNCONNECTED,
      DIA(1) => '0',
      DIA(0) => '0',
      DIB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_31_UNCONNECTED,
      DIB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_30_UNCONNECTED,
      DIB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_29_UNCONNECTED,
      DIB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_28_UNCONNECTED,
      DIB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_27_UNCONNECTED,
      DIB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_26_UNCONNECTED,
      DIB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_25_UNCONNECTED,
      DIB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_24_UNCONNECTED,
      DIB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_23_UNCONNECTED,
      DIB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_22_UNCONNECTED,
      DIB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_21_UNCONNECTED,
      DIB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_20_UNCONNECTED,
      DIB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_19_UNCONNECTED,
      DIB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_18_UNCONNECTED,
      DIB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_17_UNCONNECTED,
      DIB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_16_UNCONNECTED,
      DIB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_15_UNCONNECTED,
      DIB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_14_UNCONNECTED,
      DIB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_13_UNCONNECTED,
      DIB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_12_UNCONNECTED,
      DIB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_11_UNCONNECTED,
      DIB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_10_UNCONNECTED,
      DIB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_9_UNCONNECTED,
      DIB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_8_UNCONNECTED,
      DIB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_7_UNCONNECTED,
      DIB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_6_UNCONNECTED,
      DIB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_5_UNCONNECTED,
      DIB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_4_UNCONNECTED,
      DIB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_3_UNCONNECTED,
      DIB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_2_UNCONNECTED,
      DIB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_1_UNCONNECTED,
      DIB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DIPB_0_UNCONNECTED,
      DOA(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_31_UNCONNECTED,
      DOA(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_30_UNCONNECTED,
      DOA(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_29_UNCONNECTED,
      DOA(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_28_UNCONNECTED,
      DOA(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_27_UNCONNECTED,
      DOA(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_26_UNCONNECTED,
      DOA(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_25_UNCONNECTED,
      DOA(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_24_UNCONNECTED,
      DOA(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_23_UNCONNECTED,
      DOA(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_22_UNCONNECTED,
      DOA(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_21_UNCONNECTED,
      DOA(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_20_UNCONNECTED,
      DOA(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_19_UNCONNECTED,
      DOA(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_18_UNCONNECTED,
      DOA(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_17_UNCONNECTED,
      DOA(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_16_UNCONNECTED,
      DOA(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_15_UNCONNECTED,
      DOA(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_14_UNCONNECTED,
      DOA(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_13_UNCONNECTED,
      DOA(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_12_UNCONNECTED,
      DOA(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_11_UNCONNECTED,
      DOA(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_10_UNCONNECTED,
      DOA(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_9_UNCONNECTED,
      DOA(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_8_UNCONNECTED,
      DOA(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_7_UNCONNECTED,
      DOA(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_6_UNCONNECTED,
      DOA(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_5_UNCONNECTED,
      DOA(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_4_UNCONNECTED,
      DOA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_3_UNCONNECTED,
      DOA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOA_2_UNCONNECTED,
      DOA(1) => pcm_out(15),
      DOA(0) => pcm_out(14),
      DOB(31) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_31_UNCONNECTED,
      DOB(30) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_30_UNCONNECTED,
      DOB(29) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_29_UNCONNECTED,
      DOB(28) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_28_UNCONNECTED,
      DOB(27) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_27_UNCONNECTED,
      DOB(26) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_26_UNCONNECTED,
      DOB(25) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_25_UNCONNECTED,
      DOB(24) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_24_UNCONNECTED,
      DOB(23) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_23_UNCONNECTED,
      DOB(22) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_22_UNCONNECTED,
      DOB(21) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_21_UNCONNECTED,
      DOB(20) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_20_UNCONNECTED,
      DOB(19) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_19_UNCONNECTED,
      DOB(18) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_18_UNCONNECTED,
      DOB(17) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_17_UNCONNECTED,
      DOB(16) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_16_UNCONNECTED,
      DOB(15) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_15_UNCONNECTED,
      DOB(14) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_14_UNCONNECTED,
      DOB(13) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_13_UNCONNECTED,
      DOB(12) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_12_UNCONNECTED,
      DOB(11) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_11_UNCONNECTED,
      DOB(10) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_10_UNCONNECTED,
      DOB(9) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_9_UNCONNECTED,
      DOB(8) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_8_UNCONNECTED,
      DOB(7) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_7_UNCONNECTED,
      DOB(6) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_6_UNCONNECTED,
      DOB(5) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_5_UNCONNECTED,
      DOB(4) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_4_UNCONNECTED,
      DOB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_3_UNCONNECTED,
      DOB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_2_UNCONNECTED,
      DOB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_1_UNCONNECTED,
      DOB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOB_0_UNCONNECTED,
      DOPA(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_DOPB_0_UNCONNECTED,
      WEA(3) => '0',
      WEA(2) => '0',
      WEA(1) => '0',
      WEA(0) => '0',
      WEB(3) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_3_UNCONNECTED,
      WEB(2) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_2_UNCONNECTED,
      WEB(1) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_1_UNCONNECTED,
      WEB(0) => NLW_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_WEB_0_UNCONNECTED
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"0022001100220011"
    )
    port map (
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_counter(7),
      ADR3 => uart_top_1_uart_rx_1_counter(8),
      ADR4 => uart_top_1_uart_rx_1_counter_max(2),
      ADR0 => uart_top_1_uart_rx_1_counter(6),
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lut(3)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"00330011"
    )
    port map (
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_counter(7),
      ADR3 => uart_top_1_uart_rx_1_counter(8),
      ADR4 => uart_top_1_uart_rx_1_counter_max(2),
      ADR0 => uart_top_1_uart_rx_1_counter(6),
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi3_197
    );
  ProtoComp39_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X2Y51"
    )
    port map (
      O => ProtoComp39_CYINITGND_0
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y51"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp39_CYINITGND_0,
      CO(3) => uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_Q_3353,
      CO(2) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_CO_0_UNCONNECTED,
      DI(3) => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi3_197,
      DI(2) => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi2_205,
      DI(1) => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi1_211,
      DI(0) => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi_217,
      O(3) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_O_0_UNCONNECTED,
      S(3) => uart_top_1_uart_rx_1_Mcompar_n0102_lut(3),
      S(2) => uart_top_1_uart_rx_1_Mcompar_n0102_lut(2),
      S(1) => uart_top_1_uart_rx_1_Mcompar_n0102_lut(1),
      S(0) => uart_top_1_uart_rx_1_Mcompar_n0102_lut(0)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_counter_max(2),
      ADR4 => uart_top_1_uart_rx_1_counter(4),
      ADR0 => uart_top_1_uart_rx_1_counter_max(0),
      ADR3 => uart_top_1_uart_rx_1_counter(5),
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lut(2)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"88EEAAFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_counter_max(2),
      ADR4 => uart_top_1_uart_rx_1_counter(4),
      ADR0 => uart_top_1_uart_rx_1_counter_max(0),
      ADR3 => uart_top_1_uart_rx_1_counter(5),
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi2_205
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"C00C3003C00C3003"
    )
    port map (
      ADR0 => '1',
      ADR3 => uart_top_1_uart_rx_1_counter_max(2),
      ADR2 => uart_top_1_uart_rx_1_counter(2),
      ADR4 => uart_top_1_uart_rx_1_counter_max(0),
      ADR1 => uart_top_1_uart_rx_1_counter(3),
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lut(1)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"FF3F3303"
    )
    port map (
      ADR0 => '1',
      ADR3 => uart_top_1_uart_rx_1_counter_max(2),
      ADR2 => uart_top_1_uart_rx_1_counter(2),
      ADR4 => uart_top_1_uart_rx_1_counter_max(0),
      ADR1 => uart_top_1_uart_rx_1_counter(3),
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi1_211
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"9090090990900909"
    )
    port map (
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter_max(0),
      ADR2 => uart_top_1_uart_rx_1_counter(0),
      ADR0 => uart_top_1_uart_rx_1_counter_max(1),
      ADR1 => uart_top_1_uart_rx_1_counter(1),
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lut(0)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => X"BBBB2B2B"
    )
    port map (
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter_max(0),
      ADR2 => uart_top_1_uart_rx_1_counter(0),
      ADR0 => uart_top_1_uart_rx_1_counter_max(1),
      ADR1 => uart_top_1_uart_rx_1_counter(1),
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi_217
    );
  uart_top_1_uart_rx_1_counter_0_uart_top_1_uart_rx_1_counter_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_pack_3,
      O => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q
    );
  uart_top_1_uart_rx_1_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_0_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter,
      O => uart_top_1_uart_rx_1_counter(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(0),
      ADR1 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(0)
    );
  debug_light_generator_1_current_ws2812_b_0_61_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_61_D5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_Mcount_counter_cy_0_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y52"
    )
    port map (
      CI => uart_top_1_uart_rx_1_Mcompar_n0102_cy_3_Q_3353,
      CYINIT => '0',
      CO(3) => uart_top_1_uart_rx_1_Mcount_counter_cy_0_Q_3361,
      CO(2) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_CO_2_UNCONNECTED,
      CO(1) => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_pack_3,
      CO(0) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_DI_2_UNCONNECTED,
      DI(1) => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi5_226,
      DI(0) => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi4_232,
      O(3) => uart_top_1_uart_rx_1_Mcount_counter,
      O(2) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_O_2_UNCONNECTED,
      O(1) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_O_1_UNCONNECTED,
      O(0) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_0_O_0_UNCONNECTED,
      S(3) => uart_top_1_uart_rx_1_Mcount_counter_lut(0),
      S(2) => '1',
      S(1) => uart_top_1_uart_rx_1_Mcompar_n0102_lut(5),
      S(0) => uart_top_1_uart_rx_1_Mcompar_n0102_lut(4)
    );
  buttons_17_pressed_INV_306_o_norst_19_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_19_C6LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"9900009999000099"
    )
    port map (
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_counter_max(0),
      ADR0 => uart_top_1_uart_rx_1_counter(11),
      ADR3 => uart_top_1_uart_rx_1_counter_max(2),
      ADR4 => uart_top_1_uart_rx_1_counter(12),
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lut(5)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"DD00FFDD"
    )
    port map (
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_counter_max(0),
      ADR0 => uart_top_1_uart_rx_1_counter(11),
      ADR3 => uart_top_1_uart_rx_1_counter_max(2),
      ADR4 => uart_top_1_uart_rx_1_counter(12),
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi5_226
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"C0300C03C0300C03"
    )
    port map (
      ADR0 => '1',
      ADR2 => uart_top_1_uart_rx_1_counter_max(0),
      ADR4 => uart_top_1_uart_rx_1_counter(9),
      ADR3 => uart_top_1_uart_rx_1_counter_max(2),
      ADR1 => uart_top_1_uart_rx_1_counter(10),
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lut(4)
    );
  uart_top_1_uart_rx_1_Mcompar_n0102_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y52",
      INIT => X"F330FF33"
    )
    port map (
      ADR0 => '1',
      ADR2 => uart_top_1_uart_rx_1_counter_max(0),
      ADR4 => uart_top_1_uart_rx_1_counter(9),
      ADR3 => uart_top_1_uart_rx_1_counter_max(2),
      ADR1 => uart_top_1_uart_rx_1_counter(10),
      O => uart_top_1_uart_rx_1_Mcompar_n0102_lutdi4_232
    );
  uart_top_1_uart_rx_1_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_4_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter4,
      O => uart_top_1_uart_rx_1_counter(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => uart_top_1_uart_rx_1_counter(4),
      ADR4 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(4)
    );
  debug_light_generator_1_current_ws2812_b_0_57_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_57_D5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_3_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter3,
      O => uart_top_1_uart_rx_1_counter(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y53"
    )
    port map (
      CI => uart_top_1_uart_rx_1_Mcount_counter_cy_0_Q_3361,
      CYINIT => '0',
      CO(3) => uart_top_1_uart_rx_1_Mcount_counter_cy_4_Q_3362,
      CO(2) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_4_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_4_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_top_1_uart_rx_1_Mcount_counter4,
      O(2) => uart_top_1_uart_rx_1_Mcount_counter3,
      O(1) => uart_top_1_uart_rx_1_Mcount_counter2,
      O(0) => uart_top_1_uart_rx_1_Mcount_counter1,
      S(3) => uart_top_1_uart_rx_1_Mcount_counter_lut(4),
      S(2) => uart_top_1_uart_rx_1_Mcount_counter_lut(3),
      S(1) => uart_top_1_uart_rx_1_Mcount_counter_lut(2),
      S(0) => uart_top_1_uart_rx_1_Mcount_counter_lut(1)
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(3),
      ADR1 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(3)
    );
  debug_light_generator_1_current_ws2812_b_0_58_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_58_C5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_2_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter2,
      O => uart_top_1_uart_rx_1_counter(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(2),
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(2)
    );
  debug_light_generator_1_current_ws2812_b_0_59_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_59_B5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_1_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter1,
      O => uart_top_1_uart_rx_1_counter(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(1),
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(1)
    );
  debug_light_generator_1_current_ws2812_b_0_60_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_60_A5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_8_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter8,
      O => uart_top_1_uart_rx_1_counter(8),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(8),
      ADR1 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(8)
    );
  debug_light_generator_1_current_ws2812_b_0_53_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_53_D5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_7_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter7,
      O => uart_top_1_uart_rx_1_counter(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_cy_8_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y54"
    )
    port map (
      CI => uart_top_1_uart_rx_1_Mcount_counter_cy_4_Q_3362,
      CYINIT => '0',
      CO(3) => uart_top_1_uart_rx_1_Mcount_counter_cy_8_Q_3363,
      CO(2) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_8_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_8_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_rx_1_Mcount_counter_cy_8_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_top_1_uart_rx_1_Mcount_counter8,
      O(2) => uart_top_1_uart_rx_1_Mcount_counter7,
      O(1) => uart_top_1_uart_rx_1_Mcount_counter6,
      O(0) => uart_top_1_uart_rx_1_Mcount_counter5,
      S(3) => uart_top_1_uart_rx_1_Mcount_counter_lut(8),
      S(2) => uart_top_1_uart_rx_1_Mcount_counter_lut(7),
      S(1) => uart_top_1_uart_rx_1_Mcount_counter_lut(6),
      S(0) => uart_top_1_uart_rx_1_Mcount_counter_lut(5)
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(7),
      ADR1 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(7)
    );
  debug_light_generator_1_current_ws2812_b_0_54_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_54_C5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_6_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter6,
      O => uart_top_1_uart_rx_1_counter(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(6),
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(6)
    );
  debug_light_generator_1_current_ws2812_b_0_55_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_55_B5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_5_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter5,
      O => uart_top_1_uart_rx_1_counter(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(5),
      ADR3 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(5)
    );
  debug_light_generator_1_current_ws2812_b_0_56_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_56_A5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_12 : X_SFF
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_12_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter12,
      O => uart_top_1_uart_rx_1_counter(12),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1570_121 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(12),
      ADR3 => '1',
      ADR5 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      O => lut1570_121_322
    );
  uart_top_1_uart_rx_1_counter_11 : X_SFF
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_11_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter11,
      O => uart_top_1_uart_rx_1_counter(11),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_xor_12_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y55"
    )
    port map (
      CI => uart_top_1_uart_rx_1_Mcount_counter_cy_8_Q_3363,
      CYINIT => '0',
      CO(3) => NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_top_1_uart_rx_1_Mcount_counter_xor_12_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_top_1_uart_rx_1_Mcount_counter12,
      O(2) => uart_top_1_uart_rx_1_Mcount_counter11,
      O(1) => uart_top_1_uart_rx_1_Mcount_counter10,
      O(0) => uart_top_1_uart_rx_1_Mcount_counter9,
      S(3) => lut1570_121_322,
      S(2) => uart_top_1_uart_rx_1_Mcount_counter_lut(11),
      S(1) => uart_top_1_uart_rx_1_Mcount_counter_lut(10),
      S(0) => uart_top_1_uart_rx_1_Mcount_counter_lut(9)
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(11),
      ADR1 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(11)
    );
  debug_light_generator_1_current_ws2812_b_0_50_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_50_C5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_10_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter10,
      O => uart_top_1_uart_rx_1_counter(10),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(10),
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(10)
    );
  debug_light_generator_1_current_ws2812_b_0_51_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_51_B5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_rx_1_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => '0'
    )
    port map (
      CE => Q_2485_473_0,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_9_CLK,
      I => uart_top_1_uart_rx_1_Mcount_counter9,
      O => uart_top_1_uart_rx_1_counter(9),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_Mcount_counter_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => uart_top_1_uart_rx_1_counter(9),
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => uart_top_1_uart_rx_1_Mcount_counter_lut(9)
    );
  debug_light_generator_1_current_ws2812_b_0_52_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X2Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_52_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_3_CLK,
      I => spi_top_1_Result_3_1,
      O => spi_top_1_tx_fifo_read_addr(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_fifo_read_addr(3),
      ADR4 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_3_rt_352
    );
  debug_light_generator_1_current_ws2812_b_0_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_8_D5LUT_O_UNCONNECTED
    );
  ProtoComp43_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X12Y36"
    )
    port map (
      O => ProtoComp43_CYINITGND_0
    );
  spi_top_1_tx_fifo_read_addr_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_2_CLK,
      I => spi_top_1_Result_2_1,
      O => spi_top_1_tx_fifo_read_addr(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_read_addr_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y36"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp43_CYINITGND_0,
      CO(3) => spi_top_1_tx_fifo_Mcount_read_addr_cy_3_Q_3364,
      CO(2) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => spi_top_1_Result_3_1,
      O(2) => spi_top_1_Result_2_1,
      O(1) => spi_top_1_Result_1_1,
      O(0) => spi_top_1_Result_0_1,
      S(3) => spi_top_1_tx_fifo_read_addr_3_rt_352,
      S(2) => spi_top_1_tx_fifo_read_addr_2_rt_364,
      S(1) => spi_top_1_tx_fifo_read_addr_1_rt_368,
      S(0) => spi_top_1_tx_fifo_Mcount_read_addr_lut(0)
    );
  spi_top_1_tx_fifo_read_addr_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(2),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_2_rt_364
    );
  debug_light_generator_1_current_ws2812_b_0_9_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_9_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_1 : X_SFF
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_1_CLK,
      I => spi_top_1_Result_1_1,
      O => spi_top_1_tx_fifo_read_addr(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(1),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_1_rt_368
    );
  debug_light_generator_1_current_ws2812_b_0_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_10_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_0 : X_SFF
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_0_CLK,
      I => spi_top_1_Result_0_1,
      O => spi_top_1_tx_fifo_read_addr(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_read_addr_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(0),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Mcount_read_addr_lut(0)
    );
  buttons_17_pressed_INV_306_o_norst_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_7 : X_SFF
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_7_CLK,
      I => spi_top_1_Result_7_1,
      O => spi_top_1_tx_fifo_read_addr(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_fifo_read_addr(7),
      ADR4 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_7_rt_381
    );
  debug_light_generator_1_current_ws2812_b_0_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_4_D5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_6 : X_SFF
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_6_CLK,
      I => spi_top_1_Result_6_1,
      O => spi_top_1_tx_fifo_read_addr(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_read_addr_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y37"
    )
    port map (
      CI => spi_top_1_tx_fifo_Mcount_read_addr_cy_3_Q_3364,
      CYINIT => '0',
      CO(3) => spi_top_1_tx_fifo_Mcount_read_addr_cy_7_Q_3365,
      CO(2) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_Result_7_1,
      O(2) => spi_top_1_Result_6_1,
      O(1) => spi_top_1_Result_5_1,
      O(0) => spi_top_1_Result_4_1,
      S(3) => spi_top_1_tx_fifo_read_addr_7_rt_381,
      S(2) => spi_top_1_tx_fifo_read_addr_6_rt_393,
      S(1) => spi_top_1_tx_fifo_read_addr_5_rt_397,
      S(0) => spi_top_1_tx_fifo_read_addr_4_rt_401
    );
  spi_top_1_tx_fifo_read_addr_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(6),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_6_rt_393
    );
  debug_light_generator_1_current_ws2812_b_0_5_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_5_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_5 : X_SFF
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_5_CLK,
      I => spi_top_1_Result_5_1,
      O => spi_top_1_tx_fifo_read_addr(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(5),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_5_rt_397
    );
  debug_light_generator_1_current_ws2812_b_0_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_6_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_4 : X_SFF
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_4_CLK,
      I => spi_top_1_Result_4_1,
      O => spi_top_1_tx_fifo_read_addr(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(4),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_4_rt_401
    );
  debug_light_generator_1_current_ws2812_b_0_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_7_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_11 : X_SFF
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_11_CLK,
      I => spi_top_1_Result_11_1,
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      ADR4 => '1',
      ADR3 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt_410
    );
  spi_top_1_tx_fifo_read_addr_10 : X_SFF
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_10_CLK,
      I => spi_top_1_Result_10_1,
      O => spi_top_1_tx_fifo_read_addr(10),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_read_addr_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y38"
    )
    port map (
      CI => spi_top_1_tx_fifo_Mcount_read_addr_cy_7_Q_3365,
      CYINIT => '0',
      CO(3) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_spi_top_1_tx_fifo_Mcount_read_addr_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_Result_11_1,
      O(2) => spi_top_1_Result_10_1,
      O(1) => spi_top_1_Result_9_1,
      O(0) => spi_top_1_Result_8_1,
      S(3) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt_410,
      S(2) => spi_top_1_tx_fifo_read_addr_10_rt_420,
      S(1) => spi_top_1_tx_fifo_read_addr_9_rt_424,
      S(0) => spi_top_1_tx_fifo_read_addr_8_rt_428
    );
  spi_top_1_tx_fifo_read_addr_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(10),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_10_rt_420
    );
  debug_light_generator_1_current_ws2812_b_0_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_9 : X_SFF
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_9_CLK,
      I => spi_top_1_Result_9_1,
      O => spi_top_1_tx_fifo_read_addr(9),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(9),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_9_rt_424
    );
  debug_light_generator_1_current_ws2812_b_0_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_2_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_8 : X_SFF
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => '0'
    )
    port map (
      CE => lut539_207_3266,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_8_CLK,
      I => spi_top_1_Result_8_1,
      O => spi_top_1_tx_fifo_read_addr(8),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_read_addr_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(8),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_8_rt_428
    );
  debug_light_generator_1_current_ws2812_b_0_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_3_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_3_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg3,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(3),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"0C0C3F3F0C0C3F3F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(3),
      ADR2 => spi_top_1_spi_tx_1_latched_data_int(3),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(3)
    );
  buttons_17_pressed_INV_306_o_norst_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_10_D5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_2_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg2,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(2),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y21"
    )
    port map (
      CI => '0',
      CYINIT => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      CO(3) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy(3),
      CO(2) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg3,
      O(2) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg2,
      O(1) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg1,
      O(0) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg,
      S(3) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(3),
      S(2) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(2),
      S(1) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(1),
      S(0) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(0)
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"330033FF330033FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(2),
      ADR1 => spi_top_1_spi_tx_1_latched_data_int(2),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(2)
    );
  buttons_17_pressed_INV_306_o_norst_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_11_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_1_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg1,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(1),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"00CC33FF00CC33FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(1),
      ADR3 => spi_top_1_spi_tx_1_latched_data_int(1),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(1)
    );
  buttons_17_pressed_INV_306_o_norst_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_12_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_0_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(0),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"33330F0F33330F0F"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR2 => spi_top_1_tx_controller_remaining_bytes_this_msg(0),
      ADR1 => spi_top_1_spi_tx_1_latched_data_int(0),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(0)
    );
  buttons_17_pressed_INV_306_o_norst_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y21",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_13_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_7_spi_top_1_tx_controller_remaining_bytes_this_msg_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut855_256_472,
      O => lut855_256_0
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_7 : X_FF
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_7_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg7,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(7),
      RST => GND,
      SET => GND
    );
  lut849_123 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"0A0A5F5F0A0A5F5F"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(7),
      ADR2 => spi_top_1_spi_tx_1_latched_data_int(7),
      ADR5 => '1',
      O => Q_1618_124
    );
  lut855_256 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"00330033"
    )
    port map (
      ADR1 => spi_top_1_tx_controller_remaining_bytes_this_msg(6),
      ADR3 => spi_top_1_tx_controller_remaining_bytes_this_msg(1),
      ADR2 => '1',
      ADR0 => '1',
      ADR4 => '1',
      O => lut855_256_472
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_6 : X_FF
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_6_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg6,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(6),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y22"
    )
    port map (
      CI => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_cy(3),
      CYINIT => '0',
      CO(3) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_xor_7_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg7,
      O(2) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg6,
      O(1) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg5,
      O(0) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg4,
      S(3) => Q_1618_124,
      S(2) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(6),
      S(1) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(5),
      S(0) => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(4)
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"0F000FFF0F000FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(6),
      ADR2 => spi_top_1_spi_tx_1_latched_data_int(6),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(6)
    );
  buttons_17_pressed_INV_306_o_norst_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_7_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_5 : X_FF
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_5_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg5,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(5),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"00AA55FF00AA55FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(5),
      ADR3 => spi_top_1_spi_tx_1_latched_data_int(5),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(5)
    );
  buttons_17_pressed_INV_306_o_norst_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_8_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_controller_remaining_bytes_this_msg_4 : X_FF
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => '0'
    )
    port map (
      CE => Q_2204_259,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_4_CLK,
      I => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg4,
      O => spi_top_1_tx_controller_remaining_bytes_this_msg(4),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"4444777744447777"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR4 => spi_top_1_tx_controller_remaining_bytes_this_msg(4),
      ADR0 => spi_top_1_spi_tx_1_latched_data_int(4),
      ADR5 => '1',
      O => spi_top_1_tx_controller_Mcount_remaining_bytes_this_msg_lut(4)
    );
  buttons_17_pressed_INV_306_o_norst_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_9_A5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_3 : X_SFF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_3_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count3,
      O => uart_top_1_uart_tx_1_tx_count(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"5050000050500000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(3),
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(3)
    );
  debug_light_generator_1_current_ws2812_b_0_70_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_70_D5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_2 : X_SFF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_2_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count2,
      O => uart_top_1_uart_tx_1_tx_count(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y33"
    )
    port map (
      CI => '0',
      CYINIT => uart_top_1_uart_tx_1_GND_14_o_GND_14_o_OR_8_o_inv,
      CO(3) => uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_Q_3391,
      CO(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_top_1_uart_tx_1_Mcount_tx_count3,
      O(2) => uart_top_1_uart_tx_1_Mcount_tx_count2,
      O(1) => uart_top_1_uart_tx_1_Mcount_tx_count1,
      O(0) => uart_top_1_uart_tx_1_Mcount_tx_count,
      S(3) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(3),
      S(2) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(2),
      S(1) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(1),
      S(0) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(0)
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(2),
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(2)
    );
  debug_light_generator_1_current_ws2812_b_0_71_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_71_C5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_1 : X_SFF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_1_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count1,
      O => uart_top_1_uart_tx_1_tx_count(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"0000AA000000AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR3 => uart_top_1_uart_tx_1_tx_count(1),
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(1)
    );
  debug_light_generator_1_current_ws2812_b_0_72_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_72_B5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_0 : X_SFF
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_0_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count,
      O => uart_top_1_uart_tx_1_tx_count(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"4040404040404040"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR1 => uart_top_1_uart_tx_1_tx_count(0),
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(0)
    );
  debug_light_generator_1_current_ws2812_b_0_73_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_73_A5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_7 : X_SFF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_7_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count7,
      O => uart_top_1_uart_tx_1_tx_count(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"0000CC000000CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR3 => uart_top_1_uart_tx_1_tx_count(7),
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(7)
    );
  debug_light_generator_1_current_ws2812_b_0_66_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_66_D5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_6 : X_SFF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_6_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count6,
      O => uart_top_1_uart_tx_1_tx_count(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      CI => uart_top_1_uart_tx_1_Mcount_tx_count_cy_3_Q_3391,
      CYINIT => '0',
      CO(3) => uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_Q_3396,
      CO(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_top_1_uart_tx_1_Mcount_tx_count7,
      O(2) => uart_top_1_uart_tx_1_Mcount_tx_count6,
      O(1) => uart_top_1_uart_tx_1_Mcount_tx_count5,
      O(0) => uart_top_1_uart_tx_1_Mcount_tx_count4,
      S(3) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(7),
      S(2) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(6),
      S(1) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(5),
      S(0) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(4)
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00CC000000CC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(6),
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(6)
    );
  debug_light_generator_1_current_ws2812_b_0_67_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_67_C5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_5 : X_SFF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_5_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count5,
      O => uart_top_1_uart_tx_1_tx_count(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00F0000000F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(5),
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(5)
    );
  debug_light_generator_1_current_ws2812_b_0_68_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_68_B5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_4 : X_SFF
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_4_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count4,
      O => uart_top_1_uart_tx_1_tx_count(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"5500000055000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(4),
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(4)
    );
  debug_light_generator_1_current_ws2812_b_0_69_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_69_A5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_11 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_11_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count11,
      O => uart_top_1_uart_tx_1_tx_count(11),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"5500000055000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(11),
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(11)
    );
  debug_light_generator_1_current_ws2812_b_0_62_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_62_D5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_10 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_10_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count10,
      O => uart_top_1_uart_tx_1_tx_count(10),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y35"
    )
    port map (
      CI => uart_top_1_uart_tx_1_Mcount_tx_count_cy_7_Q_3396,
      CYINIT => '0',
      CO(3) => uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_Q_3401,
      CO(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => uart_top_1_uart_tx_1_Mcount_tx_count11,
      O(2) => uart_top_1_uart_tx_1_Mcount_tx_count10,
      O(1) => uart_top_1_uart_tx_1_Mcount_tx_count9,
      O(0) => uart_top_1_uart_tx_1_Mcount_tx_count8,
      S(3) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(11),
      S(2) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(10),
      S(1) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(9),
      S(0) => uart_top_1_uart_tx_1_Mcount_tx_count_lut(8)
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"3300000033000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(10),
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(10)
    );
  debug_light_generator_1_current_ws2812_b_0_63_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_63_C5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_9 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_9_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count9,
      O => uart_top_1_uart_tx_1_tx_count(9),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"00AA000000AA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR0 => uart_top_1_uart_tx_1_tx_count(9),
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(9)
    );
  debug_light_generator_1_current_ws2812_b_0_64_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_64_B5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_tx_count_8 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_8_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count8,
      O => uart_top_1_uart_tx_1_tx_count(8),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"2222000022220000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR0 => uart_top_1_uart_tx_1_tx_count(8),
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => uart_top_1_uart_tx_1_Mcount_tx_count_lut(8)
    );
  debug_light_generator_1_current_ws2812_b_0_65_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_65_A5LUT_O_UNCONNECTED
    );
  uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y36"
    )
    port map (
      CI => uart_top_1_uart_tx_1_Mcount_tx_count_cy_11_Q_3401,
      CYINIT => '0',
      CO(3) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_3_UNCONNECTED,
      CO(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_2_UNCONNECTED,
      CO(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_1_UNCONNECTED,
      CO(0) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_CO_0_UNCONNECTED,
      DI(3) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_3_UNCONNECTED,
      DI(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_2_UNCONNECTED,
      DI(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_1_UNCONNECTED,
      DI(0) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_DI_0_UNCONNECTED,
      O(3) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_O_3_UNCONNECTED,
      O(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_O_2_UNCONNECTED,
      O(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_O_1_UNCONNECTED,
      O(0) => uart_top_1_uart_tx_1_Mcount_tx_count12,
      S(3) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_S_3_UNCONNECTED,
      S(2) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_S_2_UNCONNECTED,
      S(1) => NLW_uart_top_1_uart_tx_1_Mcount_tx_count_xor_12_S_1_UNCONNECTED,
      S(0) => lut1897_1071_624
    );
  uart_top_1_uart_tx_1_tx_count_12 : X_SFF
    generic map(
      LOC => "SLICE_X22Y36",
      INIT => '0'
    )
    port map (
      CE => Q_2650_582,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_12_CLK,
      I => uart_top_1_uart_tx_1_Mcount_tx_count12,
      O => uart_top_1_uart_tx_1_tx_count(12),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1897_1071 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y36",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => uart_top_1_uart_tx_1_tx_count(12),
      ADR3 => '1',
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      O => lut1897_1071_624
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(3),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_3_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(2),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_2_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(1),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_1_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(0),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_0_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"CC33CC33CC33CC33"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(3),
      ADR1 => spi_top_1_tx_fifo_read_addr(3),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_3_Q_628
    );
  ProtoComp51_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X10Y35"
    )
    port map (
      O => ProtoComp51_CYINITVCC_1
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y35"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp51_CYINITVCC_1,
      CO(3) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_Q_3404,
      CO(2) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_0_Q,
      O(3) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(3),
      O(2) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(2),
      O(1) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(1),
      O(0) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(0),
      S(3) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_3_Q_628,
      S(2) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_2_Q_638,
      S(1) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_1_Q_642,
      S(0) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_0_Q_646
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(2),
      ADR4 => spi_top_1_tx_fifo_read_addr(2),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_2_Q_638
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(1),
      ADR4 => spi_top_1_tx_fifo_read_addr(1),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_1_Q_642
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y35",
      INIT => X"CCCCCCCC33333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(0),
      ADR5 => spi_top_1_tx_fifo_read_addr(0),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_0_Q_646
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(7),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_7_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(6),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_6_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(5),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_5_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(4),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_4_0
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"CC33CC33CC33CC33"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(7),
      ADR1 => spi_top_1_tx_fifo_read_addr(7),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_7_Q_650
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y36"
    )
    port map (
      CI => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_Q_3404,
      CYINIT => '0',
      CO(3) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_Q_3405,
      CO(2) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_0_Q,
      O(3) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(7),
      O(2) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(6),
      O(1) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(5),
      O(0) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(4),
      S(3) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_7_Q_650,
      S(2) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_6_Q_660,
      S(1) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_5_Q_664,
      S(0) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_4_Q_668
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(6),
      ADR4 => spi_top_1_tx_fifo_read_addr(6),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_6_Q_660
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(5),
      ADR4 => spi_top_1_tx_fifo_read_addr(5),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_5_Q_664
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y36",
      INIT => X"CCCCCCCC33333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(4),
      ADR5 => spi_top_1_tx_fifo_read_addr(4),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_4_Q_668
    );
  spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut1456_453_674,
      O => lut1456_453_0
    );
  spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(10),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_10_0
    );
  spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(9),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_9_0
    );
  spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(8),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_8_0
    );
  spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_rt : X_AND2B1L
    generic map(
      LOC => "SLICE_X10Y37"
    )
    port map (
      DI => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(11),
      O => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_0,
      SRI => '0'
    );
  lut1068_137 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"CC33CC33CC33CC33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      ADR3 => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      ADR5 => '1',
      O => Q_1811_138
    );
  lut1456_453 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"0000AAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => uart_top_1_uart_rx_1_bit_counter(3),
      ADR4 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR3 => '1',
      ADR2 => '1',
      O => lut1456_453_674
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y37"
    )
    port map (
      CI => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_Q_3405,
      CYINIT => '0',
      CO(3) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_2_Q,
      DI(1) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_1_Q,
      DI(0) => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_0_Q,
      O(3) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(11),
      O(2) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(10),
      O(1) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(9),
      O(0) => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT(8),
      S(3) => Q_1811_138,
      S(2) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_10_Q_687,
      S(1) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_9_Q_691,
      S(0) => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_8_Q_695
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(10),
      ADR4 => spi_top_1_tx_fifo_read_addr(10),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_10_Q_687
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"CCCC3333CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(9),
      ADR4 => spi_top_1_tx_fifo_read_addr(9),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_9_Q_691
    );
  spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y37",
      INIT => X"CCCCCCCC33333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(8),
      ADR5 => spi_top_1_tx_fifo_read_addr(8),
      O => spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_lut_8_Q_695
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_3_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter3,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(3),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(3)
    );
  debug_light_generator_1_current_ws2812_b_0_113_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_113_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_2_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter2,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y49"
    )
    port map (
      CI => '0',
      CYINIT => debug_light_generator_1_spi_tx_buffer_full_inv,
      CO(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_Q_3412,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter3,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter2,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter1,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter,
      S(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(3),
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(2),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(1),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(0)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(2),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(2)
    );
  debug_light_generator_1_current_ws2812_b_0_114_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_114_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_1_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter1,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(1),
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(1)
    );
  debug_light_generator_1_current_ws2812_b_0_115_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_115_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_0_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(0),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(0)
    );
  debug_light_generator_1_current_ws2812_b_0_116_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_116_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_7_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter7,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(7),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(7)
    );
  debug_light_generator_1_current_ws2812_b_0_109_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_109_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_6_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter6,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y50"
    )
    port map (
      CI => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_3_Q_3412,
      CYINIT => '0',
      CO(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_Q_3417,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter7,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter6,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter5,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter4,
      S(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(7),
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(6),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(5),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(4)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(6),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(6)
    );
  debug_light_generator_1_current_ws2812_b_0_110_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_110_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_5_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter5,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(5),
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(5)
    );
  debug_light_generator_1_current_ws2812_b_0_111_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_111_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_4_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter4,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(4),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(4)
    );
  debug_light_generator_1_current_ws2812_b_0_112_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_112_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_11 : X_SFF
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_11_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter11,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(11),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(11),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(11)
    );
  debug_light_generator_1_current_ws2812_b_0_105_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_105_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_10_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter10,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(10),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y51"
    )
    port map (
      CI => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_7_Q_3417,
      CYINIT => '0',
      CO(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_Q_3422,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter11,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter10,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter9,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter8,
      S(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(11),
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(10),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(9),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(8)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(10),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(10)
    );
  debug_light_generator_1_current_ws2812_b_0_106_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_106_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_9_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter9,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(9),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(9),
      ADR2 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(9)
    );
  debug_light_generator_1_current_ws2812_b_0_107_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_107_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_8_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter8,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(8),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(8),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(8)
    );
  debug_light_generator_1_current_ws2812_b_0_108_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_108_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_15 : X_SFF
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_15_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter15,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(15),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(15),
      ADR2 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(15)
    );
  debug_light_generator_1_current_ws2812_b_0_101_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_101_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_14 : X_SFF
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_14_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter14,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(14),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y52"
    )
    port map (
      CI => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_11_Q_3422,
      CYINIT => '0',
      CO(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_Q_3427,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter15,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter14,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter13,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter12,
      S(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(15),
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(14),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(13),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(12)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(14),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(14)
    );
  debug_light_generator_1_current_ws2812_b_0_102_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_102_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_13 : X_SFF
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_13_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter13,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(13),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(13),
      ADR2 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(13)
    );
  debug_light_generator_1_current_ws2812_b_0_103_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_103_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_12 : X_SFF
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_12_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter12,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(12),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(12),
      ADR2 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(12)
    );
  debug_light_generator_1_current_ws2812_b_0_104_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_104_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_19 : X_SFF
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_19_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter19,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(19),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(19),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(19)
    );
  debug_light_generator_1_current_ws2812_b_0_97_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_97_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_18 : X_SFF
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_18_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter18,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(18),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y53"
    )
    port map (
      CI => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_15_Q_3427,
      CYINIT => '0',
      CO(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_Q_3432,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter19,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter18,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter17,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter16,
      S(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(19),
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(18),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(17),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(16)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(18),
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(18)
    );
  debug_light_generator_1_current_ws2812_b_0_98_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_98_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_17 : X_SFF
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_17_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter17,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(17),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(17),
      ADR2 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(17)
    );
  debug_light_generator_1_current_ws2812_b_0_99_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_99_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_16 : X_SFF
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_16_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter16,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(16),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(16),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(16)
    );
  debug_light_generator_1_current_ws2812_b_0_100_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_100_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_23 : X_SFF
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_23_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter23,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(23),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(23),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(23)
    );
  debug_light_generator_1_current_ws2812_b_0_93_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_93_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_22 : X_SFF
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_22_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter22,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(22),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y54"
    )
    port map (
      CI => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_19_Q_3432,
      CYINIT => '0',
      CO(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_Q_3437,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter23,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter22,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter21,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter20,
      S(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(23),
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(22),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(21),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(20)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(22),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(22)
    );
  debug_light_generator_1_current_ws2812_b_0_94_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_94_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_21 : X_SFF
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_21_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter21,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(21),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(21),
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(21)
    );
  debug_light_generator_1_current_ws2812_b_0_95_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_95_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_20 : X_SFF
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_20_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter20,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(20),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(20),
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(20)
    );
  debug_light_generator_1_current_ws2812_b_0_96_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_96_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_27 : X_SFF
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_27_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter27,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(27),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2963_71 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => debug_light_generator_1_spi_tx_buffer_full_counter(27),
      ADR4 => '1',
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      O => lut2963_71_899
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_26 : X_SFF
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_26_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter26,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(26),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y55"
    )
    port map (
      CI => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_cy_23_Q_3437,
      CYINIT => '0',
      CO(3) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_3_UNCONNECTED,
      CO(2) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_CO_0_UNCONNECTED,
      DI(3) => NLW_debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_xor_27_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter27,
      O(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter26,
      O(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter25,
      O(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter24,
      S(3) => lut2963_71_899,
      S(2) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(26),
      S(1) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(25),
      S(0) => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(24)
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(26),
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(26)
    );
  debug_light_generator_1_current_ws2812_b_0_90_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_90_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_25 : X_SFF
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_25_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter25,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(25),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(25),
      ADR2 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(25)
    );
  debug_light_generator_1_current_ws2812_b_0_91_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_91_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_24 : X_SFF
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => '0'
    )
    port map (
      CE => debug_light_generator_1_n0896_inv_0,
      CLK => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_24_CLK,
      I => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter24,
      O => debug_light_generator_1_spi_tx_buffer_full_counter(24),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(24),
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_Mcount_spi_tx_buffer_full_counter_lut(24)
    );
  debug_light_generator_1_current_ws2812_b_0_92_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_92_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_3 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_3_CLK,
      I => spi_top_1_Result(3),
      O => spi_top_1_tx_fifo_next_write_addr(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(3),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_3_rt_929
    );
  debug_light_generator_1_current_ws2812_b_0_20_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_20_D5LUT_O_UNCONNECTED
    );
  ProtoComp43_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X14Y35"
    )
    port map (
      O => spi_top_1_tx_fifo_next_write_addr_3_ProtoComp43_CYINITGND_0
    );
  spi_top_1_tx_fifo_next_write_addr_2 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_2_CLK,
      I => spi_top_1_Result(2),
      O => spi_top_1_tx_fifo_next_write_addr(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y35"
    )
    port map (
      CI => '0',
      CYINIT => spi_top_1_tx_fifo_next_write_addr_3_ProtoComp43_CYINITGND_0,
      CO(3) => spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_Q_3443,
      CO(2) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => spi_top_1_Result(3),
      O(2) => spi_top_1_Result(2),
      O(1) => spi_top_1_Result(1),
      O(0) => spi_top_1_Result(0),
      S(3) => spi_top_1_tx_fifo_next_write_addr_3_rt_929,
      S(2) => spi_top_1_tx_fifo_next_write_addr_2_rt_941,
      S(1) => spi_top_1_tx_fifo_next_write_addr_1_rt_945,
      S(0) => spi_top_1_tx_fifo_Mcount_next_write_addr_lut(0)
    );
  spi_top_1_tx_fifo_next_write_addr_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(2),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_2_rt_941
    );
  debug_light_generator_1_current_ws2812_b_0_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_21_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_1 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_1_CLK,
      I => spi_top_1_Result(1),
      O => spi_top_1_tx_fifo_next_write_addr(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(1),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_1_rt_945
    );
  debug_light_generator_1_current_ws2812_b_0_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_22_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_0 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_0_CLK,
      I => spi_top_1_Result(0),
      O => spi_top_1_tx_fifo_next_write_addr(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_next_write_addr_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(0),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Mcount_next_write_addr_lut(0)
    );
  buttons_17_pressed_INV_306_o_norst_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_2_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_7 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_7_CLK,
      I => spi_top_1_Result(7),
      O => spi_top_1_tx_fifo_next_write_addr(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_fifo_next_write_addr(7),
      ADR4 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_7_rt_958
    );
  debug_light_generator_1_current_ws2812_b_0_16_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_16_D5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_6 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_6_CLK,
      I => spi_top_1_Result(6),
      O => spi_top_1_tx_fifo_next_write_addr(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y36"
    )
    port map (
      CI => spi_top_1_tx_fifo_Mcount_next_write_addr_cy_3_Q_3443,
      CYINIT => '0',
      CO(3) => spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_Q_3444,
      CO(2) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_Result(7),
      O(2) => spi_top_1_Result(6),
      O(1) => spi_top_1_Result(5),
      O(0) => spi_top_1_Result(4),
      S(3) => spi_top_1_tx_fifo_next_write_addr_7_rt_958,
      S(2) => spi_top_1_tx_fifo_next_write_addr_6_rt_970,
      S(1) => spi_top_1_tx_fifo_next_write_addr_5_rt_974,
      S(0) => spi_top_1_tx_fifo_next_write_addr_4_rt_978
    );
  spi_top_1_tx_fifo_next_write_addr_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(6),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_6_rt_970
    );
  debug_light_generator_1_current_ws2812_b_0_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_17_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_5 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_5_CLK,
      I => spi_top_1_Result(5),
      O => spi_top_1_tx_fifo_next_write_addr(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(5),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_5_rt_974
    );
  debug_light_generator_1_current_ws2812_b_0_18_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_18_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_4 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_4_CLK,
      I => spi_top_1_Result(4),
      O => spi_top_1_tx_fifo_next_write_addr(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(4),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_4_rt_978
    );
  debug_light_generator_1_current_ws2812_b_0_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_19_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_11 : X_SFF
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_11_CLK,
      I => spi_top_1_Result(11),
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      ADR4 => '1',
      ADR3 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt_987
    );
  spi_top_1_tx_fifo_next_write_addr_10 : X_SFF
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_10_CLK,
      I => spi_top_1_Result(10),
      O => spi_top_1_tx_fifo_next_write_addr(10),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y37"
    )
    port map (
      CI => spi_top_1_tx_fifo_Mcount_next_write_addr_cy_7_Q_3444,
      CYINIT => '0',
      CO(3) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_spi_top_1_tx_fifo_Mcount_next_write_addr_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_Result(11),
      O(2) => spi_top_1_Result(10),
      O(1) => spi_top_1_Result(9),
      O(0) => spi_top_1_Result(8),
      S(3) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt_987,
      S(2) => spi_top_1_tx_fifo_next_write_addr_10_rt_997,
      S(1) => spi_top_1_tx_fifo_next_write_addr_9_rt_1001,
      S(0) => spi_top_1_tx_fifo_next_write_addr_8_rt_1005
    );
  spi_top_1_tx_fifo_next_write_addr_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(10),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_10_rt_997
    );
  debug_light_generator_1_current_ws2812_b_0_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_13_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_9 : X_SFF
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_9_CLK,
      I => spi_top_1_Result(9),
      O => spi_top_1_tx_fifo_next_write_addr(9),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(9),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_9_rt_1001
    );
  debug_light_generator_1_current_ws2812_b_0_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_14_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_8 : X_SFF
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => '0'
    )
    port map (
      CE => lut317_2_3184,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_8_CLK,
      I => spi_top_1_Result(8),
      O => spi_top_1_tx_fifo_next_write_addr(8),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_fifo_next_write_addr_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(8),
      ADR3 => '1',
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_8_rt_1005
    );
  debug_light_generator_1_current_ws2812_b_0_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_15_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_3 : X_SFF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_3_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(3),
      O => debug_light_generator_1_ws2812_drv_1_timer(3),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(3),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_3_rt_1017
    );
  debug_light_generator_1_current_ws2812_b_0_124_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_124_D5LUT_O_UNCONNECTED
    );
  ProtoComp57_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X0Y35"
    )
    port map (
      O => ProtoComp57_CYINITGND_0
    );
  debug_light_generator_1_ws2812_drv_1_timer_2 : X_SFF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_2_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(2),
      O => debug_light_generator_1_ws2812_drv_1_timer(2),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y35"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp57_CYINITGND_0,
      CO(3) => debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_Q_3448,
      CO(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => debug_light_generator_1_ws2812_drv_1_Result(3),
      O(2) => debug_light_generator_1_ws2812_drv_1_Result(2),
      O(1) => debug_light_generator_1_ws2812_drv_1_Result(1),
      O(0) => debug_light_generator_1_ws2812_drv_1_Result(0),
      S(3) => debug_light_generator_1_ws2812_drv_1_timer_3_rt_1017,
      S(2) => debug_light_generator_1_ws2812_drv_1_timer_2_rt_1028,
      S(1) => debug_light_generator_1_ws2812_drv_1_timer_1_rt_1032,
      S(0) => debug_light_generator_1_ws2812_drv_1_Mcount_timer_lut(0)
    );
  debug_light_generator_1_ws2812_drv_1_timer_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(2),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_2_rt_1028
    );
  debug_light_generator_1_current_ws2812_b_0_125_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_125_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_1 : X_SFF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_1_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(1),
      O => debug_light_generator_1_ws2812_drv_1_timer(1),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(1),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_1_rt_1032
    );
  debug_light_generator_1_current_ws2812_b_0_126_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_126_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_0 : X_SFF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_0_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(0),
      O => debug_light_generator_1_ws2812_drv_1_timer(0),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_Mcount_timer_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(0),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcount_timer_lut(0)
    );
  buttons_17_pressed_INV_306_o_norst_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_17_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_7 : X_SFF
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_7_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(7),
      O => debug_light_generator_1_ws2812_drv_1_timer(7),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(7),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_7_rt_1041
    );
  debug_light_generator_1_current_ws2812_b_0_120_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_120_D5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_6 : X_SFF
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_6_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(6),
      O => debug_light_generator_1_ws2812_drv_1_timer(6),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y36"
    )
    port map (
      CI => debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_3_Q_3448,
      CYINIT => '0',
      CO(3) => debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_Q_3454,
      CO(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_ws2812_drv_1_Result(7),
      O(2) => debug_light_generator_1_ws2812_drv_1_Result(6),
      O(1) => debug_light_generator_1_ws2812_drv_1_Result(5),
      O(0) => debug_light_generator_1_ws2812_drv_1_Result(4),
      S(3) => debug_light_generator_1_ws2812_drv_1_timer_7_rt_1041,
      S(2) => debug_light_generator_1_ws2812_drv_1_timer_6_rt_1052,
      S(1) => debug_light_generator_1_ws2812_drv_1_timer_5_rt_1056,
      S(0) => debug_light_generator_1_ws2812_drv_1_timer_4_rt_1060
    );
  debug_light_generator_1_ws2812_drv_1_timer_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(6),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_6_rt_1052
    );
  debug_light_generator_1_current_ws2812_b_0_121_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_121_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_5 : X_SFF
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_5_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(5),
      O => debug_light_generator_1_ws2812_drv_1_timer(5),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(5),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_5_rt_1056
    );
  debug_light_generator_1_current_ws2812_b_0_122_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_122_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_4 : X_SFF
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_4_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(4),
      O => debug_light_generator_1_ws2812_drv_1_timer(4),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(4),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_4_rt_1060
    );
  debug_light_generator_1_current_ws2812_b_0_123_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_123_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_11 : X_SFF
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_11_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(11),
      O => debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt,
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt,
      ADR4 => '1',
      ADR3 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt_rt_1069
    );
  debug_light_generator_1_ws2812_drv_1_timer_10 : X_SFF
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_10_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(10),
      O => debug_light_generator_1_ws2812_drv_1_timer(10),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y37"
    )
    port map (
      CI => debug_light_generator_1_ws2812_drv_1_Mcount_timer_cy_7_Q_3454,
      CYINIT => '0',
      CO(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => debug_light_generator_1_ws2812_drv_1_Result(11),
      O(2) => debug_light_generator_1_ws2812_drv_1_Result(10),
      O(1) => debug_light_generator_1_ws2812_drv_1_Result(9),
      O(0) => debug_light_generator_1_ws2812_drv_1_Result(8),
      S(3) => debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt_rt_1069,
      S(2) => debug_light_generator_1_ws2812_drv_1_timer_10_rt_1078,
      S(1) => debug_light_generator_1_ws2812_drv_1_timer_9_rt_1082,
      S(0) => debug_light_generator_1_ws2812_drv_1_timer_8_rt_1086
    );
  debug_light_generator_1_ws2812_drv_1_timer_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(10),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_10_rt_1078
    );
  debug_light_generator_1_current_ws2812_b_0_117_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_117_C5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_9 : X_SFF
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_9_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(9),
      O => debug_light_generator_1_ws2812_drv_1_timer(9),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer(9),
      ADR3 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_9_rt_1082
    );
  debug_light_generator_1_current_ws2812_b_0_118_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_118_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_timer_8 : X_SFF
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_8_CLK,
      I => debug_light_generator_1_ws2812_drv_1_Result(8),
      O => debug_light_generator_1_ws2812_drv_1_timer(8),
      SRST => lut3485_827_3450,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer(8),
      ADR4 => '1',
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_timer_8_rt_1086
    );
  debug_light_generator_1_current_ws2812_b_0_119_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_119_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"4000000040000000"
    )
    port map (
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(22),
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(23),
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(24),
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(25),
      ADR1 => debug_light_generator_1_spi_tx_buffer_full_counter(26),
      ADR5 => '1',
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_3_Q_1092
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"77FF77FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(24),
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(25),
      ADR1 => debug_light_generator_1_spi_tx_buffer_full_counter(26),
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi3_1093
    );
  ProtoComp60_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y53"
    )
    port map (
      O => ProtoComp60_CYINITGND_0
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y53"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp60_CYINITGND_0,
      CO(3) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_Q_3460,
      CO(2) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi3_1093,
      DI(2) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi2_1102,
      DI(1) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi1_1109,
      DI(0) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi_1116,
      O(3) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_O_0_UNCONNECTED,
      S(3) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_3_Q_1092,
      S(2) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_2_Q_1101,
      S(1) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_1_Q_1108,
      S(0) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_0_Q_1115
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"0400000004000000"
    )
    port map (
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(19),
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(17),
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(20),
      ADR1 => debug_light_generator_1_spi_tx_buffer_full_counter(18),
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(21),
      ADR5 => '1',
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_2_Q_1101
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"05FF05FF"
    )
    port map (
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(19),
      ADR1 => '1',
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(20),
      ADR4 => '1',
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(21),
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi2_1102
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"0040000000400000"
    )
    port map (
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(14),
      ADR1 => debug_light_generator_1_spi_tx_buffer_full_counter(12),
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(16),
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(15),
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(13),
      ADR5 => '1',
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_1_Q_1108
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"05550555"
    )
    port map (
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(14),
      ADR1 => '1',
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(16),
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(15),
      ADR4 => '1',
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi1_1109
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"0100000001000000"
    )
    port map (
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(8),
      ADR1 => debug_light_generator_1_spi_tx_buffer_full_counter(10),
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(9),
      ADR3 => debug_light_generator_1_spi_tx_buffer_full_counter(7),
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(11),
      ADR5 => '1',
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lut_0_Q_1115
    );
  debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X10Y53",
      INIT => X"01011111"
    )
    port map (
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(8),
      ADR1 => debug_light_generator_1_spi_tx_buffer_full_counter(10),
      ADR4 => debug_light_generator_1_spi_tx_buffer_full_counter(9),
      ADR3 => '1',
      ADR0 => debug_light_generator_1_spi_tx_buffer_full_counter(11),
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_lutdi_1116
    );
  debug_light_generator_1_n0896_inv_debug_light_generator_1_n0896_inv_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_n0896_inv,
      O => debug_light_generator_1_n0896_inv_0
    );
  debug_light_generator_1_n0896_inv_debug_light_generator_1_n0896_inv_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_4_Q,
      O => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_4_0
    );
  debug_light_generator_1_n0896_inv1_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y54"
    )
    port map (
      CI => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_3_Q_3460,
      CYINIT => '0',
      CO(3) => NLW_debug_light_generator_1_n0896_inv1_cy_CO_3_UNCONNECTED,
      CO(2) => NLW_debug_light_generator_1_n0896_inv1_cy_CO_2_UNCONNECTED,
      CO(1) => debug_light_generator_1_n0896_inv,
      CO(0) => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_4_Q,
      DI(3) => NLW_debug_light_generator_1_n0896_inv1_cy_DI_3_UNCONNECTED,
      DI(2) => NLW_debug_light_generator_1_n0896_inv1_cy_DI_2_UNCONNECTED,
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_debug_light_generator_1_n0896_inv1_cy_O_3_UNCONNECTED,
      O(2) => NLW_debug_light_generator_1_n0896_inv1_cy_O_2_UNCONNECTED,
      O(1) => NLW_debug_light_generator_1_n0896_inv1_cy_O_1_UNCONNECTED,
      O(0) => NLW_debug_light_generator_1_n0896_inv1_cy_O_0_UNCONNECTED,
      S(3) => NLW_debug_light_generator_1_n0896_inv1_cy_S_3_UNCONNECTED,
      S(2) => NLW_debug_light_generator_1_n0896_inv1_cy_S_2_UNCONNECTED,
      S(1) => debug_light_generator_1_n0896_inv1_lut,
      S(0) => debug_light_generator_1_spi_tx_buffer_full_counter_27_rt_1132
    );
  debug_light_generator_1_n0896_inv1_lut_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => debug_light_generator_1_n0896_inv1_lut
    );
  buttons_17_pressed_INV_306_o_norst_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_20_B5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_spi_tx_buffer_full_counter_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => debug_light_generator_1_spi_tx_buffer_full_counter(27),
      ADR5 => '1',
      O => debug_light_generator_1_spi_tx_buffer_full_counter_27_rt_1132
    );
  buttons_17_pressed_INV_306_o_norst_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_16_A5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_3_CLK,
      I => temp_midi_note_player_1_Result(3),
      O => temp_midi_note_player_1_audio_freq_counter(3),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_3_rt_1143
    );
  debug_light_generator_1_current_ws2812_b_0_80_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_80_D5LUT_O_UNCONNECTED
    );
  ProtoComp57_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      O => temp_midi_note_player_1_audio_freq_counter_3_ProtoComp57_CYINITGND_0
    );
  temp_midi_note_player_1_audio_freq_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_2_CLK,
      I => temp_midi_note_player_1_Result(2),
      O => temp_midi_note_player_1_audio_freq_counter(2),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y43"
    )
    port map (
      CI => '0',
      CYINIT => temp_midi_note_player_1_audio_freq_counter_3_ProtoComp57_CYINITGND_0,
      CO(3) => temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_Q_3463,
      CO(2) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => temp_midi_note_player_1_Result(3),
      O(2) => temp_midi_note_player_1_Result(2),
      O(1) => temp_midi_note_player_1_Result(1),
      O(0) => temp_midi_note_player_1_Result(0),
      S(3) => temp_midi_note_player_1_audio_freq_counter_3_rt_1143,
      S(2) => temp_midi_note_player_1_audio_freq_counter_2_rt_1154,
      S(1) => temp_midi_note_player_1_audio_freq_counter_1_rt_1158,
      S(0) => temp_midi_note_player_1_Mcount_audio_freq_counter_lut(0)
    );
  temp_midi_note_player_1_audio_freq_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_2_rt_1154
    );
  debug_light_generator_1_current_ws2812_b_0_81_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_81_C5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_1_CLK,
      I => temp_midi_note_player_1_Result(1),
      O => temp_midi_note_player_1_audio_freq_counter(1),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_1_rt_1158
    );
  debug_light_generator_1_current_ws2812_b_0_82_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_82_B5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_0_CLK,
      I => temp_midi_note_player_1_Result(0),
      O => temp_midi_note_player_1_audio_freq_counter(0),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Mcount_audio_freq_counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => temp_midi_note_player_1_audio_freq_counter(0),
      ADR4 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_Mcount_audio_freq_counter_lut(0)
    );
  buttons_17_pressed_INV_306_o_norst_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y43",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_15_A5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_7_CLK,
      I => temp_midi_note_player_1_Result(7),
      O => temp_midi_note_player_1_audio_freq_counter(7),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(7),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_7_rt_1167
    );
  debug_light_generator_1_current_ws2812_b_0_76_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_76_D5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_6_CLK,
      I => temp_midi_note_player_1_Result(6),
      O => temp_midi_note_player_1_audio_freq_counter(6),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y44"
    )
    port map (
      CI => temp_midi_note_player_1_Mcount_audio_freq_counter_cy_3_Q_3463,
      CYINIT => '0',
      CO(3) => temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_Q_3468,
      CO(2) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => temp_midi_note_player_1_Result(7),
      O(2) => temp_midi_note_player_1_Result(6),
      O(1) => temp_midi_note_player_1_Result(5),
      O(0) => temp_midi_note_player_1_Result(4),
      S(3) => temp_midi_note_player_1_audio_freq_counter_7_rt_1167,
      S(2) => temp_midi_note_player_1_audio_freq_counter_6_rt_1178,
      S(1) => temp_midi_note_player_1_audio_freq_counter_5_rt_1182,
      S(0) => temp_midi_note_player_1_audio_freq_counter_4_rt_1186
    );
  temp_midi_note_player_1_audio_freq_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_6_rt_1178
    );
  debug_light_generator_1_current_ws2812_b_0_77_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_77_C5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_5_CLK,
      I => temp_midi_note_player_1_Result(5),
      O => temp_midi_note_player_1_audio_freq_counter(5),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_5_rt_1182
    );
  debug_light_generator_1_current_ws2812_b_0_78_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_78_B5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_4_CLK,
      I => temp_midi_note_player_1_Result(4),
      O => temp_midi_note_player_1_audio_freq_counter(4),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => temp_midi_note_player_1_audio_freq_counter(4),
      ADR4 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_4_rt_1186
    );
  debug_light_generator_1_current_ws2812_b_0_79_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_79_A5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_10_CLK,
      I => temp_midi_note_player_1_Result(10),
      O => temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt,
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y45"
    )
    port map (
      CI => temp_midi_note_player_1_Mcount_audio_freq_counter_cy_7_Q_3468,
      CYINIT => '0',
      CO(3) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_3_UNCONNECTED,
      CO(2) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_CO_0_UNCONNECTED,
      DI(3) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_DI_3_UNCONNECTED,
      DI(2) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_O_3_UNCONNECTED,
      O(2) => temp_midi_note_player_1_Result(10),
      O(1) => temp_midi_note_player_1_Result(9),
      O(0) => temp_midi_note_player_1_Result(8),
      S(3) => NLW_temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_S_3_UNCONNECTED,
      S(2) => temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt_rt_1200,
      S(1) => temp_midi_note_player_1_audio_freq_counter_9_rt_1203,
      S(0) => temp_midi_note_player_1_audio_freq_counter_8_rt_1207
    );
  temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt,
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt_rt_1200
    );
  temp_midi_note_player_1_audio_freq_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_9_CLK,
      I => temp_midi_note_player_1_Result(9),
      O => temp_midi_note_player_1_audio_freq_counter(9),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_audio_freq_counter(9),
      ADR3 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_9_rt_1203
    );
  debug_light_generator_1_current_ws2812_b_0_74_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_74_B5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_audio_freq_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_8_CLK,
      I => temp_midi_note_player_1_Result(8),
      O => temp_midi_note_player_1_audio_freq_counter(8),
      SRST => lut2659_731_3464,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_audio_freq_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => temp_midi_note_player_1_audio_freq_counter(8),
      ADR4 => '1',
      ADR5 => '1',
      O => temp_midi_note_player_1_audio_freq_counter_8_rt_1207
    );
  debug_light_generator_1_current_ws2812_b_0_75_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_75_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_3_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_3_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_2_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_2_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_1_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_1_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_0_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_0_0
    );
  spi_top_1_tx_fifo_read_addr_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(3),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_3_rt
    );
  debug_light_generator_1_current_ws2812_b_0_32_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_32_D5LUT_O_UNCONNECTED
    );
  ProtoComp63_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y41"
    )
    port map (
      O => ProtoComp63_CYINITGND_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y41"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp63_CYINITGND_0,
      CO(3) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_Q_3476,
      CO(2) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_3_Q,
      O(2) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_2_Q,
      O(1) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_1_Q,
      O(0) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_0_Q,
      S(3) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_3_rt,
      S(2) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_2_rt,
      S(1) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_1_rt,
      S(0) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_lut_0_Q
    );
  spi_top_1_tx_fifo_read_addr_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(2),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_2_rt
    );
  debug_light_generator_1_current_ws2812_b_0_33_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_33_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => spi_top_1_tx_fifo_read_addr(1),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_spi_top_1_tx_fifo_read_addr_1_rt
    );
  debug_light_generator_1_current_ws2812_b_0_34_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_34_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(0),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_lut_0_Q
    );
  buttons_17_pressed_INV_306_o_norst_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_3_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_7_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_7_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_6_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_6_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_5_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_5_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_0
    );
  spi_top_1_tx_fifo_read_addr_7_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(7),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_7_rt
    );
  debug_light_generator_1_current_ws2812_b_0_28_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_28_D5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y42"
    )
    port map (
      CI => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_3_Q_3476,
      CYINIT => '0',
      CO(3) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_Q_3481,
      CO(2) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_7_Q,
      O(2) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_6_Q,
      O(1) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_5_Q,
      O(0) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_Q,
      S(3) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_7_rt,
      S(2) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_6_rt,
      S(1) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_5_rt,
      S(0) => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_4_rt
    );
  spi_top_1_tx_fifo_read_addr_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(6),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_6_rt
    );
  debug_light_generator_1_current_ws2812_b_0_29_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_29_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_read_addr(5),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_5_rt
    );
  debug_light_generator_1_current_ws2812_b_0_30_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_30_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(4),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_spi_top_1_tx_fifo_read_addr_4_rt
    );
  debug_light_generator_1_current_ws2812_b_0_31_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_31_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_0
    );
  spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_10_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_10_0
    );
  spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_9_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_9_0
    );
  spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_8_Q,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_8_0
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt
    );
  spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y43"
    )
    port map (
      CI => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_cy_7_Q_3481,
      CYINIT => '0',
      CO(3) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_Q,
      O(2) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_10_Q,
      O(1) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_9_Q,
      O(0) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_8_Q,
      S(3) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt_rt,
      S(2) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_10_rt,
      S(1) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_9_rt,
      S(0) => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_8_rt
    );
  spi_top_1_tx_fifo_read_addr_10_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(10),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_10_rt
    );
  debug_light_generator_1_current_ws2812_b_0_25_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_25_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_9_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_read_addr(9),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_9_rt
    );
  debug_light_generator_1_current_ws2812_b_0_26_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_26_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_read_addr_8_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_read_addr(8),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_spi_top_1_tx_fifo_read_addr_8_rt
    );
  debug_light_generator_1_current_ws2812_b_0_27_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_27_A5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_sine_driver_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_3_CLK,
      I => temp_midi_note_player_1_Result_3_1,
      O => temp_midi_note_player_1_sine_driver_counter(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"00CCCC0000CCCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(3),
      ADR4 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_3_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(3)
    );
  temp_midi_note_player_1_Eqn_3_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(3),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_3_mand1_1278
    );
  ProtoComp66_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y29"
    )
    port map (
      O => ProtoComp66_CYINITGND_0
    );
  temp_midi_note_player_1_sine_driver_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_2_CLK,
      I => temp_midi_note_player_1_Result_2_1,
      O => temp_midi_note_player_1_sine_driver_counter(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y29"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp66_CYINITGND_0,
      CO(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_Q_3493,
      CO(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => temp_midi_note_player_1_Eqn_3_mand1_1278,
      DI(2) => temp_midi_note_player_1_Eqn_2_mand1_1292,
      DI(1) => temp_midi_note_player_1_Eqn_1_mand1_1298,
      DI(0) => temp_midi_note_player_1_Eqn_0_mand1_1304,
      O(3) => temp_midi_note_player_1_Result_3_1,
      O(2) => temp_midi_note_player_1_Result_2_1,
      O(1) => temp_midi_note_player_1_Result_1_1,
      O(0) => temp_midi_note_player_1_Result_0_1,
      S(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(3),
      S(2) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(2),
      S(1) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(1),
      S(0) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(0)
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"4848484848484848"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR0 => temp_midi_note_player_1_sine_driver_counter(2),
      ADR2 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(2)
    );
  temp_midi_note_player_1_Eqn_2_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"88888888"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR0 => temp_midi_note_player_1_sine_driver_counter(2),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_2_mand1_1292
    );
  temp_midi_note_player_1_sine_driver_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_1_CLK,
      I => temp_midi_note_player_1_Result_1_1,
      O => temp_midi_note_player_1_sine_driver_counter(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"00AAAA0000AAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(1),
      ADR4 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_1_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(1)
    );
  temp_midi_note_player_1_Eqn_1_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(1),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_1_mand1_1298
    );
  temp_midi_note_player_1_sine_driver_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_0_CLK,
      I => temp_midi_note_player_1_Result_0_1,
      O => temp_midi_note_player_1_sine_driver_counter(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"00F0F00000F0F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(0),
      ADR3 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(0)
    );
  temp_midi_note_player_1_Eqn_0_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(0),
      ADR3 => '1',
      O => temp_midi_note_player_1_Eqn_0_mand1_1304
    );
  temp_midi_note_player_1_sine_driver_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_7_CLK,
      I => temp_midi_note_player_1_Result_7_1,
      O => temp_midi_note_player_1_sine_driver_counter(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"0CC00CC00CC00CC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(7),
      ADR2 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(7)
    );
  temp_midi_note_player_1_Eqn_7_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(7),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_7_mand1_1315
    );
  temp_midi_note_player_1_sine_driver_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_6_CLK,
      I => temp_midi_note_player_1_Result_6_1,
      O => temp_midi_note_player_1_sine_driver_counter(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y30"
    )
    port map (
      CI => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_3_Q_3493,
      CYINIT => '0',
      CO(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_Q_3499,
      CO(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => temp_midi_note_player_1_Eqn_7_mand1_1315,
      DI(2) => temp_midi_note_player_1_Eqn_6_mand1_1334,
      DI(1) => temp_midi_note_player_1_Eqn_5_mand1_1340,
      DI(0) => temp_midi_note_player_1_Eqn_4_mand1_1321,
      O(3) => temp_midi_note_player_1_Result_7_1,
      O(2) => temp_midi_note_player_1_Result_6_1,
      O(1) => temp_midi_note_player_1_Result_5_1,
      O(0) => temp_midi_note_player_1_Result_4_1,
      S(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(7),
      S(2) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(6),
      S(1) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(5),
      S(0) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(4)
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"0A0AA0A00A0AA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(6),
      ADR2 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(6)
    );
  temp_midi_note_player_1_Eqn_6_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"AAAA0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(6),
      ADR3 => '1',
      O => temp_midi_note_player_1_Eqn_6_mand1_1334
    );
  temp_midi_note_player_1_sine_driver_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_5_CLK,
      I => temp_midi_note_player_1_Result_5_1,
      O => temp_midi_note_player_1_sine_driver_counter(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"3C003C003C003C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR2 => temp_midi_note_player_1_sine_driver_counter(5),
      ADR1 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_5_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(5)
    );
  temp_midi_note_player_1_Eqn_5_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR2 => temp_midi_note_player_1_sine_driver_counter(5),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_5_mand1_1340
    );
  temp_midi_note_player_1_sine_driver_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_4_CLK,
      I => temp_midi_note_player_1_Result_4_1,
      O => temp_midi_note_player_1_sine_driver_counter(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"3300CC003300CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(4),
      ADR1 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(4)
    );
  temp_midi_note_player_1_Eqn_4_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(4),
      ADR2 => '1',
      O => temp_midi_note_player_1_Eqn_4_mand1_1321
    );
  temp_midi_note_player_1_sine_driver_counter_11 : X_SFF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_11_CLK,
      I => temp_midi_note_player_1_Result(11),
      O => temp_midi_note_player_1_sine_driver_counter(11),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"0CC00CC00CC00CC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(11),
      ADR2 => lut2410_78_3170,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(11)
    );
  temp_midi_note_player_1_Eqn_11_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(11),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_11_mand1_1352
    );
  temp_midi_note_player_1_sine_driver_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_10_CLK,
      I => temp_midi_note_player_1_Result_10_1,
      O => temp_midi_note_player_1_sine_driver_counter(10),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y31"
    )
    port map (
      CI => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_7_Q_3499,
      CYINIT => '0',
      CO(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_Q_3504,
      CO(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_CO_0_UNCONNECTED,
      DI(3) => temp_midi_note_player_1_Eqn_11_mand1_1352,
      DI(2) => temp_midi_note_player_1_Eqn_10_mand1_1366,
      DI(1) => temp_midi_note_player_1_Eqn_9_mand1_1373,
      DI(0) => temp_midi_note_player_1_Eqn_8_mand1_1379,
      O(3) => temp_midi_note_player_1_Result(11),
      O(2) => temp_midi_note_player_1_Result_10_1,
      O(1) => temp_midi_note_player_1_Result_9_1,
      O(0) => temp_midi_note_player_1_Result_8_1,
      S(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(11),
      S(2) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(10),
      S(1) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(9),
      S(0) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(8)
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"3F00C0003F00C000"
    )
    port map (
      ADR0 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR2 => midi_no(6),
      ADR4 => temp_midi_note_player_1_sine_driver_counter(10),
      ADR1 => lut2396_75_3503,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(10)
    );
  temp_midi_note_player_1_Eqn_10_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_sine_driver_counter(10),
      ADR1 => '1',
      O => temp_midi_note_player_1_Eqn_10_mand1_1366
    );
  temp_midi_note_player_1_sine_driver_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_9_CLK,
      I => temp_midi_note_player_1_Result_9_1,
      O => temp_midi_note_player_1_sine_driver_counter(9),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"00AAAA0000AAAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(9),
      ADR4 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(9)
    );
  temp_midi_note_player_1_Eqn_9_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => temp_midi_note_player_1_sine_driver_counter(9),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_9_mand1_1373
    );
  temp_midi_note_player_1_sine_driver_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_8_CLK,
      I => temp_midi_note_player_1_Result_8_1,
      O => temp_midi_note_player_1_sine_driver_counter(8),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"3030C0C03030C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(8),
      ADR1 => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_8_0,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(8)
    );
  temp_midi_note_player_1_Eqn_8_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(8),
      ADR3 => '1',
      O => temp_midi_note_player_1_Eqn_8_mand1_1379
    );
  temp_midi_note_player_1_sine_driver_counter_15 : X_SFF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_15_CLK,
      I => temp_midi_note_player_1_Result(15),
      O => temp_midi_note_player_1_sine_driver_counter(15),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => temp_midi_note_player_1_sine_driver_counter(15),
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR5 => '1',
      O => temp_midi_note_player_1_Eqn_15
    );
  debug_light_generator_1_current_ws2812_b_0_85_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_85_D5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_sine_driver_counter_14 : X_SFF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_14_CLK,
      I => temp_midi_note_player_1_Result(14),
      O => temp_midi_note_player_1_sine_driver_counter(14),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y32"
    )
    port map (
      CI => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_11_Q_3504,
      CYINIT => '0',
      CO(3) => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_Q_3507,
      CO(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => temp_midi_note_player_1_Eqn_13_mand1_1408,
      DI(0) => temp_midi_note_player_1_Eqn_12_mand1_1414,
      O(3) => temp_midi_note_player_1_Result(15),
      O(2) => temp_midi_note_player_1_Result(14),
      O(1) => temp_midi_note_player_1_Result(13),
      O(0) => temp_midi_note_player_1_Result(12),
      S(3) => temp_midi_note_player_1_Eqn_15,
      S(2) => temp_midi_note_player_1_Eqn_14,
      S(1) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(13),
      S(0) => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(12)
    );
  temp_midi_note_player_1_Eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => temp_midi_note_player_1_sine_driver_counter(14),
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR5 => '1',
      O => temp_midi_note_player_1_Eqn_14
    );
  debug_light_generator_1_current_ws2812_b_0_86_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_86_C5LUT_O_UNCONNECTED
    );
  temp_midi_note_player_1_sine_driver_counter_13 : X_SFF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_13_CLK,
      I => temp_midi_note_player_1_Result(13),
      O => temp_midi_note_player_1_sine_driver_counter(13),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"3300CC003300CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(13),
      ADR1 => lut2434_80_3506,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(13)
    );
  temp_midi_note_player_1_Eqn_13_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR4 => temp_midi_note_player_1_sine_driver_counter(13),
      ADR2 => '1',
      O => temp_midi_note_player_1_Eqn_13_mand1_1408
    );
  temp_midi_note_player_1_sine_driver_counter_12 : X_SFF
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_12_CLK,
      I => temp_midi_note_player_1_Result(12),
      O => temp_midi_note_player_1_sine_driver_counter(12),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"5500AA005500AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR0 => temp_midi_note_player_1_sine_driver_counter(12),
      ADR4 => lut2422_79_3505,
      ADR5 => '1',
      O => temp_midi_note_player_1_Maccum_sine_driver_counter_lut(12)
    );
  temp_midi_note_player_1_Eqn_12_mand1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y32",
      INIT => X"AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR0 => temp_midi_note_player_1_sine_driver_counter(12),
      ADR4 => '1',
      O => temp_midi_note_player_1_Eqn_12_mand1_1414
    );
  temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y33"
    )
    port map (
      CI => temp_midi_note_player_1_Maccum_sine_driver_counter_cy_15_Q_3507,
      CYINIT => '0',
      CO(3) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_3_UNCONNECTED,
      CO(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_2_UNCONNECTED,
      CO(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_1_UNCONNECTED,
      CO(0) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_CO_0_UNCONNECTED,
      DI(3) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_3_UNCONNECTED,
      DI(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_2_UNCONNECTED,
      DI(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_1_UNCONNECTED,
      DI(0) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_DI_0_UNCONNECTED,
      O(3) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_O_3_UNCONNECTED,
      O(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_O_2_UNCONNECTED,
      O(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_O_1_UNCONNECTED,
      O(0) => temp_midi_note_player_1_Result(16),
      S(3) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_S_3_UNCONNECTED,
      S(2) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_S_2_UNCONNECTED,
      S(1) => NLW_temp_midi_note_player_1_Maccum_sine_driver_counter_xor_16_S_1_UNCONNECTED,
      S(0) => lut2456_83_1428
    );
  temp_midi_note_player_1_sine_driver_counter_16 : X_SFF
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => '0'
    )
    port map (
      CE => Q_2779_680,
      CLK => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_16_CLK,
      I => temp_midi_note_player_1_Result(16),
      O => temp_midi_note_player_1_sine_driver_counter(16),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2456_83 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y33",
      INIT => X"F0F0F0F000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => temp_midi_note_player_1_sine_driver_counter(16),
      ADR4 => '1',
      ADR2 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      O => lut2456_83_1428
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_3_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_3_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_2_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_2_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_1_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_1_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_0
    );
  spi_top_1_tx_fifo_next_write_addr_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(3),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_3_rt
    );
  debug_light_generator_1_current_ws2812_b_0_44_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_44_D5LUT_O_UNCONNECTED
    );
  ProtoComp63_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X16Y37"
    )
    port map (
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_ProtoComp63_CYINITGND_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y37"
    )
    port map (
      CI => '0',
      CYINIT => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_ProtoComp63_CYINITGND_0,
      CO(3) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_Q_3511,
      CO(2) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_3_Q,
      O(2) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_2_Q,
      O(1) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_1_Q,
      O(0) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_Q,
      S(3) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_3_rt,
      S(2) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_2_rt,
      S(1) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_1_rt,
      S(0) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_lut_0_Q
    );
  spi_top_1_tx_fifo_next_write_addr_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(2),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_2_rt
    );
  debug_light_generator_1_current_ws2812_b_0_45_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_45_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(1),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_spi_top_1_tx_fifo_next_write_addr_1_rt
    );
  debug_light_generator_1_current_ws2812_b_0_46_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_46_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(0),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_lut_0_Q
    );
  buttons_17_pressed_INV_306_o_norst_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_buttons_17_pressed_INV_306_o_norst_6_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_7_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_7_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_6_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_6_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_5_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_5_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_4_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_4_0
    );
  spi_top_1_tx_fifo_next_write_addr_7_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => spi_top_1_tx_fifo_next_write_addr(7),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_7_rt
    );
  debug_light_generator_1_current_ws2812_b_0_40_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_40_D5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y38"
    )
    port map (
      CI => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_3_Q_3511,
      CYINIT => '0',
      CO(3) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_Q_3514,
      CO(2) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_7_Q,
      O(2) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_6_Q,
      O(1) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_5_Q,
      O(0) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_4_Q,
      S(3) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_7_rt,
      S(2) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_6_rt,
      S(1) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_5_rt,
      S(0) => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_4_rt
    );
  spi_top_1_tx_fifo_next_write_addr_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(6),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_6_rt
    );
  debug_light_generator_1_current_ws2812_b_0_41_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_41_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(5),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_5_rt
    );
  debug_light_generator_1_current_ws2812_b_0_42_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_42_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(4),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_spi_top_1_tx_fifo_next_write_addr_4_rt
    );
  debug_light_generator_1_current_ws2812_b_0_43_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_43_A5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_0
    );
  spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_10_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_10_0
    );
  spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_9_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_9_0
    );
  spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_8_Q,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_8_0
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt
    );
  spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y39"
    )
    port map (
      CI => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_cy_7_Q_3514,
      CYINIT => '0',
      CO(3) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_3_UNCONNECTED,
      CO(2) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_2_UNCONNECTED,
      CO(1) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_1_UNCONNECTED,
      CO(0) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_CO_0_UNCONNECTED,
      DI(3) => NLW_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_Q,
      O(2) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_10_Q,
      O(1) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_9_Q,
      O(0) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_8_Q,
      S(3) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt_rt,
      S(2) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_10_rt,
      S(1) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_9_rt,
      S(0) => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_8_rt
    );
  spi_top_1_tx_fifo_next_write_addr_10_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(10),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_10_rt
    );
  debug_light_generator_1_current_ws2812_b_0_37_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_37_C5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_9_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_next_write_addr(9),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_9_rt
    );
  debug_light_generator_1_current_ws2812_b_0_38_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_38_B5LUT_O_UNCONNECTED
    );
  spi_top_1_tx_fifo_next_write_addr_8_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_next_write_addr(8),
      ADR5 => '1',
      O => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_spi_top_1_tx_fifo_next_write_addr_8_rt
    );
  debug_light_generator_1_current_ws2812_b_0_39_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_debug_light_generator_1_current_ws2812_b_0_39_A5LUT_O_UNCONNECTED
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"CC000033CC000033"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit(6),
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer(6),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(7),
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(3)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi31 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"0000FFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit(6),
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer(6),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(7),
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi3
    );
  ProtoComp70_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X2Y36"
    )
    port map (
      O => ProtoComp70_CYINITVCC_1
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y36"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp70_CYINITVCC_1,
      CO(3) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy(3),
      CO(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_CO_0_UNCONNECTED,
      DI(3) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi3,
      DI(2) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi2_1502,
      DI(1) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi1_1508,
      DI(0) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi_1514,
      O(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_3_O_0_UNCONNECTED,
      S(3) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(3),
      S(2) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(2),
      S(1) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(1),
      S(0) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(0)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit(4),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(4),
      ADR0 => debug_light_generator_1_ws2812_drv_1_timer_limit(5),
      ADR2 => debug_light_generator_1_ws2812_drv_1_timer(5),
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(2)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"5050F550"
    )
    port map (
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit(4),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(4),
      ADR0 => debug_light_generator_1_ws2812_drv_1_timer_limit(5),
      ADR2 => debug_light_generator_1_ws2812_drv_1_timer(5),
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi2_1502
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"A50000A5A50000A5"
    )
    port map (
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit(2),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(2),
      ADR0 => debug_light_generator_1_ws2812_drv_1_timer_limit(3),
      ADR2 => debug_light_generator_1_ws2812_drv_1_timer(3),
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(1)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"5050F550"
    )
    port map (
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit(2),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(2),
      ADR0 => debug_light_generator_1_ws2812_drv_1_timer_limit(3),
      ADR2 => debug_light_generator_1_ws2812_drv_1_timer(3),
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi1_1508
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"8844221188442211"
    )
    port map (
      ADR2 => '1',
      ADR0 => debug_light_generator_1_ws2812_drv_1_data_out_0,
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(0),
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit_1_0,
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer(1),
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(0)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X2Y36",
      INIT => X"4400DDCC"
    )
    port map (
      ADR2 => '1',
      ADR0 => debug_light_generator_1_ws2812_drv_1_data_out_0,
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(0),
      ADR4 => debug_light_generator_1_ws2812_drv_1_timer_limit_1_0,
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer(1),
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi_1514
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy(4),
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_0
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X2Y37"
    )
    port map (
      CI => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy(3),
      CYINIT => '0',
      CO(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_CO_3_UNCONNECTED,
      CO(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_CO_2_UNCONNECTED,
      CO(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_CO_1_UNCONNECTED,
      CO(0) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy(4),
      DI(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_DI_3_UNCONNECTED,
      DI(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_DI_2_UNCONNECTED,
      DI(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_DI_1_UNCONNECTED,
      DI(0) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi4_1526,
      O(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_3_UNCONNECTED,
      O(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_2_UNCONNECTED,
      O(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_1_UNCONNECTED,
      O(0) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_O_0_UNCONNECTED,
      S(3) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_S_3_UNCONNECTED,
      S(2) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_S_2_UNCONNECTED,
      S(1) => NLW_debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_S_1_UNCONNECTED,
      S(0) => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(4)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X2Y37",
      INIT => X"0099009900990099"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer_limit(6),
      ADR0 => debug_light_generator_1_ws2812_drv_1_timer(8),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(9),
      ADR5 => '1',
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lut(4)
    );
  debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y37",
      INIT => X"FF22FF22"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer_limit(6),
      ADR0 => debug_light_generator_1_ws2812_drv_1_timer(8),
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer(9),
      O => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_lutdi4_1526
    );
  clk_50mhz_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_50mhz_BUFGP_IBUFG_1532,
      I => clk_50mhz
    );
  ProtoComp72_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP_IBUFG_1532,
      O => clk_50mhz_BUFGP_IBUFG_0
    );
  pb_0_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 115 ps
    )
    port map (
      O => pb_0_IBUF_1535,
      I => pb_0
    );
  ProtoComp72_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 115 ps
    )
    port map (
      I => pb_0_IBUF_1535,
      O => pb_0_IBUF_0
    );
  pb_1_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 115 ps
    )
    port map (
      O => pb_1_IBUF_1538,
      I => pb_1
    );
  ProtoComp72_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 115 ps
    )
    port map (
      I => pb_1_IBUF_1538,
      O => pb_1_IBUF_0
    );
  cs_n_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 115 ps
    )
    port map (
      O => cs_n_IBUF_1541,
      I => cs_n
    );
  ProtoComp72_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 115 ps
    )
    port map (
      I => cs_n_IBUF_1541,
      O => cs_n_IBUF_0
    );
  miso_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => NlwBufferSignal_miso_OBUFT_I,
      O => miso,
      CTL => Q_3348_1
    );
  sw_0_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 115 ps
    )
    port map (
      O => sw_0_IBUF_1547,
      I => sw_0
    );
  ProtoComp72_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 115 ps
    )
    port map (
      I => sw_0_IBUF_1547,
      O => sw_0_IBUF_0
    );
  sw_1_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 115 ps
    )
    port map (
      O => sw_1_IBUF_1550,
      I => sw_1
    );
  ProtoComp72_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 115 ps
    )
    port map (
      I => sw_1_IBUF_1550,
      O => sw_1_IBUF_0
    );
  led_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => NlwBufferSignal_led_0_OBUF_I,
      O => led_0
    );
  sclk_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 115 ps
    )
    port map (
      O => sclk_IBUF_1555,
      I => sclk
    );
  ProtoComp72_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 115 ps
    )
    port map (
      I => sclk_IBUF_1555,
      O => sclk_IBUF_0
    );
  mosi_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 115 ps
    )
    port map (
      O => mosi_IBUF_1558,
      I => mosi
    );
  ProtoComp72_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 115 ps
    )
    port map (
      I => mosi_IBUF_1558,
      O => mosi_IBUF_0
    );
  led_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD46"
    )
    port map (
      I => '0',
      O => led_1
    );
  pi_to_fpga_pin_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 115 ps
    )
    port map (
      O => pi_to_fpga_pin_IBUF_1563,
      I => pi_to_fpga_pin
    );
  ProtoComp72_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 115 ps
    )
    port map (
      I => pi_to_fpga_pin_IBUF_1563,
      O => pi_to_fpga_pin_IBUF_0
    );
  fpga_to_pi_pin_OBUF : X_OBUF
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => NlwBufferSignal_fpga_to_pi_pin_OBUF_I,
      O => fpga_to_pi_pin
    );
  light_square_data_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => NlwBufferSignal_light_square_data_OBUF_I,
      O => light_square_data
    );
  clk_50mhz_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y7",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_clk_50mhz_BUFGP_BUFG_IN,
      O => clk_50mhz_BUFGP
    );
  debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_3200_897,
      O => Q_3200_897_0
    );
  lut3582_843 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR5 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(5),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      O => lut3582_843_3573
    );
  lut3584_845 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => X"AAAAAAAAAAAAAABA"
    )
    port map (
      ADR0 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      ADR3 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR2 => lut3583_844_3110,
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      ADR5 => lut3582_843_3573,
      O => Q_3166_846
    );
  debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_CLK,
      I => Q_3192_873,
      O => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      RST => GND,
      SET => GND
    );
  lut3624_872 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => X"F333C000F333C000"
    )
    port map (
      ADR0 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer_done_3112,
      ADR2 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR3 => lut3623_871_3572,
      ADR5 => '1',
      O => Q_3192_873
    );
  lut3653_896 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => X"FFFF00C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer_done_3112,
      ADR2 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR3 => lut3623_871_3572,
      O => Q_3200_897
    );
  lut3623_871 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => X"0000000000000010"
    )
    port map (
      ADR2 => lut3582_843_3573,
      ADR3 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      ADR5 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR0 => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      O => lut3623_871_3572
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_5 : X_FF
    generic map(
      LOC => "SLICE_X1Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3166_846,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_5_CLK,
      I => lut3578_840_1604,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int(5),
      RST => GND,
      SET => GND
    );
  lut3578_840 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y33",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR5 => debug_light_generator_1_ws2812_drv_1_current_led_int(5),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      O => lut3578_840_1604
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_4 : X_FF
    generic map(
      LOC => "SLICE_X1Y34",
      INIT => '0'
    )
    port map (
      CE => Q_3200_897_0,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_4_CLK,
      I => Q_3199_893,
      O => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      RST => GND,
      SET => GND
    );
  lut3649_892 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y34",
      INIT => X"FFFFFFFEAAAAAAAB"
    )
    port map (
      ADR0 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR2 => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      ADR3 => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      ADR5 => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      O => Q_3199_893
    );
  lut3583_844_lut3583_844_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_pack_1,
      O => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114
    );
  lut3583_844 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y35",
      INIT => X"0400040004000400"
    )
    port map (
      ADR4 => '1',
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer_done_3112,
      ADR0 => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      ADR1 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR2 => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      ADR5 => '1',
      O => lut3583_844_3110
    );
  lut3617_868 : X_LUT5
    generic map(
      LOC => "SLICE_X1Y35",
      INIT => X"00CC33CC"
    )
    port map (
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer_done_3112,
      ADR2 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR0 => '1',
      O => lut3617_868_1623
    );
  debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X1Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_CLK,
      I => lut3617_868_1623,
      O => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_pack_1,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_done : X_FF
    generic map(
      LOC => "SLICE_X1Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_done_CLK,
      I => lut3485_827_3450,
      O => debug_light_generator_1_ws2812_drv_1_timer_done_3112,
      RST => GND,
      SET => GND
    );
  lut3485_827 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y37",
      INIT => X"FCFF00FCFCFF00FC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_Mcount_timer_xor_11_rt,
      ADR3 => debug_light_generator_1_ws2812_drv_1_timer_limit(6),
      ADR1 => debug_light_generator_1_ws2812_drv_1_timer(10),
      ADR2 => debug_light_generator_1_ws2812_drv_1_Mcompar_n0025_cy_4_0,
      O => lut3485_827_3450
    );
  lut3641_887 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y32",
      INIT => X"FF7F0000FFFF0000"
    )
    port map (
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR5 => debug_light_generator_1_ws2812_data_7_g_1_Q,
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      O => lut3641_887_3559
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_3_debug_light_generator_1_ws2812_drv_1_bit_index_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_bit_index_0_pack_9,
      O => debug_light_generator_1_ws2812_drv_1_bit_index(0)
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_3_debug_light_generator_1_ws2812_drv_1_bit_index_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_3211_908_pack_7,
      O => Q_3211_908
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3200_897_0,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_3_CLK,
      I => Q_3203_899,
      O => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      RST => GND,
      SET => GND
    );
  lut3656_898 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => X"FFFFFFCC00000030"
    )
    port map (
      ADR0 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      ADR5 => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      ADR3 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR2 => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      O => Q_3203_899
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3200_897_0,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_2_CLK,
      I => Q_3207_904,
      O => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      RST => GND,
      SET => GND
    );
  lut3662_903 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => X"FFFFFA05FFFFFA05"
    )
    port map (
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR2 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR3 => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      ADR0 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      ADR5 => '1',
      O => Q_3207_904
    );
  lut3673_912 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => X"FFFF5555"
    )
    port map (
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      O => Q_3215_913
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3200_897_0,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_0_CLK,
      I => Q_3215_913,
      O => debug_light_generator_1_ws2812_drv_1_bit_index_0_pack_9,
      RST => GND,
      SET => GND
    );
  lut3630_876 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => X"00CC00FF00CC00FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      ADR5 => '1',
      O => lut3630_876_3574
    );
  lut3639_885 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => X"CCCC3333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      ADR4 => debug_light_generator_1_ws2812_drv_1_bit_index(0),
      O => Q_3211_908_pack_7
    );
  debug_light_generator_1_ws2812_drv_1_bit_index_1 : X_FF
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3200_897_0,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_1_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_1_IN,
      O => debug_light_generator_1_ws2812_drv_1_bit_index(1),
      RST => GND,
      SET => GND
    );
  lut3633_879 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y33",
      INIT => X"C000CCCCC0CCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      ADR5 => lut3632_878_3290,
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR2 => lut3631_877_0,
      ADR4 => lut3630_876_3574,
      O => lut3633_879_3289
    );
  lut3640_886 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => X"0000000000000E04"
    )
    port map (
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR5 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR3 => debug_light_generator_1_ws2812_data_8_g_1_Q,
      ADR1 => debug_light_generator_1_ws2812_data_0_g_1_Q,
      O => lut3640_886_3577
    );
  lut3642_888 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => X"0000223300002223"
    )
    port map (
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(2),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(5),
      ADR3 => Q_3211_908,
      ADR2 => lut3641_887_3559,
      ADR5 => lut3640_886_3577,
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      O => lut3642_888_3575
    );
  lut3638_884 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => X"0C000C000C000D05"
    )
    port map (
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      ADR3 => debug_light_generator_1_ws2812_data_7_b_1_Q,
      ADR1 => lut3634_880_0,
      ADR5 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR4 => lut3637_883_0,
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      O => lut3638_884_3576
    );
  debug_light_generator_1_ws2812_drv_1_current_bit : X_SFF
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_bit_CLK,
      I => lut3643_889_1704,
      O => debug_light_generator_1_ws2812_drv_1_current_bit_3146,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3643_889 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y33",
      INIT => X"00000000C4C4C4C0"
    )
    port map (
      ADR1 => lut3642_888_3575,
      ADR5 => lut3633_879_3289,
      ADR0 => lut3636_882_3564,
      ADR4 => lut3638_884_3576,
      ADR3 => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      ADR2 => debug_light_generator_1_ws2812_drv_1_bit_index(4),
      O => lut3643_889_1704
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_4_debug_light_generator_1_ws2812_drv_1_timer_limit_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_data_out_1711,
      O => debug_light_generator_1_ws2812_drv_1_data_out_0
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_4_debug_light_generator_1_ws2812_drv_1_timer_limit_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_data_fully_latched_re_1719,
      O => spi_top_1_tx_controller_data_fully_latched_re_0
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_4_debug_light_generator_1_ws2812_drv_1_timer_limit_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_data_fully_latched_d1_pack_7,
      O => spi_top_1_tx_controller_data_fully_latched_d1_3578
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_4_debug_light_generator_1_ws2812_drv_1_timer_limit_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_timer_limit(1),
      O => debug_light_generator_1_ws2812_drv_1_timer_limit_1_0
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_4 : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_4_CLK,
      I => Q_3225_924,
      O => debug_light_generator_1_ws2812_drv_1_timer_limit(4),
      RST => GND,
      SET => GND
    );
  lut3684_919 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"F00FF00FF00FF00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_bit_3146,
      ADR5 => '1',
      O => Q_3225_924
    );
  lut3713_937 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"00330033"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR3 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR4 => '1',
      O => lut3713_937_1710
    );
  debug_light_generator_1_ws2812_drv_1_data_out : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_data_out_CLK,
      I => lut3713_937_1710,
      O => debug_light_generator_1_ws2812_drv_1_data_out_1711,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_5 : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_5_CLK,
      I => Q_3222_921,
      O => debug_light_generator_1_ws2812_drv_1_timer_limit(5),
      RST => GND,
      SET => GND
    );
  lut3685_920 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"CFCFCFCFCFCFCFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR2 => Q_3225_924,
      ADR5 => '1',
      O => Q_3222_921
    );
  lut3925_983 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"55550000"
    )
    port map (
      ADR2 => '1',
      ADR4 => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      ADR0 => spi_top_1_tx_controller_data_fully_latched_d1_3578,
      ADR3 => '1',
      ADR1 => '1',
      O => lut3925_983_1718
    );
  spi_top_1_tx_controller_data_fully_latched_re : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_data_fully_latched_re_CLK,
      I => lut3925_983_1718,
      O => spi_top_1_tx_controller_data_fully_latched_re_1719,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_3_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_3_IN,
      O => debug_light_generator_1_ws2812_drv_1_timer_limit(3),
      RST => GND,
      SET => GND
    );
  spi_top_1_spi_tx_1_data_fully_latched_int_rt : X_LUT5
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      O => spi_top_1_spi_tx_1_data_fully_latched_int_rt_1726
    );
  spi_top_1_tx_controller_data_fully_latched_d1 : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_data_fully_latched_d1_CLK,
      I => spi_top_1_spi_tx_1_data_fully_latched_int_rt_1726,
      O => spi_top_1_tx_controller_data_fully_latched_d1_pack_7,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_2_CLK,
      I => Q_3231_930,
      O => debug_light_generator_1_ws2812_drv_1_timer_limit(2),
      RST => GND,
      SET => GND
    );
  lut3701_929 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"FFFFA0A0FFFFA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_bit_3146,
      ADR0 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      ADR5 => '1',
      O => Q_3231_930
    );
  lut3707_933 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => X"FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_bit_3146,
      ADR3 => '1',
      O => Q_3234_934
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_1_CLK,
      I => Q_3234_934,
      O => debug_light_generator_1_ws2812_drv_1_timer_limit(1),
      RST => GND,
      SET => GND
    );
  uart_top_1_uart_rx_1_counter_max_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_2_CLK,
      I => Q_2616_555,
      O => uart_top_1_uart_rx_1_counter_max(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Q_2616_555_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y51",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      O => Q_2616_555
    );
  uart_top_1_uart_rx_1_counter_max_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_1_CLK,
      I => '1',
      O => uart_top_1_uart_rx_1_counter_max(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_counter_max_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_0_CLK,
      I => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_0_IN,
      O => uart_top_1_uart_rx_1_counter_max(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_next_byte_index_int_6_spi_top_1_spi_tx_1_next_byte_index_int_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_next_byte_index_int_0_pack_7,
      O => spi_top_1_spi_tx_1_next_byte_index_int(0)
    );
  spi_top_1_spi_tx_1_next_byte_index_int_6 : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_6_CLK,
      I => lut1250_394_1767,
      O => spi_top_1_spi_tx_1_next_byte_index_int(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1250_394 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"000007F000000FF0"
    )
    port map (
      ADR4 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR2 => lut1241_388_3279,
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(7),
      ADR3 => spi_top_1_spi_tx_1_next_byte_index_int(6),
      ADR1 => lut1240_387_3195,
      ADR5 => lut1239_386_3280,
      O => lut1250_394_1767
    );
  spi_top_1_spi_tx_1_next_byte_index_int_3 : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_3_CLK,
      I => lut1268_403_1749,
      O => spi_top_1_spi_tx_1_next_byte_index_int(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1268_403 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"0055002A005500AA"
    )
    port map (
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR0 => lut1239_386_3280,
      ADR5 => spi_top_1_spi_tx_1_next_byte_index_int(7),
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(3),
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(6),
      ADR2 => lut1240_387_3195,
      O => lut1268_403_1749
    );
  spi_top_1_spi_tx_1_next_byte_index_int_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_1_CLK,
      I => lut1280_409_1757,
      O => spi_top_1_spi_tx_1_next_byte_index_int(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1280_409 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"005500AA005500AA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(1),
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(0),
      ADR5 => '1',
      O => lut1280_409_1757
    );
  lut1286_412 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => X"00550055"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR2 => '1',
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(0),
      O => lut1286_412_1758
    );
  spi_top_1_spi_tx_1_next_byte_index_int_0 : X_SFF
    generic map(
      LOC => "SLICE_X4Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_0_CLK,
      I => lut1286_412_1758,
      O => spi_top_1_spi_tx_1_next_byte_index_int_0_pack_7,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_data_7_b_1_debug_light_generator_1_ws2812_data_7_b_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_data_7_r_1_Q,
      O => debug_light_generator_1_ws2812_data_7_r_1_0
    );
  debug_light_generator_1_ws2812_data_7_b_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_7_b_1_CLK,
      I => lut3256_799_1780,
      O => debug_light_generator_1_ws2812_data_7_b_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3256_799 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"FF00BB00FF00BB00"
    )
    port map (
      ADR2 => '1',
      ADR3 => spi_top_1_spi_tx_1_next_byte_index_int(7),
      ADR1 => lut1240_387_3195,
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(6),
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(2),
      ADR5 => '1',
      O => lut3256_799_1780
    );
  lut3267_802 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"00FB4400"
    )
    port map (
      ADR2 => spi_top_1_spi_tx_1_next_byte_index_int(1),
      ADR3 => spi_top_1_spi_tx_1_next_byte_index_int(7),
      ADR1 => lut1240_387_3195,
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(6),
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(2),
      O => lut3267_802_1781
    );
  debug_light_generator_1_ws2812_data_7_r_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_7_r_1_CLK,
      I => lut3267_802_1781,
      O => debug_light_generator_1_ws2812_data_7_r_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_data_7_g_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_7_g_1_CLK,
      I => lut3286_811_1790,
      O => debug_light_generator_1_ws2812_data_7_g_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3286_811 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y21",
      INIT => X"1111111113111211"
    )
    port map (
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(7),
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(6),
      ADR2 => spi_top_1_spi_tx_1_next_byte_index_int(2),
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(0),
      ADR3 => lut1240_387_3195,
      ADR5 => spi_top_1_spi_tx_1_next_byte_index_int(1),
      O => lut3286_811_1790
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_4_debug_light_generator_1_ws2812_drv_1_current_led_int_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_current_led_int_3_pack_12,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int(3)
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_4_debug_light_generator_1_ws2812_drv_1_current_led_int_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3634_880_1808,
      O => lut3634_880_0
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_4_debug_light_generator_1_ws2812_drv_1_current_led_int_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3631_877_1815,
      O => lut3631_877_0
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_4_debug_light_generator_1_ws2812_drv_1_current_led_int_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3637_883_1823,
      O => lut3637_883_0
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3166_846,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_4_CLK,
      I => lut3587_847_1796,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      RST => GND,
      SET => GND
    );
  lut3587_847 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"7FFF80007FFF8000"
    )
    port map (
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR5 => '1',
      O => lut3587_847_1796
    );
  lut3593_851 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"6AAA6AAA"
    )
    port map (
      ADR0 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR4 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      O => Q_3173_852
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3166_846,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_3_CLK,
      I => Q_3173_852,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int_3_pack_12,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3166_846,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_2_CLK,
      I => lut3599_856_1807,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      RST => GND,
      SET => GND
    );
  lut3599_856 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"3F3FC0C03F3FC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR5 => '1',
      O => lut3599_856_1807
    );
  lut3634_880 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"00C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      O => lut3634_880_1808
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3166_846,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_1_CLK,
      I => lut3605_860_1814,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      RST => GND,
      SET => GND
    );
  lut3605_860 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR5 => '1',
      O => lut3605_860_1814
    );
  lut3631_877 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"CCFF1D1D"
    )
    port map (
      ADR3 => debug_light_generator_1_ws2812_data_22_r_3_Q,
      ADR2 => debug_light_generator_1_ws2812_data_21_g_3_0,
      ADR0 => debug_light_generator_1_ws2812_data_20_g_3_Q,
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR1 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      O => lut3631_877_1815
    );
  debug_light_generator_1_ws2812_drv_1_current_led_int_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => '0'
    )
    port map (
      CE => Q_3166_846,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_0_CLK,
      I => lut3611_864_1822,
      O => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      RST => GND,
      SET => GND
    );
  lut3611_864 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"000F000F000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR2 => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      ADR5 => '1',
      O => lut3611_864_1822
    );
  lut3637_883 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"33FFFF55"
    )
    port map (
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR1 => debug_light_generator_1_ws2812_data_9_b_1_Q,
      ADR0 => debug_light_generator_1_ws2812_data_0_b_1_Q,
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR2 => '1',
      O => lut3637_883_1823
    );
  debug_light_generator_1_ws2812_data_8_r_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_8_r_1_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_8_r_1_IN,
      O => debug_light_generator_1_ws2812_data_8_r_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_next_byte_index_int_7_spi_top_1_spi_tx_1_next_byte_index_int_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_next_byte_index_int_4_pack_14,
      O => spi_top_1_spi_tx_1_next_byte_index_int(4)
    );
  spi_top_1_spi_tx_1_next_byte_index_int_7_spi_top_1_spi_tx_1_next_byte_index_int_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_next_byte_index_int_2_pack_11,
      O => spi_top_1_spi_tx_1_next_byte_index_int(2)
    );
  spi_top_1_spi_tx_1_next_byte_index_int_7_spi_top_1_spi_tx_1_next_byte_index_int_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_next_byte_index_int_5_pack_9,
      O => spi_top_1_spi_tx_1_next_byte_index_int(5)
    );
  lut1240_387 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"0000111100001111"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(3),
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(5),
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(4),
      ADR5 => '1',
      O => lut1240_387_3195
    );
  lut1262_400 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"060A060A"
    )
    port map (
      ADR2 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR3 => lut1239_386_3280,
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(3),
      ADR4 => '1',
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(4),
      O => lut1262_400_1856
    );
  spi_top_1_spi_tx_1_next_byte_index_int_4 : X_SFF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_4_CLK,
      I => lut1262_400_1856,
      O => spi_top_1_spi_tx_1_next_byte_index_int_4_pack_14,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_next_byte_index_int_7 : X_SFF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_7_CLK,
      I => lut1242_389_1866,
      O => spi_top_1_spi_tx_1_next_byte_index_int(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1242_389 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"0507080807070808"
    )
    port map (
      ADR2 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR1 => lut1241_388_3279,
      ADR3 => lut1239_386_3280,
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(7),
      ADR5 => lut1240_387_3195,
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(6),
      O => lut1242_389_1866
    );
  lut1239_386 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"8888000088880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(0),
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(2),
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(1),
      ADR5 => '1',
      O => lut1239_386_3280
    );
  lut1274_406 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"006600CC"
    )
    port map (
      ADR2 => '1',
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR0 => spi_top_1_spi_tx_1_next_byte_index_int(0),
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(2),
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(1),
      O => lut1274_406_1840
    );
  spi_top_1_spi_tx_1_next_byte_index_int_2 : X_SFF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_2_CLK,
      I => lut1274_406_1840,
      O => spi_top_1_spi_tx_1_next_byte_index_int_2_pack_11,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1241_388 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"8080000080800000"
    )
    port map (
      ADR3 => '1',
      ADR0 => lut1239_386_3280,
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(3),
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(5),
      ADR2 => spi_top_1_spi_tx_1_next_byte_index_int(4),
      ADR5 => '1',
      O => lut1241_388_3279
    );
  lut1256_397 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => X"006C00CC"
    )
    port map (
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR0 => lut1239_386_3280,
      ADR4 => spi_top_1_spi_tx_1_next_byte_index_int(3),
      ADR1 => spi_top_1_spi_tx_1_next_byte_index_int(5),
      ADR2 => spi_top_1_spi_tx_1_next_byte_index_int(4),
      O => lut1256_397_1847
    );
  spi_top_1_spi_tx_1_next_byte_index_int_5 : X_SFF
    generic map(
      LOC => "SLICE_X5Y19",
      INIT => '0'
    )
    port map (
      CE => lut1247_393_3258,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_5_CLK,
      I => lut1256_397_1847,
      O => spi_top_1_spi_tx_1_next_byte_index_int_5_pack_9,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Q_2204_259_2204_259_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_state_FSM_FFd2_pack_2,
      O => spi_top_1_tx_controller_state_FSM_FFd2_3277
    );
  lut857_258 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => X"FFFF80C0FFFF80C0"
    )
    port map (
      ADR4 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR3 => lut856_257_3582,
      ADR0 => spi_top_1_tx_controller_remaining_bytes_this_msg(0),
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR2 => spi_top_1_tx_controller_data_fully_latched_re_0,
      ADR5 => '1',
      O => Q_2204_259
    );
  lut923_285 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => X"FFFF0CCC"
    )
    port map (
      ADR4 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR3 => lut856_257_3582,
      ADR0 => '1',
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR2 => spi_top_1_tx_controller_data_fully_latched_re_0,
      O => lut923_285_1876
    );
  spi_top_1_tx_controller_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_state_FSM_FFd2_CLK,
      I => lut923_285_1876,
      O => spi_top_1_tx_controller_state_FSM_FFd2_pack_2,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut856_257 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y22",
      INIT => X"0000000000010000"
    )
    port map (
      ADR4 => lut855_256_0,
      ADR0 => spi_top_1_tx_controller_remaining_bytes_this_msg(2),
      ADR5 => spi_top_1_tx_controller_remaining_bytes_this_msg(3),
      ADR1 => spi_top_1_tx_controller_remaining_bytes_this_msg(4),
      ADR2 => spi_top_1_tx_controller_remaining_bytes_this_msg(7),
      ADR3 => spi_top_1_tx_controller_remaining_bytes_this_msg(5),
      O => lut856_257_3582
    );
  spi_top_1_spi_tx_1_latched_data_int_7 : X_SFF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_7_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_7_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_latched_data_int_6 : X_SFF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_6_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_6_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_latched_data_int_5 : X_SFF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_5_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_5_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_latched_data_int_4 : X_SFF
    generic map(
      LOC => "SLICE_X5Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_4_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_4_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_tx_byte_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_6_CLK,
      I => lut943_297_1904,
      O => spi_top_1_tx_controller_tx_byte(6),
      RST => GND,
      SET => GND
    );
  lut943_297 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"AAAAAAAAFFFF00FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR3 => lut936_292_3539,
      ADR4 => spi_top_1_tx_fifo_contents_count_int_6_0,
      ADR0 => spi_top_1_tx_controller_read_out_data_held(6),
      O => lut943_297_1904
    );
  spi_top_1_tx_controller_tx_byte_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_5_CLK,
      I => Q_2254_302,
      O => spi_top_1_tx_controller_tx_byte(5),
      RST => GND,
      SET => GND
    );
  lut949_301 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"FF55AA00AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR5 => spi_top_1_tx_fifo_contents_count_int(5),
      ADR4 => lut936_292_3539,
      ADR3 => spi_top_1_tx_controller_read_out_data_held(5),
      O => Q_2254_302
    );
  spi_top_1_tx_controller_tx_byte_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_4_CLK,
      I => Q_2258_307,
      O => spi_top_1_tx_controller_tx_byte(4),
      RST => GND,
      SET => GND
    );
  lut955_306 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"FCFCF0F00C0C0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR1 => spi_top_1_tx_fifo_contents_count_int_4_0,
      ADR4 => lut936_292_3539,
      ADR5 => spi_top_1_tx_controller_read_out_data_held(4),
      O => Q_2258_307
    );
  spi_top_1_tx_controller_read_out_data_held_7 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_7_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_7_IN,
      O => spi_top_1_tx_controller_read_out_data_held(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_6 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_6_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_6_IN,
      O => spi_top_1_tx_controller_read_out_data_held(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_5 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_5_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_5_IN,
      O => spi_top_1_tx_controller_read_out_data_held(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_4 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_4_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_4_IN,
      O => spi_top_1_tx_controller_read_out_data_held(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3635_881 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y33",
      INIT => X"0000FC0C00000A0A"
    )
    port map (
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(2),
      ADR2 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR5 => debug_light_generator_1_ws2812_drv_1_current_led_int(3),
      ADR0 => debug_light_generator_1_ws2812_data_0_r_1_Q,
      ADR1 => debug_light_generator_1_ws2812_data_8_r_1_Q,
      ADR3 => debug_light_generator_1_ws2812_data_9_r_1_Q,
      O => lut3635_881_3584
    );
  lut3636_882 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y33",
      INIT => X"00004C0000004C4C"
    )
    port map (
      ADR1 => debug_light_generator_1_ws2812_drv_1_bit_index(3),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(4),
      ADR3 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR0 => debug_light_generator_1_ws2812_data_7_r_1_0,
      ADR2 => lut3634_880_0,
      ADR5 => lut3635_881_3584,
      O => lut3636_882_3564
    );
  debug_light_generator_1_ws2812_data_9_r_1 : X_SFF
    generic map(
      LOC => "SLICE_X5Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_9_r_1_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_9_r_1_IN,
      O => debug_light_generator_1_ws2812_data_9_r_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_data_8_g_1 : X_SFF
    generic map(
      LOC => "SLICE_X5Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_8_g_1_CLK,
      I => Q_3105_823,
      O => debug_light_generator_1_ws2812_data_8_g_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Q_3105_823_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y36",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => debug_light_generator_1_held_spi_tx_buffer_full_3186,
      O => Q_3105_823
    );
  debug_light_generator_1_ws2812_drv_1_timer_limit_6 : X_FF
    generic map(
      LOC => "SLICE_X6Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_6_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_6_IN,
      O => debug_light_generator_1_ws2812_drv_1_timer_limit(6),
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_ws2812_data_9_b_1 : X_SFF
    generic map(
      LOC => "SLICE_X6Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_9_b_1_CLK,
      I => debug_light_generator_1_spi_tx_buffer_full_inv,
      O => debug_light_generator_1_ws2812_data_9_b_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_spi_tx_buffer_full_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y38",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      O => debug_light_generator_1_spi_tx_buffer_full_inv
    );
  Q_2247_296_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      O => Q_2247_296
    );
  lut916_281 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => spi_top_1_spi_tx_1_latched_data_int(0),
      ADR2 => spi_top_1_spi_tx_1_latched_data_int(1),
      ADR0 => spi_top_1_spi_tx_1_latched_data_int(4),
      ADR1 => spi_top_1_spi_tx_1_latched_data_int(5),
      ADR4 => spi_top_1_spi_tx_1_latched_data_int(7),
      ADR3 => spi_top_1_spi_tx_1_latched_data_int(6),
      O => lut916_281_3585
    );
  spi_top_1_tx_controller_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_state_FSM_FFd1_CLK,
      I => lut917_282_1977,
      O => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut917_282 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => X"0000000030203030"
    )
    port map (
      ADR2 => spi_top_1_tx_controller_data_fully_latched_re_0,
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR4 => lut916_281_3585,
      ADR5 => spi_top_1_tx_controller_state_FSM_FFd1_3366,
      ADR3 => spi_top_1_spi_tx_1_latched_data_int(3),
      ADR0 => spi_top_1_spi_tx_1_latched_data_int(2),
      O => lut917_282_1977
    );
  spi_top_1_spi_tx_1_latched_data_int_3 : X_SFF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_3_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_3_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_latched_data_int_2 : X_SFF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_2_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_2_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_latched_data_int_1 : X_SFF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_1_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_1_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_latched_data_int_0 : X_SFF
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => '0'
    )
    port map (
      CE => lut1329_436_3127,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_0_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_0_IN,
      O => spi_top_1_spi_tx_1_latched_data_int(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut935_291 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"00000000000100FF"
    )
    port map (
      ADR3 => spi_top_1_tx_fifo_contents_count_int(5),
      ADR5 => spi_top_1_tx_fifo_contents_count_int_4_0,
      ADR4 => spi_top_1_tx_fifo_contents_count_int(3),
      ADR1 => spi_top_1_tx_fifo_contents_count_int_0_0,
      ADR2 => spi_top_1_tx_fifo_contents_count_int(1),
      ADR0 => spi_top_1_tx_fifo_contents_count_int_2_0,
      O => lut935_291_3586
    );
  lut936_292 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"CC00CCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => lut934_290_3571,
      ADR3 => lut935_291_3586,
      ADR4 => spi_top_1_tx_fifo_contents_count_int(7),
      ADR5 => spi_top_1_tx_fifo_contents_count_int_6_0,
      O => lut936_292_3539
    );
  spi_top_1_tx_controller_tx_byte_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_7_CLK,
      I => lut937_293_2002,
      O => spi_top_1_tx_controller_tx_byte(7),
      RST => GND,
      SET => GND
    );
  lut937_293 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"EEEEFFFF44445555"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR4 => lut936_292_3539,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(7),
      ADR5 => spi_top_1_tx_controller_read_out_data_held(7),
      O => lut937_293_2002
    );
  spi_top_1_tx_controller_dequeue_spi_top_1_tx_controller_dequeue_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N45,
      O => N45_0
    );
  spi_top_1_tx_controller_dequeue_spi_top_1_tx_controller_dequeue_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_state_FSM_FFd2_2028,
      O => uart_top_1_uart_rx_1_state_FSM_FFd2_0
    );
  spi_top_1_tx_fifo_empty_int_glue_ce_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y39"
    )
    port map (
      IA => N53,
      IB => N54,
      O => N45,
      SEL => spi_top_1_tx_fifo_empty_int_3210
    );
  spi_top_1_tx_fifo_empty_int_glue_ce_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"7DFF0000FF7D0000"
    )
    port map (
      ADR0 => spi_top_1_tx_controller_dequeue_3268,
      ADR2 => spi_top_1_tx_fifo_next_write_addr(0),
      ADR5 => spi_top_1_tx_fifo_next_write_addr(1),
      ADR4 => ctrl_reset_n_3126,
      ADR1 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_0_0,
      ADR3 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_1_0,
      O => N53
    );
  spi_top_1_tx_fifo_empty_int_glue_ce_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"F0F0000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ctrl_reset_n_3126,
      ADR2 => temp_midi_note_player_1_audio_freq_counter_done_3187,
      ADR4 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      O => N54
    );
  spi_top_1_tx_controller_dequeue : X_FF
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_dequeue_CLK,
      I => lut3919_980_2026,
      O => spi_top_1_tx_controller_dequeue_3268,
      RST => GND,
      SET => GND
    );
  lut3919_980 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"8888000088880000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_controller_data_fully_latched_re_0,
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR0 => ctrl_reset_n_3126,
      ADR5 => '1',
      O => lut3919_980_2026
    );
  lut3949_995 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"0A000A00"
    )
    port map (
      ADR3 => uart_top_1_uart_rx_1_state_FSM_FFd3_3220,
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ctrl_reset_n_3126,
      O => lut3949_995_2027
    );
  uart_top_1_uart_rx_1_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd2_CLK,
      I => lut3949_995_2027,
      O => uart_top_1_uart_rx_1_state_FSM_FFd2_2028,
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_fifo_empty_int_spi_top_1_tx_fifo_empty_int_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut4144_1042_pack_2,
      O => lut4144_1042_3588
    );
  lut4140_1038 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"B00B00000000B00B"
    )
    port map (
      ADR5 => spi_top_1_tx_fifo_next_write_addr(3),
      ADR4 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_3_0,
      ADR2 => spi_top_1_tx_fifo_next_write_addr(2),
      ADR3 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_2_0,
      ADR1 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_0,
      ADR0 => spi_top_1_tx_fifo_next_write_addr(4),
      O => lut4140_1038_3589
    );
  lut4141_1039 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"8241824100000000"
    )
    port map (
      ADR4 => '1',
      ADR5 => lut4140_1038_3589,
      ADR3 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_11_0,
      ADR0 => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      ADR2 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_10_0,
      ADR1 => spi_top_1_tx_fifo_next_write_addr(10),
      O => lut4141_1039_3587
    );
  lut2462_679 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"F0FFF0FFF0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR2 => temp_midi_note_player_1_audio_freq_counter_done_3187,
      ADR5 => '1',
      O => Q_2779_680
    );
  lut4144_1042 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"0CCC0CCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => spi_top_1_tx_fifo_empty_int_3210,
      ADR3 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR2 => temp_midi_note_player_1_audio_freq_counter_done_3187,
      O => lut4144_1042_pack_2
    );
  spi_top_1_tx_fifo_empty_int : X_FF
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_empty_int_CLK,
      I => lut4145_1043_2042,
      O => spi_top_1_tx_fifo_empty_int_3210,
      RST => GND,
      SET => GND
    );
  lut4145_1043 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"7F087F7FFF00FFFF"
    )
    port map (
      ADR4 => ctrl_reset_n_3126,
      ADR0 => lut4141_1039_3587,
      ADR1 => lut4142_1040_3207,
      ADR5 => lut4143_1041_3208,
      ADR3 => lut4144_1042_3588,
      ADR2 => N45_0,
      O => lut4145_1043_2042
    );
  debug_light_generator_1_ws2812_data_0_r_1 : X_SFF
    generic map(
      LOC => "SLICE_X9Y35",
      INIT => '0'
    )
    port map (
      CE => Q_3060_808,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_r_1_CLK,
      I => Q_2055_177,
      O => debug_light_generator_1_ws2812_data_0_r_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Q_2055_177_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y35",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reset_n_3126,
      O => Q_2055_177
    );
  debug_light_generator_1_ws2812_data_0_g_1_debug_light_generator_1_ws2812_data_0_g_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_3060_808_pack_3,
      O => Q_3060_808
    );
  debug_light_generator_1_ws2812_data_0_g_1_debug_light_generator_1_ws2812_data_0_g_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3277_806_pack_2,
      O => lut3277_806_3590
    );
  lut539_207 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => X"4444444444444444"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_controller_dequeue_3268,
      ADR0 => spi_top_1_tx_fifo_empty_int_3210,
      ADR5 => '1',
      O => lut539_207_3266
    );
  lut3278_807 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => X"FF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR2 => lut3277_806_3590,
      ADR3 => many_buttons_1_gen_buttons_b_single_button_1_pressed_3267,
      ADR1 => '1',
      ADR4 => '1',
      O => Q_3060_808_pack_3
    );
  debug_light_generator_1_ws2812_data_0_g_1 : X_SFF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => Q_3060_808,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_g_1_CLK,
      I => lut3273_804_2083,
      O => debug_light_generator_1_ws2812_data_0_g_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3273_804 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => X"0A000A000A000A00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_g_single_button_1_pressed_3262,
      ADR2 => many_buttons_1_gen_buttons_k_single_button_1_toggle_int_3263,
      ADR3 => ctrl_reset_n_3126,
      ADR5 => '1',
      O => lut3273_804_2083
    );
  lut3277_806 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => X"05000500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => many_buttons_1_gen_buttons_g_single_button_1_pressed_3262,
      ADR2 => many_buttons_1_gen_buttons_k_single_button_1_toggle_int_3263,
      ADR3 => ctrl_reset_n_3126,
      O => lut3277_806_pack_2
    );
  debug_light_generator_1_ws2812_data_0_b_1 : X_SFF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => Q_3060_808,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_b_1_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_b_1_IN,
      O => debug_light_generator_1_ws2812_data_0_b_1_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut4142_1040_lut4142_1040_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_held_spi_tx_buffer_full_pack_1,
      O => debug_light_generator_1_held_spi_tx_buffer_full_3186
    );
  lut4142_1040 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"9000009009000009"
    )
    port map (
      ADR3 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_7_0,
      ADR4 => spi_top_1_tx_fifo_next_write_addr(7),
      ADR1 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_8_0,
      ADR0 => spi_top_1_tx_fifo_next_write_addr(8),
      ADR2 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_9_0,
      ADR5 => spi_top_1_tx_fifo_next_write_addr(9),
      O => lut4142_1040_3207
    );
  lut317_2 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"00A000A000A000A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => temp_midi_note_player_1_audio_freq_counter_done_3187,
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR0 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR5 => '1',
      O => lut317_2_3184
    );
  lut3863_957 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => X"FFCCFF00"
    )
    port map (
      ADR4 => debug_light_generator_1_Mcompar_spi_tx_buffer_full_counter_27_PWR_58_o_LessThan_414_o_cy_4_0,
      ADR1 => debug_light_generator_1_held_spi_tx_buffer_full_3186,
      ADR2 => '1',
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR0 => '1',
      O => Q_3250_958
    );
  debug_light_generator_1_held_spi_tx_buffer_full : X_SFF
    generic map(
      LOC => "SLICE_X9Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_held_spi_tx_buffer_full_CLK,
      I => Q_3250_958,
      O => debug_light_generator_1_held_spi_tx_buffer_full_pack_1,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_spi_tx_1_data_fully_latched_int : X_FF
    generic map(
      LOC => "SLICE_X10Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_data_fully_latched_int_CLK,
      I => lut3937_989_2111,
      O => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      RST => GND,
      SET => GND
    );
  lut3937_989 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y20",
      INIT => X"0C0C0C0C0CC00CC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrl_reset_n_3126,
      ADR2 => spi_top_1_spi_tx_1_bit_index(2),
      ADR5 => spi_top_1_spi_tx_1_bit_index(1),
      ADR3 => spi_top_1_spi_tx_1_bit_index(0),
      O => lut3937_989_2111
    );
  spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y21"
    )
    port map (
      IA => spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_4_2118,
      IB => spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_3_2128,
      O => spi_top_1_spi_tx_1_bit_index_2_latched_data_int_7_Mux_4_o,
      SEL => spi_top_1_spi_tx_1_bit_index(2)
    );
  spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_4 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => X"F0FFF000CCAACCAA"
    )
    port map (
      ADR5 => spi_top_1_spi_tx_1_bit_index(1),
      ADR3 => spi_top_1_spi_tx_1_bit_index(0),
      ADR4 => spi_top_1_spi_tx_1_latched_data_int(2),
      ADR2 => spi_top_1_spi_tx_1_latched_data_int(3),
      ADR1 => spi_top_1_spi_tx_1_latched_data_int(1),
      ADR0 => spi_top_1_spi_tx_1_latched_data_int(0),
      O => spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_4_2118
    );
  spi_top_1_spi_tx_1_ungated_miso : X_FF
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_ungated_miso_CLK,
      I => spi_top_1_spi_tx_1_bit_index_2_latched_data_int_7_Mux_4_o,
      O => spi_top_1_spi_tx_1_ungated_miso_3525,
      RST => GND,
      SET => GND
    );
  spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_3 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => X"F0FFF000CCAACCAA"
    )
    port map (
      ADR5 => spi_top_1_spi_tx_1_bit_index(1),
      ADR3 => spi_top_1_spi_tx_1_bit_index(0),
      ADR4 => spi_top_1_spi_tx_1_latched_data_int(6),
      ADR2 => spi_top_1_spi_tx_1_latched_data_int(7),
      ADR1 => spi_top_1_spi_tx_1_latched_data_int(5),
      ADR0 => spi_top_1_spi_tx_1_latched_data_int(4),
      O => spi_top_1_spi_tx_1_Mmux_bit_index_2_latched_data_int_7_Mux_4_o_3_2128
    );
  spi_top_1_tx_controller_tx_byte_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_3_CLK,
      I => lut961_311_2136,
      O => spi_top_1_tx_controller_tx_byte(3),
      RST => GND,
      SET => GND
    );
  lut961_311 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"ACACACACAFAFAFAF"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR5 => lut936_292_3539,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(3),
      ADR0 => spi_top_1_tx_controller_read_out_data_held(3),
      O => lut961_311_2136
    );
  spi_top_1_tx_controller_tx_byte_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_2_CLK,
      I => Q_2266_316,
      O => spi_top_1_tx_controller_tx_byte(2),
      RST => GND,
      SET => GND
    );
  lut967_315 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"FA50AA00FA50AA00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR2 => spi_top_1_tx_fifo_contents_count_int_2_0,
      ADR4 => lut936_292_3539,
      ADR3 => spi_top_1_tx_controller_read_out_data_held(2),
      O => Q_2266_316
    );
  spi_top_1_tx_controller_tx_byte_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_1_CLK,
      I => Q_2270_321,
      O => spi_top_1_tx_controller_tx_byte(1),
      RST => GND,
      SET => GND
    );
  lut973_320 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"FFCCCCCC33000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR4 => spi_top_1_tx_fifo_contents_count_int(1),
      ADR3 => lut936_292_3539,
      ADR5 => spi_top_1_tx_controller_read_out_data_held(1),
      O => Q_2270_321
    );
  spi_top_1_tx_controller_tx_byte_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => '0'
    )
    port map (
      CE => Q_2247_296,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_0_CLK,
      I => Q_2274_326,
      O => spi_top_1_tx_controller_tx_byte(0),
      RST => GND,
      SET => GND
    );
  lut979_325 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"F0F0F0F0CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => spi_top_1_tx_controller_state_FSM_FFd2_3277,
      ADR1 => spi_top_1_tx_fifo_contents_count_int_0_0,
      ADR3 => lut936_292_3539,
      ADR2 => spi_top_1_tx_controller_read_out_data_held(0),
      O => Q_2274_326
    );
  spi_top_1_tx_fifo_contents_count_int_7_spi_top_1_tx_fifo_contents_count_int_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_contents_count_int(6),
      O => spi_top_1_tx_fifo_contents_count_int_6_0
    );
  spi_top_1_tx_fifo_contents_count_int_7_spi_top_1_tx_fifo_contents_count_int_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_contents_count_int(4),
      O => spi_top_1_tx_fifo_contents_count_int_4_0
    );
  spi_top_1_tx_fifo_contents_count_int_7_spi_top_1_tx_fifo_contents_count_int_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_contents_count_int(2),
      O => spi_top_1_tx_fifo_contents_count_int_2_0
    );
  spi_top_1_tx_fifo_contents_count_int_7_spi_top_1_tx_fifo_contents_count_int_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_contents_count_int(0),
      O => spi_top_1_tx_fifo_contents_count_int_0_0
    );
  spi_top_1_tx_fifo_contents_count_int_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_7_CLK,
      I => lut1107_344_2162,
      O => spi_top_1_tx_fifo_contents_count_int(7),
      RST => GND,
      SET => GND
    );
  lut1107_344 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_7_0,
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => lut1107_344_2162
    );
  lut1116_347 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"00FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_6_0,
      ADR2 => '1',
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      O => lut1116_347_2163
    );
  spi_top_1_tx_fifo_contents_count_int_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_6_CLK,
      I => lut1116_347_2163,
      O => spi_top_1_tx_fifo_contents_count_int(6),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_fifo_contents_count_int_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_5_CLK,
      I => lut1125_350_2170,
      O => spi_top_1_tx_fifo_contents_count_int(5),
      RST => GND,
      SET => GND
    );
  lut1125_350 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"5050505050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_5_0,
      ADR0 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => lut1125_350_2170
    );
  lut1134_353 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"55550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_4_0,
      ADR3 => '1',
      ADR0 => spi_top_1_tx_fifo_full_int_3119,
      O => lut1134_353_2171
    );
  spi_top_1_tx_fifo_contents_count_int_4 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_4_CLK,
      I => lut1134_353_2171,
      O => spi_top_1_tx_fifo_contents_count_int(4),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_fifo_contents_count_int_3 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_3_CLK,
      I => lut1143_356_2177,
      O => spi_top_1_tx_fifo_contents_count_int(3),
      RST => GND,
      SET => GND
    );
  lut1143_356 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"3300330033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_3_0,
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => lut1143_356_2177
    );
  lut1152_359 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_2_0,
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      O => lut1152_359_2178
    );
  spi_top_1_tx_fifo_contents_count_int_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_2_CLK,
      I => lut1152_359_2178,
      O => spi_top_1_tx_fifo_contents_count_int(2),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_fifo_contents_count_int_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_1_CLK,
      I => lut1161_362_2184,
      O => spi_top_1_tx_fifo_contents_count_int(1),
      RST => GND,
      SET => GND
    );
  lut1161_362 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_1_0,
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => lut1161_362_2184
    );
  lut1170_365 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => X"33003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_0_0,
      ADR2 => '1',
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      O => lut1170_365_2185
    );
  spi_top_1_tx_fifo_contents_count_int_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_0_CLK,
      I => lut1170_365_2185,
      O => spi_top_1_tx_fifo_contents_count_int(0),
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_fifo_contents_count_int_12_spi_top_1_tx_fifo_contents_count_int_12_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_contents_count_int_8_pack_6,
      O => spi_top_1_tx_fifo_contents_count_int(8)
    );
  spi_top_1_tx_fifo_contents_count_int_12_spi_top_1_tx_fifo_contents_count_int_12_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_contents_count_int_9_pack_4,
      O => spi_top_1_tx_fifo_contents_count_int(9)
    );
  lut934_290 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"0000000000000011"
    )
    port map (
      ADR2 => '1',
      ADR1 => spi_top_1_tx_fifo_contents_count_int(8),
      ADR4 => spi_top_1_tx_fifo_contents_count_int(9),
      ADR5 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR0 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR3 => spi_top_1_tx_fifo_contents_count_int(11),
      O => lut934_290_3571
    );
  spi_top_1_tx_fifo_contents_count_int_12 : X_FF
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_12_CLK,
      I => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_12_IN,
      O => spi_top_1_tx_fifo_contents_count_int(12),
      RST => GND,
      SET => GND
    );
  lut3973_1007 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => spi_top_1_tx_fifo_contents_count_int(3),
      ADR3 => spi_top_1_tx_fifo_contents_count_int_4_0,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(5),
      ADR4 => spi_top_1_tx_fifo_contents_count_int_6_0,
      ADR5 => spi_top_1_tx_fifo_contents_count_int(8),
      ADR2 => spi_top_1_tx_fifo_contents_count_int(7),
      O => lut3973_1007_3228
    );
  spi_top_1_tx_fifo_contents_count_int_11 : X_FF
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_11_CLK,
      I => lut1071_332_2211,
      O => spi_top_1_tx_fifo_contents_count_int(11),
      RST => GND,
      SET => GND
    );
  lut1071_332 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_11_0,
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => lut1071_332_2211
    );
  lut1098_341 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_8_0,
      ADR2 => '1',
      ADR4 => spi_top_1_tx_fifo_full_int_3119,
      O => lut1098_341_2212
    );
  spi_top_1_tx_fifo_contents_count_int_8 : X_FF
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_8_CLK,
      I => lut1098_341_2212,
      O => spi_top_1_tx_fifo_contents_count_int_8_pack_6,
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_fifo_contents_count_int_10 : X_FF
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_10_CLK,
      I => lut1080_335_2218,
      O => spi_top_1_tx_fifo_contents_count_int(10),
      RST => GND,
      SET => GND
    );
  lut1080_335 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_10_0,
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => '1',
      O => lut1080_335_2218
    );
  lut1089_338 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => spi_top_1_tx_fifo_GND_45_o_GND_45_o_sub_1_OUT_9_0,
      ADR4 => '1',
      ADR3 => spi_top_1_tx_fifo_full_int_3119,
      O => lut1089_338_2219
    );
  spi_top_1_tx_fifo_contents_count_int_9 : X_FF
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_9_CLK,
      I => lut1089_338_2219,
      O => spi_top_1_tx_fifo_contents_count_int_9_pack_4,
      RST => GND,
      SET => GND
    );
  lut4143_1041 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y41",
      INIT => X"8400210084842121"
    )
    port map (
      ADR1 => spi_top_1_tx_fifo_next_write_addr(5),
      ADR4 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_5_0,
      ADR0 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_6_0,
      ADR2 => spi_top_1_tx_fifo_next_write_addr(6),
      ADR5 => spi_top_1_tx_fifo_next_write_addr(4),
      ADR3 => spi_top_1_tx_fifo_read_addr_11_GND_45_o_add_4_OUT_4_0,
      O => lut4143_1041_3208
    );
  lut1247_393_lut1247_393_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_bit_index_2_pack_9,
      O => spi_top_1_spi_tx_1_bit_index(2)
    );
  lut1247_393 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"F000F010F000F010"
    )
    port map (
      ADR2 => Q_2402_418,
      ADR4 => spi_top_1_spi_tx_1_bit_index(0),
      ADR0 => spi_top_1_spi_tx_1_bit_index(2),
      ADR1 => spi_top_1_spi_tx_1_bit_index(1),
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR5 => '1',
      O => lut1247_393_3258
    );
  lut1292_415 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"00AA0099"
    )
    port map (
      ADR2 => '1',
      ADR4 => spi_top_1_spi_tx_1_bit_index(0),
      ADR0 => spi_top_1_spi_tx_1_bit_index(2),
      ADR1 => spi_top_1_spi_tx_1_bit_index(1),
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      O => lut1292_415_2235
    );
  spi_top_1_spi_tx_1_bit_index_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => Q_2402_418,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_2_CLK,
      I => lut1292_415_2235,
      O => spi_top_1_spi_tx_1_bit_index_2_pack_9,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1246_392 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FFFFFFFFF0FAF0FA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR5 => spi_top_1_spi_tx_1_cs_n_d2_3129,
      ADR0 => spi_top_1_spi_tx_1_sclk_d2_3557,
      ADR3 => spi_top_1_spi_tx_1_sclk_d1_3558,
      O => Q_2402_418
    );
  lut1328_435 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"0000000000030000"
    )
    port map (
      ADR0 => '1',
      ADR5 => spi_top_1_spi_tx_1_sclk_d1_3558,
      ADR4 => spi_top_1_spi_tx_1_sclk_d2_3557,
      ADR1 => spi_top_1_spi_tx_1_bit_index(0),
      ADR2 => spi_top_1_spi_tx_1_bit_index(2),
      ADR3 => spi_top_1_spi_tx_1_bit_index(1),
      O => lut1328_435_3130
    );
  spi_top_1_spi_tx_1_data_tentatively_latched_int_spi_top_1_spi_tx_1_data_tentatively_latched_int_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut1329_436_pack_8,
      O => lut1329_436_3127
    );
  spi_top_1_spi_tx_1_data_tentatively_latched_int_spi_top_1_spi_tx_1_data_tentatively_latched_int_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_has_been_fully_latched_pack_6,
      O => spi_top_1_spi_tx_1_has_been_fully_latched_3592
    );
  lut314_0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"FFCCFFCCFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => cs_n_IBUF_0,
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR5 => '1',
      O => Q_3348_1
    );
  lut1329_436 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"F0FA0000"
    )
    port map (
      ADR4 => spi_top_1_spi_tx_1_has_been_fully_latched_3592,
      ADR0 => spi_top_1_spi_tx_1_cs_n_d2_3129,
      ADR2 => lut1328_435_3130,
      ADR1 => '1',
      ADR3 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      O => lut1329_436_pack_8
    );
  spi_top_1_spi_tx_1_data_tentatively_latched_int : X_FF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_data_tentatively_latched_int_CLK,
      I => lut3931_986_2265,
      O => spi_top_1_spi_tx_1_data_tentatively_latched_int_3593,
      RST => GND,
      SET => GND
    );
  lut3931_986 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => ctrl_reset_n_3126,
      ADR4 => spi_top_1_spi_tx_1_data_tentatively_latched_int_3593,
      ADR3 => lut1329_436_3127,
      ADR5 => '1',
      O => lut3931_986_2265
    );
  lut4151_1046 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"CACAEAEA"
    )
    port map (
      ADR1 => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      ADR0 => spi_top_1_spi_tx_1_has_been_fully_latched_3592,
      ADR2 => ctrl_reset_n_3126,
      ADR4 => spi_top_1_spi_tx_1_data_tentatively_latched_int_3593,
      ADR3 => '1',
      O => Q_3327_1047
    );
  spi_top_1_spi_tx_1_has_been_fully_latched : X_FF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_has_been_fully_latched_CLK,
      I => Q_3327_1047,
      O => spi_top_1_spi_tx_1_has_been_fully_latched_pack_6,
      RST => GND,
      SET => GND
    );
  spi_top_1_spi_tx_1_cs_n_d2 : X_FF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d2_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d2_IN,
      O => spi_top_1_spi_tx_1_cs_n_d2_3129,
      RST => GND,
      SET => GND
    );
  spi_top_1_spi_tx_1_cs_n_d1 : X_FF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d1_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d1_IN,
      O => spi_top_1_spi_tx_1_cs_n_d1_3132,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_Q,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_0
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_Q,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_0
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3981_1013_pack_10,
      O => lut3981_1013_3594
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_Q,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_0
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_CLK,
      I => lut3982_1014_2280,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_Q,
      RST => GND,
      SET => GND
    );
  lut3982_1014 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FFA2FFA0FFA2FFA0"
    )
    port map (
      ADR0 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR1 => lut3981_1013_3594,
      ADR4 => spi_top_1_tx_fifo_contents_count_int(9),
      ADR2 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR3 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR5 => '1',
      O => lut3982_1014_2280
    );
  lut3988_1017 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FF20FF00"
    )
    port map (
      ADR0 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR1 => lut3981_1013_3594,
      ADR4 => spi_top_1_tx_fifo_contents_count_int(9),
      ADR2 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR3 => spi_top_1_tx_fifo_contents_count_int(12),
      O => Q_3306_1018
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_CLK,
      I => Q_3306_1018,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_Q,
      RST => GND,
      SET => GND
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_CLK,
      I => Q_3312_1025,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_Q,
      RST => GND,
      SET => GND
    );
  lut4000_1024 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FFF0FFF8FFF0FFF8"
    )
    port map (
      ADR3 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR2 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR4 => lut3981_1013_3594,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR0 => spi_top_1_tx_fifo_contents_count_int(9),
      ADR5 => '1',
      O => Q_3312_1025
    );
  lut4012_1032 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FFFCFFFE"
    )
    port map (
      ADR3 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR2 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR4 => lut3981_1013_3594,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR0 => spi_top_1_tx_fifo_contents_count_int(9),
      O => Q_3318_1033
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_CLK,
      I => Q_3318_1033,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_Q,
      RST => GND,
      SET => GND
    );
  lut3974_1008 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"0000001000000010"
    )
    port map (
      ADR4 => spi_top_1_tx_fifo_contents_count_int_0_0,
      ADR2 => lut3973_1007_3228,
      ADR0 => spi_top_1_tx_fifo_contents_count_int(1),
      ADR3 => spi_top_1_tx_fifo_contents_count_int(9),
      ADR1 => spi_top_1_tx_fifo_contents_count_int_2_0,
      ADR5 => '1',
      O => lut3974_1008_3224
    );
  lut3981_1013 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"00001010"
    )
    port map (
      ADR4 => spi_top_1_tx_fifo_contents_count_int_0_0,
      ADR2 => lut3973_1007_3228,
      ADR0 => spi_top_1_tx_fifo_contents_count_int(1),
      ADR3 => '1',
      ADR1 => spi_top_1_tx_fifo_contents_count_int_2_0,
      O => lut3981_1013_pack_10
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_CLK,
      I => Q_3300_1010,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_Q,
      RST => GND,
      SET => GND
    );
  lut3975_1009 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"AAAAEEAAAAAAEEAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR4 => lut3974_1008_3224,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR3 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR5 => '1',
      O => Q_3300_1010
    );
  lut3994_1021 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"EEAAEEEE"
    )
    port map (
      ADR2 => '1',
      ADR0 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR4 => lut3974_1008_3224,
      ADR1 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR3 => spi_top_1_tx_fifo_contents_count_int(10),
      O => lut3994_1021_2307
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_CLK,
      I => lut3994_1021_2307,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_Q,
      RST => GND,
      SET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_3_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_3_IN,
      O => spi_top_1_tx_controller_read_out_data_held(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_2_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_2_IN,
      O => spi_top_1_tx_controller_read_out_data_held(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_1 : X_SFF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_1_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_1_IN,
      O => spi_top_1_tx_controller_read_out_data_held(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  spi_top_1_tx_controller_read_out_data_held_0 : X_SFF
    generic map(
      LOC => "SLICE_X12Y34",
      INIT => '0'
    )
    port map (
      CE => spi_top_1_spi_tx_1_data_fully_latched_int_3125,
      CLK => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_0_CLK,
      I => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_0_IN,
      O => spi_top_1_tx_controller_read_out_data_held(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_state_FSM_FFd5_uart_top_1_uart_rx_1_state_FSM_FFd5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_state_FSM_FFd6_pack_7,
      O => uart_top_1_uart_rx_1_state_FSM_FFd6_3595
    );
  uart_top_1_uart_rx_1_state_FSM_FFd5_uart_top_1_uart_rx_1_state_FSM_FFd5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_2485_473,
      O => Q_2485_473_0
    );
  uart_top_1_uart_rx_1_state_FSM_FFd5 : X_SFF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd5_CLK,
      I => Q_2471_459,
      O => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1463_458 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"CECE0A0ACECE0A0A"
    )
    port map (
      ADR3 => '1',
      ADR2 => pi_to_fpga_pin_IBUF_0,
      ADR1 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR4 => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      ADR0 => uart_top_1_uart_rx_1_state_FSM_FFd6_3595,
      ADR5 => '1',
      O => Q_2471_459
    );
  lut1475_466 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FFA0FFA0"
    )
    port map (
      ADR3 => uart_top_1_uart_rx_1_state_FSM_FFd1_3245,
      ADR2 => pi_to_fpga_pin_IBUF_0,
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => uart_top_1_uart_rx_1_state_FSM_FFd6_3595,
      O => Q_2479_467
    );
  uart_top_1_uart_rx_1_state_FSM_FFd6 : X_SFF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd6_CLK,
      I => Q_2479_467,
      O => uart_top_1_uart_rx_1_state_FSM_FFd6_pack_7,
      SSET => Q_2055_177,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  uart_top_1_uart_rx_1_state_FSM_FFd4 : X_SFF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd4_CLK,
      I => Q_2467_455,
      O => uart_top_1_uart_rx_1_state_FSM_FFd4_3219,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1457_454 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"DF0FFF0FDD00FF00"
    )
    port map (
      ADR5 => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      ADR0 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR1 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR4 => lut1456_453_0,
      ADR3 => uart_top_1_uart_rx_1_state_FSM_FFd2_0,
      ADR2 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      O => Q_2467_455
    );
  uart_top_1_uart_rx_1_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd3_CLK,
      I => Q_2475_463,
      O => uart_top_1_uart_rx_1_state_FSM_FFd3_3220,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1469_462 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FFCCCCCCFFCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_state_FSM_FFd4_3219,
      ADR4 => uart_top_1_uart_rx_1_state_FSM_FFd3_3220,
      ADR3 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      ADR5 => '1',
      O => Q_2475_463
    );
  lut1576_472 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FFFFAAFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_state_FSM_FFd3_3220,
      ADR3 => uart_top_1_uart_rx_1_Mcompar_n0102_cy_5_Q,
      O => Q_2485_473
    );
  spi_top_1_spi_tx_1_sclk_d2 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d2_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d2_IN,
      O => spi_top_1_spi_tx_1_sclk_d2_3557,
      RST => GND,
      SET => GND
    );
  spi_top_1_spi_tx_1_sclk_d1 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d1_CLK,
      I => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d1_IN,
      O => spi_top_1_spi_tx_1_sclk_d1_3558,
      RST => GND,
      SET => GND
    );
  spi_top_1_spi_tx_1_bit_index_1_spi_top_1_spi_tx_1_bit_index_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_bit_index_0_pack_1,
      O => spi_top_1_spi_tx_1_bit_index(0)
    );
  spi_top_1_spi_tx_1_bit_index_1 : X_SFF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => Q_2402_418,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_1_CLK,
      I => lut1298_419_2363,
      O => spi_top_1_spi_tx_1_bit_index(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1298_419 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"0C0C03030C0C0303"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR4 => spi_top_1_spi_tx_1_bit_index(1),
      ADR1 => spi_top_1_spi_tx_1_bit_index(0),
      ADR5 => '1',
      O => lut1298_419_2363
    );
  lut1304_423 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"03030303"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => spi_top_1_spi_tx_1_cs_n_d1_3132,
      ADR3 => '1',
      ADR1 => spi_top_1_spi_tx_1_bit_index(0),
      O => lut1304_423_2364
    );
  spi_top_1_spi_tx_1_bit_index_0 : X_SFF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => Q_2402_418,
      CLK => NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_0_CLK,
      I => lut1304_423_2364,
      O => spi_top_1_spi_tx_1_bit_index_0_pack_1,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_data_18_g_3_debug_light_generator_1_ws2812_data_18_g_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_data_19_g_3_Q,
      O => debug_light_generator_1_ws2812_data_19_g_3_0
    );
  debug_light_generator_1_ws2812_data_18_g_3_debug_light_generator_1_ws2812_data_18_g_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_data_16_g_3_Q,
      O => debug_light_generator_1_ws2812_data_16_g_3_0
    );
  debug_light_generator_1_ws2812_data_18_g_3_debug_light_generator_1_ws2812_data_18_g_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_data_21_g_3_Q,
      O => debug_light_generator_1_ws2812_data_21_g_3_0
    );
  debug_light_generator_1_ws2812_data_18_g_3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_18_g_3_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_18_g_3_IN,
      O => debug_light_generator_1_ws2812_data_18_g_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_0,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_rt_2376
    );
  debug_light_generator_1_ws2812_data_19_g_3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_19_g_3_CLK,
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_rt_2376,
      O => debug_light_generator_1_ws2812_data_19_g_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_data_22_r_3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_22_r_3_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_22_r_3_IN,
      O => debug_light_generator_1_ws2812_data_22_r_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_0,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_rt_2381
    );
  debug_light_generator_1_ws2812_data_16_g_3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_16_g_3_CLK,
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_rt_2381,
      O => debug_light_generator_1_ws2812_data_16_g_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_ws2812_data_20_g_3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_20_g_3_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_20_g_3_IN,
      O => debug_light_generator_1_ws2812_data_20_g_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_Q,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_rt_2386
    );
  debug_light_generator_1_ws2812_data_21_g_3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_21_g_3_CLK,
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_rt_2386,
      O => debug_light_generator_1_ws2812_data_21_g_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3632_878 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y32",
      INIT => X"F0F0AAAACCCCFF00"
    )
    port map (
      ADR5 => debug_light_generator_1_ws2812_drv_1_current_led_int(0),
      ADR4 => debug_light_generator_1_ws2812_drv_1_current_led_int(1),
      ADR0 => debug_light_generator_1_ws2812_data_17_g_3_Q,
      ADR2 => debug_light_generator_1_ws2812_data_19_g_3_0,
      ADR3 => debug_light_generator_1_ws2812_data_16_g_3_0,
      ADR1 => debug_light_generator_1_ws2812_data_18_g_3_Q,
      O => lut3632_878_3290
    );
  uart_top_1_uart_rx_1_increment_bit_counter : X_SFF
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_increment_bit_counter_CLK,
      I => NlwBufferSignal_uart_top_1_uart_rx_1_increment_bit_counter_IN,
      O => uart_top_1_uart_rx_1_increment_bit_counter_3168,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd1_CLK,
      I => lut3943_992_2401,
      O => uart_top_1_uart_rx_1_state_FSM_FFd1_3245,
      RST => GND,
      SET => GND
    );
  lut3943_992 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"2200000000000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => lut1456_453_0,
      ADR4 => uart_top_1_uart_rx_1_state_FSM_FFd2_0,
      ADR5 => ctrl_reset_n_3126,
      ADR1 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR0 => uart_top_1_uart_rx_1_bit_counter(0),
      O => lut3943_992_2401
    );
  lut3955_998 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"0101000001010000"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => uart_top_1_uart_rx_1_state_FSM_FFd2_0,
      ADR0 => uart_top_1_uart_rx_1_state_FSM_FFd1_3245,
      ADR2 => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      ADR1 => uart_top_1_uart_rx_1_state_FSM_FFd3_3220,
      O => lut3955_998_3596
    );
  uart_top_1_uart_rx_1_sample_data : X_FF
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_sample_data_CLK,
      I => lut3956_999_2414,
      O => uart_top_1_uart_rx_1_sample_data_3533,
      RST => GND,
      SET => GND
    );
  lut3956_999 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"00001000F000E000"
    )
    port map (
      ADR3 => lut3955_998_3596,
      ADR2 => ctrl_reset_n_3126,
      ADR5 => uart_top_1_uart_rx_1_bit_counter(3),
      ADR1 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR0 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR4 => uart_top_1_uart_rx_1_bit_counter(0),
      O => lut3956_999_2414
    );
  temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y26"
    )
    port map (
      IA => temp_midi_note_player_1_N64,
      IB => temp_midi_note_player_1_N65,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_2_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT2_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => X"D591509CFFF7C480"
    )
    port map (
      ADR1 => midi_no(5),
      ADR2 => midi_no(0),
      ADR0 => midi_no(2),
      ADR3 => midi_no(4),
      ADR4 => midi_no(1),
      ADR5 => midi_no(3),
      O => temp_midi_note_player_1_N64
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT2_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => X"03FF03F31C99F63B"
    )
    port map (
      ADR5 => midi_no(5),
      ADR1 => midi_no(3),
      ADR3 => midi_no(2),
      ADR4 => midi_no(1),
      ADR2 => midi_no(0),
      ADR0 => midi_no(4),
      O => temp_midi_note_player_1_N65
    );
  temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT1 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y27"
    )
    port map (
      IA => temp_midi_note_player_1_N66,
      IB => temp_midi_note_player_1_N67,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_0_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT1_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"A2C5FD5C04F404F4"
    )
    port map (
      ADR0 => midi_no(2),
      ADR4 => midi_no(4),
      ADR2 => midi_no(1),
      ADR3 => midi_no(0),
      ADR1 => midi_no(3),
      ADR5 => midi_no(5),
      O => temp_midi_note_player_1_N66
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT1_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"FFA51D65F05FC86C"
    )
    port map (
      ADR4 => midi_no(5),
      ADR1 => midi_no(4),
      ADR5 => midi_no(3),
      ADR2 => midi_no(1),
      ADR0 => midi_no(0),
      ADR3 => midi_no(2),
      O => temp_midi_note_player_1_N67
    );
  lut2409_77_lut2409_77_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_3_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_3_0
    );
  lut2409_77_lut2409_77_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => midi_no_1_pack_14,
      O => midi_no(1)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y28"
    )
    port map (
      IA => temp_midi_note_player_1_N60,
      IB => temp_midi_note_player_1_N61,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_3_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT3_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"C922DACCF0224388"
    )
    port map (
      ADR3 => midi_no(5),
      ADR5 => midi_no(2),
      ADR2 => midi_no(4),
      ADR0 => midi_no(1),
      ADR4 => midi_no(0),
      ADR1 => midi_no(3),
      O => temp_midi_note_player_1_N60
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT3_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"FFEEAA771CF84F8C"
    )
    port map (
      ADR5 => midi_no(5),
      ADR1 => midi_no(0),
      ADR2 => midi_no(4),
      ADR3 => midi_no(1),
      ADR4 => midi_no(3),
      ADR0 => midi_no(2),
      O => temp_midi_note_player_1_N61
    );
  lut2409_77 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"0303030303030303"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => midi_no(0),
      ADR1 => midi_no(1),
      ADR5 => '1',
      O => lut2409_77_3174
    );
  lut442_186 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"69696969"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => lut437_182_3178,
      ADR2 => midi_no(0),
      ADR1 => midi_no(1),
      O => Q_2063_187
    );
  midi_no_1 : X_SFF
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => '0'
    )
    port map (
      CE => Q_2060_185,
      CLK => NlwBufferSignal_midi_no_1_CLK,
      I => Q_2063_187,
      O => midi_no_1_pack_14,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2410_78 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"00A8020808A8A0A8"
    )
    port map (
      ADR0 => midi_no(6),
      ADR2 => midi_no(5),
      ADR1 => midi_no(4),
      ADR4 => lut2409_77_3174,
      ADR5 => midi_no(2),
      ADR3 => midi_no(3),
      O => lut2410_78_3170
    );
  many_buttons_1_gen_buttons_b_single_button_1_pressed : X_SFF
    generic map(
      LOC => "SLICE_X14Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_b_single_button_1_pressed_CLK,
      I => lut2095_674_2489,
      O => many_buttons_1_gen_buttons_b_single_button_1_pressed_3267,
      SRST => Q_2758_663,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2095_674 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y38",
      INIT => X"0000010000000000"
    )
    port map (
      ADR5 => lut2069_660_3149,
      ADR0 => uart_top_1_uart_rx_1_data(0),
      ADR3 => uart_top_1_uart_rx_1_data(1),
      ADR4 => uart_top_1_uart_rx_1_data(2),
      ADR1 => uart_top_1_uart_rx_1_data(4),
      ADR2 => uart_top_1_uart_rx_1_data(3),
      O => lut2095_674_2489
    );
  spi_top_1_tx_fifo_full_int_spi_top_1_tx_fifo_full_int_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N39_pack_10,
      O => N39
    );
  spi_top_1_tx_fifo_n00595_SW0 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y39"
    )
    port map (
      IA => N65,
      IB => N66,
      O => N39_pack_10,
      SEL => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_1_0
    );
  spi_top_1_tx_fifo_n00595_SW0_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"FFBFFFFFFFFBFFFF"
    )
    port map (
      ADR0 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_0,
      ADR2 => spi_top_1_tx_fifo_read_addr(0),
      ADR1 => temp_midi_note_player_1_audio_freq_counter_done_3187,
      ADR4 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR3 => spi_top_1_tx_fifo_read_addr(1),
      O => N65
    );
  spi_top_1_tx_fifo_n00595_SW0_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"BFFFFFFFFBFFFFFF"
    )
    port map (
      ADR5 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_0_0,
      ADR2 => spi_top_1_tx_fifo_read_addr(0),
      ADR3 => spi_top_1_tx_fifo_read_addr(1),
      ADR4 => temp_midi_note_player_1_audio_freq_counter_done_3187,
      ADR1 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR0 => spi_top_1_tx_fifo_full_int_3119,
      O => N66
    );
  lut3855_951 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"0000820000000000"
    )
    port map (
      ADR3 => lut3854_950_0,
      ADR5 => lut3853_949_3566,
      ADR0 => lut3852_948_3269,
      ADR4 => N39,
      ADR2 => spi_top_1_tx_fifo_read_addr(7),
      ADR1 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_7_0,
      O => lut3855_951_3597
    );
  spi_top_1_tx_fifo_full_int : X_SFF
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_spi_top_1_tx_fifo_full_int_CLK,
      I => Q_3246_954,
      O => spi_top_1_tx_fifo_full_int_3119,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3857_953 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y39",
      INIT => X"A5ED00CC00CC00CC"
    )
    port map (
      ADR2 => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      ADR0 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_11_0,
      ADR4 => lut3855_951_3597,
      ADR1 => spi_top_1_tx_fifo_full_int_3119,
      ADR5 => lut3856_952_3567,
      ADR3 => spi_top_1_tx_controller_dequeue_3268,
      O => Q_3246_954
    );
  lut2434_80 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"A0A0A0A00000A000"
    )
    port map (
      ADR1 => '1',
      ADR0 => midi_no(6),
      ADR2 => midi_no(5),
      ADR5 => midi_no(3),
      ADR4 => lut2409_77_3174,
      ADR3 => midi_no(2),
      O => lut2434_80_3506
    );
  debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_CLK,
      I => Q_3315_1029,
      O => debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_Q,
      RST => GND,
      SET => GND
    );
  lut4006_1028 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"FCFFFCFFFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => spi_top_1_tx_fifo_contents_count_int(12),
      ADR2 => spi_top_1_tx_fifo_contents_count_int(11),
      ADR5 => spi_top_1_tx_fifo_contents_count_int(10),
      ADR3 => lut3974_1008_3224,
      O => Q_3315_1029
    );
  many_buttons_1_gen_buttons_k_single_button_1_toggle_int_many_buttons_1_gen_buttons_k_single_button_1_toggle_int_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3894_965_pack_12,
      O => lut3894_965_3599
    );
  many_buttons_1_gen_buttons_k_single_button_1_toggle_int : X_SFF
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_k_single_button_1_toggle_int_CLK,
      I => Q_3262_971,
      O => many_buttons_1_gen_buttons_k_single_button_1_toggle_int_3263,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3901_970 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => X"F7FFFFFF08000000"
    )
    port map (
      ADR2 => uart_top_1_uart_rx_1_data(2),
      ADR3 => uart_top_1_uart_rx_1_data(3),
      ADR0 => uart_top_1_uart_rx_1_data(1),
      ADR5 => many_buttons_1_gen_buttons_k_single_button_1_toggle_int_3263,
      ADR4 => uart_top_1_uart_rx_1_data(0),
      ADR1 => lut3894_965_3599,
      O => Q_3262_971
    );
  many_buttons_1_gen_buttons_e_single_button_1_toggle_int : X_SFF
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_e_single_button_1_toggle_int_CLK,
      I => lut3907_974_2546,
      O => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3907_974 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => X"FBFF0400FFFF0000"
    )
    port map (
      ADR3 => uart_top_1_uart_rx_1_data(2),
      ADR0 => uart_top_1_uart_rx_1_data(3),
      ADR1 => uart_top_1_uart_rx_1_data(0),
      ADR4 => many_buttons_1_gen_buttons_e_single_button_1_toggle_int_3188,
      ADR5 => lut3894_965_3599,
      ADR2 => uart_top_1_uart_rx_1_data(1),
      O => lut3907_974_2546
    );
  lut2072_662 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => X"0FFF0FFF0FFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reset_n_3126,
      ADR3 => uart_top_1_uart_rx_1_new_data_0,
      ADR5 => '1',
      O => Q_2758_663
    );
  lut3894_965 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => X"33000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => lut2069_660_3149,
      ADR1 => uart_top_1_uart_rx_1_data(4),
      ADR2 => '1',
      ADR3 => uart_top_1_uart_rx_1_new_data_0,
      O => lut3894_965_pack_12
    );
  many_buttons_1_gen_buttons_o_single_button_1_toggle_int : X_SFF
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_o_single_button_1_toggle_int_CLK,
      I => Q_3258_967,
      O => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut3895_966 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y38",
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      ADR0 => uart_top_1_uart_rx_1_data(3),
      ADR4 => uart_top_1_uart_rx_1_data(2),
      ADR1 => uart_top_1_uart_rx_1_data(1),
      ADR5 => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      ADR3 => uart_top_1_uart_rx_1_data(0),
      ADR2 => lut3894_965_3599,
      O => Q_3258_967
    );
  temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y28"
    )
    port map (
      IA => temp_midi_note_player_1_N62,
      IB => temp_midi_note_player_1_N63,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_4_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT4_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"CF53930B1FE303DB"
    )
    port map (
      ADR5 => midi_no(4),
      ADR1 => midi_no(3),
      ADR0 => midi_no(2),
      ADR3 => midi_no(0),
      ADR4 => midi_no(1),
      ADR2 => midi_no(5),
      O => temp_midi_note_player_1_N62
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT4_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"FBF1BAFB5A44FBE1"
    )
    port map (
      ADR0 => midi_no(5),
      ADR1 => midi_no(4),
      ADR5 => midi_no(3),
      ADR4 => midi_no(1),
      ADR2 => midi_no(0),
      ADR3 => midi_no(2),
      O => temp_midi_note_player_1_N63
    );
  temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT7 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y29"
    )
    port map (
      IA => temp_midi_note_player_1_N68,
      IB => temp_midi_note_player_1_N69,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_7_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT7_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"E464640C2C2C2C4C"
    )
    port map (
      ADR1 => midi_no(5),
      ADR5 => midi_no(4),
      ADR0 => midi_no(2),
      ADR3 => midi_no(0),
      ADR4 => midi_no(1),
      ADR2 => midi_no(3),
      O => temp_midi_note_player_1_N68
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT7_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"AFA091E6AFFA4035"
    )
    port map (
      ADR4 => midi_no(5),
      ADR1 => midi_no(4),
      ADR0 => midi_no(3),
      ADR2 => midi_no(2),
      ADR5 => midi_no(1),
      ADR3 => midi_no(0),
      O => temp_midi_note_player_1_N69
    );
  temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT9 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y30"
    )
    port map (
      IA => temp_midi_note_player_1_N54,
      IB => temp_midi_note_player_1_N55,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_9_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT9_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"AA880000A8880000"
    )
    port map (
      ADR4 => midi_no(5),
      ADR0 => midi_no(4),
      ADR3 => midi_no(2),
      ADR5 => midi_no(1),
      ADR2 => midi_no(0),
      ADR1 => midi_no(3),
      O => temp_midi_note_player_1_N54
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT9_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"11A355B011574421"
    )
    port map (
      ADR0 => midi_no(0),
      ADR3 => midi_no(5),
      ADR4 => midi_no(3),
      ADR5 => midi_no(1),
      ADR1 => midi_no(2),
      ADR2 => midi_no(4),
      O => temp_midi_note_player_1_N55
    );
  lut2396_75_lut2396_75_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_8_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_8_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT8 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y31"
    )
    port map (
      IA => temp_midi_note_player_1_N52,
      IB => temp_midi_note_player_1_N53,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_8_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT8_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"AFAE507000000000"
    )
    port map (
      ADR5 => midi_no(5),
      ADR4 => midi_no(3),
      ADR2 => midi_no(4),
      ADR3 => midi_no(1),
      ADR1 => midi_no(0),
      ADR0 => midi_no(2),
      O => temp_midi_note_player_1_N52
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT8_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"4712746600463211"
    )
    port map (
      ADR1 => midi_no(5),
      ADR4 => midi_no(0),
      ADR2 => midi_no(4),
      ADR0 => midi_no(2),
      ADR3 => midi_no(3),
      ADR5 => midi_no(1),
      O => temp_midi_note_player_1_N53
    );
  lut2396_75 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"41A9C2AA4157C2FE"
    )
    port map (
      ADR0 => midi_no(2),
      ADR3 => midi_no(5),
      ADR5 => midi_no(4),
      ADR1 => midi_no(1),
      ADR2 => midi_no(0),
      ADR4 => midi_no(3),
      O => lut2396_75_3503
    );
  lut3853_949 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => X"8200008241000041"
    )
    port map (
      ADR3 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_4_0,
      ADR4 => spi_top_1_tx_fifo_read_addr(4),
      ADR1 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_3_0,
      ADR2 => spi_top_1_tx_fifo_read_addr(3),
      ADR5 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_2_0,
      ADR0 => spi_top_1_tx_fifo_read_addr(2),
      O => lut3853_949_3566
    );
  lut2422_79 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"A800A808A0A000A0"
    )
    port map (
      ADR0 => midi_no(6),
      ADR2 => midi_no(5),
      ADR3 => midi_no(2),
      ADR4 => lut2409_77_3174,
      ADR5 => midi_no(3),
      ADR1 => midi_no(4),
      O => lut2422_79_3505
    );
  midi_no_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_midi_no_6_CLK,
      I => Q_3243_945,
      O => midi_no(6),
      RST => GND,
      SET => GND
    );
  lut3726_944 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"BEFF41FFBFFF00FF"
    )
    port map (
      ADR3 => ctrl_reset_n_3126,
      ADR2 => midi_no(5),
      ADR1 => lut437_182_3178,
      ADR4 => midi_no(6),
      ADR5 => Q_2060_185,
      ADR0 => lut460_199_3534,
      O => Q_3243_945
    );
  lut439_184 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FFFFFFFFF0C0F0E0"
    )
    port map (
      ADR5 => lut437_182_3178,
      ADR1 => midi_no(6),
      ADR3 => midi_no(5),
      ADR4 => lut438_183_3569,
      ADR0 => midi_no(4),
      ADR2 => many_buttons_1_gen_buttons_j_single_button_1_pressed_3532,
      O => Q_2060_185
    );
  midi_no_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_midi_no_4_CLK,
      I => lut3720_941_2677,
      O => midi_no(4),
      SET => GND,
      RST => GND
    );
  lut3720_941 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"CCCCFF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => ctrl_reset_n_3126,
      ADR3 => midi_no(4),
      ADR4 => Q_2060_185,
      ADR1 => lut3719_940_3570,
      O => lut3720_941_2677
    );
  lut437_182 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"1300FF00FF00FF00"
    )
    port map (
      ADR3 => many_buttons_1_gen_buttons_u_single_button_1_pressed_3155,
      ADR1 => midi_no(4),
      ADR0 => midi_no(2),
      ADR2 => midi_no(3),
      ADR4 => midi_no(5),
      ADR5 => midi_no(6),
      O => lut437_182_3178
    );
  lut3719_940 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"6CCCCCCCCCCCCCC9"
    )
    port map (
      ADR1 => midi_no(4),
      ADR0 => midi_no(0),
      ADR4 => midi_no(1),
      ADR3 => midi_no(2),
      ADR2 => midi_no(3),
      ADR5 => lut437_182_3178,
      O => lut3719_940_3570
    );
  debug_light_generator_1_ws2812_data_17_g_3 : X_SFF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_debug_light_generator_1_ws2812_data_17_g_3_CLK,
      I => NlwBufferSignal_debug_light_generator_1_ws2812_data_17_g_3_IN,
      O => debug_light_generator_1_ws2812_data_17_g_3_Q,
      SRST => many_buttons_1_gen_buttons_o_single_button_1_toggle_int_3200,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  many_buttons_1_gen_buttons_g_single_button_1_pressed_many_buttons_1_gen_buttons_g_single_button_1_pressed_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3854_950_2711,
      O => lut3854_950_0
    );
  many_buttons_1_gen_buttons_g_single_button_1_pressed : X_SFF
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_g_single_button_1_pressed_CLK,
      I => lut2089_671_2702,
      O => many_buttons_1_gen_buttons_g_single_button_1_pressed_3262,
      SRST => Q_2758_663,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2089_671 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"0000000020000000"
    )
    port map (
      ADR0 => uart_top_1_uart_rx_1_data(1),
      ADR2 => uart_top_1_uart_rx_1_data(0),
      ADR5 => uart_top_1_uart_rx_1_data(4),
      ADR4 => uart_top_1_uart_rx_1_data(2),
      ADR3 => lut2069_660_3149,
      ADR1 => uart_top_1_uart_rx_1_data(3),
      O => lut2089_671_2702
    );
  lut3852_948 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"9999999999999999"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => spi_top_1_tx_fifo_read_addr(5),
      ADR1 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_5_0,
      ADR5 => '1',
      O => lut3852_948_3269
    );
  lut3854_950 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y38",
      INIT => X"F0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR2 => spi_top_1_tx_fifo_read_addr(6),
      ADR4 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_6_0,
      ADR3 => '1',
      ADR1 => '1',
      O => lut3854_950_2711
    );
  lut3856_952 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y39",
      INIT => X"8040201008040201"
    )
    port map (
      ADR5 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_10_0,
      ADR2 => spi_top_1_tx_fifo_read_addr(10),
      ADR1 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_9_0,
      ADR4 => spi_top_1_tx_fifo_read_addr(9),
      ADR3 => spi_top_1_tx_fifo_next_write_addr_11_GND_45_o_add_10_OUT_8_0,
      ADR0 => spi_top_1_tx_fifo_read_addr(8),
      O => lut3856_952_3567
    );
  many_buttons_1_gen_buttons_u_single_button_1_pressed_many_buttons_1_gen_buttons_u_single_button_1_pressed_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut2657_729_2727,
      O => lut2657_729_0
    );
  lut2069_660 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"4444000044440000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_data(5),
      ADR0 => uart_top_1_uart_rx_1_data(7),
      ADR4 => uart_top_1_uart_rx_1_data(6),
      ADR5 => '1',
      O => lut2069_660_3149
    );
  lut2657_729 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"F000F000"
    )
    port map (
      ADR2 => temp_midi_note_player_1_audio_freq_counter(3),
      ADR3 => temp_midi_note_player_1_audio_freq_counter(2),
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      O => lut2657_729_2727
    );
  many_buttons_1_gen_buttons_u_single_button_1_pressed : X_SFF
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_u_single_button_1_pressed_CLK,
      I => lut2070_661_2734,
      O => many_buttons_1_gen_buttons_u_single_button_1_pressed_3155,
      SRST => Q_2758_663,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2070_661 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y40",
      INIT => X"0000000000800000"
    )
    port map (
      ADR4 => lut2069_660_3149,
      ADR0 => uart_top_1_uart_rx_1_data(0),
      ADR3 => uart_top_1_uart_rx_1_data(1),
      ADR1 => uart_top_1_uart_rx_1_data(2),
      ADR2 => uart_top_1_uart_rx_1_data(4),
      ADR5 => uart_top_1_uart_rx_1_data(3),
      O => lut2070_661_2734
    );
  lut2658_730 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y44",
      INIT => X"CCC80000CC000000"
    )
    port map (
      ADR1 => temp_midi_note_player_1_audio_freq_counter(5),
      ADR4 => temp_midi_note_player_1_audio_freq_counter(6),
      ADR5 => lut2657_729_0,
      ADR2 => temp_midi_note_player_1_audio_freq_counter(0),
      ADR0 => temp_midi_note_player_1_audio_freq_counter(1),
      ADR3 => temp_midi_note_player_1_audio_freq_counter(4),
      O => lut2658_730_3600
    );
  temp_midi_note_player_1_audio_freq_counter_done : X_FF
    generic map(
      LOC => "SLICE_X17Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_done_CLK,
      I => lut2659_731_3464,
      O => temp_midi_note_player_1_audio_freq_counter_done_3187,
      RST => GND,
      SET => GND
    );
  lut2659_731 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y44",
      INIT => X"AAAAAAAAAAAAAAA0"
    )
    port map (
      ADR1 => '1',
      ADR0 => temp_midi_note_player_1_Mcount_audio_freq_counter_xor_10_rt,
      ADR3 => temp_midi_note_player_1_audio_freq_counter(9),
      ADR2 => temp_midi_note_player_1_audio_freq_counter(8),
      ADR5 => lut2658_730_3600,
      ADR4 => temp_midi_note_player_1_audio_freq_counter(7),
      O => lut2659_731_3464
    );
  lut438_183_lut438_183_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_1_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_1_0
    );
  lut438_183_lut438_183_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => midi_no_5_pack_17,
      O => midi_no(5)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT11 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y28"
    )
    port map (
      IA => temp_midi_note_player_1_N58,
      IB => temp_midi_note_player_1_N59,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_1_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT11_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => X"7CCC44F37FF7B0F7"
    )
    port map (
      ADR5 => midi_no(1),
      ADR1 => midi_no(5),
      ADR3 => midi_no(3),
      ADR2 => midi_no(2),
      ADR4 => midi_no(0),
      ADR0 => midi_no(4),
      O => temp_midi_note_player_1_N58
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT11_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => X"330348FE333C8B7C"
    )
    port map (
      ADR4 => midi_no(5),
      ADR1 => midi_no(2),
      ADR0 => midi_no(4),
      ADR2 => midi_no(3),
      ADR3 => midi_no(0),
      ADR5 => midi_no(1),
      O => temp_midi_note_player_1_N59
    );
  lut438_183 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => X"0303333303033333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => midi_no(3),
      ADR2 => midi_no(2),
      ADR4 => midi_no(1),
      ADR5 => '1',
      O => lut438_183_3569
    );
  lut461_200 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => X"AA55AA55"
    )
    port map (
      ADR0 => midi_no(5),
      ADR3 => lut460_199_3534,
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => '1',
      O => Q_2078_201
    );
  midi_no_5 : X_SFF
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => '0'
    )
    port map (
      CE => Q_2060_185,
      CLK => NlwBufferSignal_midi_no_5_CLK,
      I => Q_2078_201,
      O => midi_no_5_pack_17,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut460_199 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y28",
      INIT => X"7FFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => midi_no(0),
      ADR1 => midi_no(1),
      ADR3 => midi_no(2),
      ADR5 => midi_no(3),
      ADR0 => midi_no(4),
      ADR2 => lut437_182_3178,
      O => lut460_199_3534
    );
  midi_no_2_midi_no_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_5_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_5_0
    );
  midi_no_2_midi_no_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => midi_no_3_pack_13,
      O => midi_no(3)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT5 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y29"
    )
    port map (
      IA => temp_midi_note_player_1_N56,
      IB => temp_midi_note_player_1_N57,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_5_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT5_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"3C3D922600AA22AA"
    )
    port map (
      ADR5 => midi_no(5),
      ADR1 => midi_no(0),
      ADR2 => midi_no(4),
      ADR3 => midi_no(2),
      ADR0 => midi_no(3),
      ADR4 => midi_no(1),
      O => temp_midi_note_player_1_N56
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT5_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"22F321C232E030E2"
    )
    port map (
      ADR1 => midi_no(5),
      ADR0 => midi_no(4),
      ADR3 => midi_no(3),
      ADR2 => midi_no(0),
      ADR4 => midi_no(1),
      ADR5 => midi_no(2),
      O => temp_midi_note_player_1_N57
    );
  midi_no_2 : X_SFF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '1'
    )
    port map (
      CE => Q_2060_185,
      CLK => NlwBufferSignal_midi_no_2_CLK,
      I => lut448_191_2812,
      O => midi_no(2),
      SSET => Q_2055_177,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  lut448_191 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"3FFCC0033FFCC003"
    )
    port map (
      ADR0 => '1',
      ADR1 => midi_no(0),
      ADR3 => midi_no(1),
      ADR4 => midi_no(2),
      ADR2 => lut437_182_3178,
      ADR5 => '1',
      O => lut448_191_2812
    );
  lut454_195 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"6AAAAAA9"
    )
    port map (
      ADR0 => midi_no(3),
      ADR1 => midi_no(0),
      ADR3 => midi_no(1),
      ADR4 => midi_no(2),
      ADR2 => lut437_182_3178,
      O => lut454_195_2813
    );
  midi_no_3 : X_SFF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '0'
    )
    port map (
      CE => Q_2060_185,
      CLK => NlwBufferSignal_midi_no_3_CLK,
      I => lut454_195_2813,
      O => midi_no_3_pack_13,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  midi_no_0 : X_SFF
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => '1'
    )
    port map (
      CE => Q_2060_185,
      CLK => NlwBufferSignal_midi_no_0_CLK,
      I => Q_2058_179,
      O => midi_no(0),
      SSET => Q_2055_177,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Q_2058_179_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => midi_no(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Q_2058_179
    );
  temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_Q,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_0
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT6 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y30"
    )
    port map (
      IA => temp_midi_note_player_1_N70,
      IB => temp_midi_note_player_1_N71,
      O => temp_midi_note_player_1_midi_no_6_X_49_o_wide_mux_4_OUT_6_Q,
      SEL => midi_no(6)
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT6_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"4CB3F7B3433F7F33"
    )
    port map (
      ADR3 => midi_no(2),
      ADR4 => midi_no(3),
      ADR0 => midi_no(4),
      ADR5 => midi_no(1),
      ADR2 => midi_no(0),
      ADR1 => midi_no(5),
      O => temp_midi_note_player_1_N70
    );
  temp_midi_note_player_1_Mram_midi_no_6_X_49_o_wide_mux_4_OUT6_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"64FD45CF63A45087"
    )
    port map (
      ADR0 => midi_no(2),
      ADR1 => midi_no(5),
      ADR2 => midi_no(0),
      ADR3 => midi_no(3),
      ADR5 => midi_no(1),
      ADR4 => midi_no(4),
      O => temp_midi_note_player_1_N71
    );
  many_buttons_1_gen_buttons_r_single_button_1_pressed : X_SFF
    generic map(
      LOC => "SLICE_X19Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_r_single_button_1_pressed_CLK,
      I => lut2077_665_2842,
      O => many_buttons_1_gen_buttons_r_single_button_1_pressed_3238,
      SRST => Q_2758_663,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2077_665 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y38",
      INIT => X"0000000000200000"
    )
    port map (
      ADR4 => lut2069_660_3149,
      ADR3 => uart_top_1_uart_rx_1_data(0),
      ADR0 => uart_top_1_uart_rx_1_data(1),
      ADR5 => uart_top_1_uart_rx_1_data(2),
      ADR2 => uart_top_1_uart_rx_1_data(4),
      ADR1 => uart_top_1_uart_rx_1_data(3),
      O => lut2077_665_2842
    );
  many_buttons_1_gen_buttons_j_single_button_1_pressed : X_SFF
    generic map(
      LOC => "SLICE_X19Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_many_buttons_1_gen_buttons_j_single_button_1_pressed_CLK,
      I => lut2083_668_2851,
      O => many_buttons_1_gen_buttons_j_single_button_1_pressed_3532,
      SRST => Q_2758_663,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2083_668 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y38",
      INIT => X"0000000000000800"
    )
    port map (
      ADR3 => lut2069_660_3149,
      ADR4 => uart_top_1_uart_rx_1_data(0),
      ADR0 => uart_top_1_uart_rx_1_data(3),
      ADR2 => uart_top_1_uart_rx_1_data(2),
      ADR1 => uart_top_1_uart_rx_1_data(1),
      ADR5 => uart_top_1_uart_rx_1_data(4),
      O => lut2083_668_2851
    );
  uart_top_1_uart_tx_1_bit_index_3_uart_top_1_uart_tx_1_bit_index_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7_2861,
      O => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7_0
    );
  uart_top_1_uart_tx_1_bit_index_3_uart_top_1_uart_tx_1_bit_index_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_bit_index_2_pack_11,
      O => uart_top_1_uart_tx_1_bit_index(2)
    );
  uart_top_1_uart_tx_1_bit_index_3_uart_top_1_uart_tx_1_bit_index_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_bit_index_0_pack_9,
      O => uart_top_1_uart_tx_1_bit_index(0)
    );
  uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y35"
    )
    port map (
      IA => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_7_2862,
      IB => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_6_2871,
      O => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7_2861,
      SEL => uart_top_1_uart_tx_1_bit_index(2)
    );
  uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_7 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"F3F38888C0C08888"
    )
    port map (
      ADR3 => '1',
      ADR1 => uart_top_1_uart_tx_1_bit_index(1),
      ADR4 => uart_top_1_uart_tx_1_bit_index(0),
      ADR0 => uart_top_1_uart_tx_1_uart_data_2_0,
      ADR2 => uart_top_1_uart_tx_1_uart_data(3),
      ADR5 => uart_top_1_uart_tx_1_uart_data_1_0,
      O => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_7_2862
    );
  uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_6 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"EEEEF5A04444F5A0"
    )
    port map (
      ADR4 => uart_top_1_uart_tx_1_bit_index(1),
      ADR0 => uart_top_1_uart_tx_1_bit_index(0),
      ADR1 => uart_top_1_uart_tx_1_uart_data(6),
      ADR5 => uart_top_1_uart_tx_1_uart_data_7_0,
      ADR2 => uart_top_1_uart_tx_1_uart_data_5_0,
      ADR3 => uart_top_1_uart_tx_1_uart_data(4),
      O => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_6_2871
    );
  uart_top_1_uart_tx_1_bit_index_3 : X_SFF
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2630_565,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_3_CLK,
      I => lut1773_562_2879,
      O => uart_top_1_uart_tx_1_bit_index(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1773_562 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"70F0800070F08000"
    )
    port map (
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR0 => uart_top_1_uart_tx_1_bit_index(2),
      ADR1 => uart_top_1_uart_tx_1_bit_index(1),
      ADR4 => uart_top_1_uart_tx_1_bit_index(3),
      ADR3 => uart_top_1_uart_tx_1_bit_index(0),
      ADR5 => '1',
      O => lut1773_562_2879
    );
  lut1779_566 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"60A060A0"
    )
    port map (
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR0 => uart_top_1_uart_tx_1_bit_index(2),
      ADR1 => uart_top_1_uart_tx_1_bit_index(1),
      ADR4 => '1',
      ADR3 => uart_top_1_uart_tx_1_bit_index(0),
      O => lut1779_566_2880
    );
  uart_top_1_uart_tx_1_bit_index_2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2630_565,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_2_CLK,
      I => lut1779_566_2880,
      O => uart_top_1_uart_tx_1_bit_index_2_pack_11,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_bit_index_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2630_565,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_1_CLK,
      I => lut1785_570_2888,
      O => uart_top_1_uart_tx_1_bit_index(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1785_570 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"5500AA005500AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_bit_index(1),
      ADR0 => uart_top_1_uart_tx_1_bit_index(0),
      ADR5 => '1',
      O => lut1785_570_2888
    );
  lut1791_574 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"55005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR2 => '1',
      ADR0 => uart_top_1_uart_tx_1_bit_index(0),
      O => lut1791_574_2889
    );
  uart_top_1_uart_tx_1_bit_index_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2630_565,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_0_CLK,
      I => lut1791_574_2889,
      O => uart_top_1_uart_tx_1_bit_index_0_pack_9,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_state_FSM_FFd2_uart_top_1_uart_tx_1_state_FSM_FFd2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_2726_631,
      O => Q_2726_631_0
    );
  Q_2630_565_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      O => Q_2630_565
    );
  uart_top_1_uart_tx_1_GND_14_o_GND_14_o_OR_8_o_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      O => uart_top_1_uart_tx_1_GND_14_o_GND_14_o_OR_8_o_inv
    );
  uart_top_1_uart_tx_1_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_state_FSM_FFd2_CLK,
      I => lut2009_622_2902,
      O => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2009_622 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"C0C0C0C0C040C0C0"
    )
    port map (
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR2 => uart_top_1_uart_tx_1_tx_count_done_3250,
      ADR5 => uart_top_1_uart_tx_1_bit_index(1),
      ADR0 => uart_top_1_uart_tx_1_bit_index(3),
      ADR3 => uart_top_1_uart_tx_1_bit_index(2),
      ADR4 => uart_top_1_uart_tx_1_bit_index(0),
      O => lut2009_622_2902
    );
  uart_top_1_uart_tx_1_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_state_FSM_FFd1_CLK,
      I => lut2003_619_2910,
      O => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut2003_619 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"DDCCFFEEDDCCFFEE"
    )
    port map (
      ADR2 => '1',
      ADR3 => uart_top_1_uart_rx_1_new_data_0,
      ADR4 => uart_top_1_uart_tx_1_tx_count_done_3250,
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR5 => '1',
      O => lut2003_619_2910
    );
  lut2024_630 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"1F1F1F1F"
    )
    port map (
      ADR2 => ctrl_reset_n_3126,
      ADR4 => '1',
      ADR3 => '1',
      ADR0 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR1 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      O => Q_2726_631
    );
  uart_top_1_uart_rx_1_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_3_CLK,
      I => lut1734_543_2937,
      O => uart_top_1_uart_rx_1_data(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1734_543 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => X"FFFBFFFB00400040"
    )
    port map (
      ADR4 => '1',
      ADR1 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR3 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR5 => uart_top_1_uart_rx_1_data(3),
      ADR0 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR2 => pi_to_fpga_pin_IBUF_0,
      O => lut1734_543_2937
    );
  uart_top_1_uart_rx_1_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_2_CLK,
      I => lut1740_546_2946,
      O => uart_top_1_uart_rx_1_data(2),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1740_546 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => X"FFFF0000AFFFA000"
    )
    port map (
      ADR1 => '1',
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR5 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR4 => uart_top_1_uart_rx_1_data(2),
      ADR2 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR0 => pi_to_fpga_pin_IBUF_0,
      O => lut1740_546_2946
    );
  uart_top_1_uart_rx_1_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_1_CLK,
      I => lut1746_549_2922,
      O => uart_top_1_uart_rx_1_data(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1746_549 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => X"FFFC000CFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR4 => uart_top_1_uart_rx_1_data(1),
      ADR2 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR1 => pi_to_fpga_pin_IBUF_0,
      O => lut1746_549_2922
    );
  uart_top_1_uart_rx_1_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_0_CLK,
      I => lut1752_552_2929,
      O => uart_top_1_uart_rx_1_data(0),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1752_552 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y40",
      INIT => X"FFFFFCFF00003000"
    )
    port map (
      ADR0 => '1',
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR1 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR5 => uart_top_1_uart_rx_1_data(0),
      ADR4 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR2 => pi_to_fpga_pin_IBUF_0,
      O => lut1752_552_2929
    );
  uart_top_1_uart_rx_1_bit_counter_3_uart_top_1_uart_rx_1_bit_counter_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_bit_counter_2_pack_6,
      O => uart_top_1_uart_rx_1_bit_counter(2)
    );
  uart_top_1_uart_rx_1_bit_counter_3_uart_top_1_uart_rx_1_bit_counter_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_bit_counter_0_pack_4,
      O => uart_top_1_uart_rx_1_bit_counter(0)
    );
  uart_top_1_uart_rx_1_bit_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => '0'
    )
    port map (
      CE => Q_2550_514,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_3_CLK,
      I => lut1675_510_2960,
      O => uart_top_1_uart_rx_1_bit_counter(3),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1675_510 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => X"070F0800070F0800"
    )
    port map (
      ADR2 => uart_top_1_uart_rx_1_check_framing_error_3134,
      ADR0 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR1 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR4 => uart_top_1_uart_rx_1_bit_counter(3),
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR5 => '1',
      O => lut1675_510_2960
    );
  lut1682_515 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => X"060A060A"
    )
    port map (
      ADR2 => uart_top_1_uart_rx_1_check_framing_error_3134,
      ADR0 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR1 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR4 => '1',
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      O => lut1682_515_2961
    );
  uart_top_1_uart_rx_1_bit_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => '0'
    )
    port map (
      CE => Q_2550_514,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_2_CLK,
      I => lut1682_515_2961,
      O => uart_top_1_uart_rx_1_bit_counter_2_pack_6,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_rx_1_bit_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => '0'
    )
    port map (
      CE => Q_2550_514,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_1_CLK,
      I => lut1688_519_2950,
      O => uart_top_1_uart_rx_1_bit_counter(1),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1688_519 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => X"0000666600006666"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_check_framing_error_3134,
      ADR1 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR0 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR5 => '1',
      O => lut1688_519_2950
    );
  lut1694_523 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => X"00005555"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => uart_top_1_uart_rx_1_check_framing_error_3134,
      ADR3 => '1',
      ADR0 => uart_top_1_uart_rx_1_bit_counter(0),
      O => lut1694_523_2951
    );
  uart_top_1_uart_rx_1_bit_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y42",
      INIT => '0'
    )
    port map (
      CE => Q_2550_514,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_0_CLK,
      I => lut1694_523_2951,
      O => uart_top_1_uart_rx_1_bit_counter_0_pack_4,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  uart_top_1_uart_tx_1_uart_data_8_uart_top_1_uart_tx_1_uart_data_8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_uart_data(7),
      O => uart_top_1_uart_tx_1_uart_data_7_0
    );
  uart_top_1_uart_tx_1_uart_data_8_uart_top_1_uart_tx_1_uart_data_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_uart_data(5),
      O => uart_top_1_uart_tx_1_uart_data_5_0
    );
  uart_top_1_uart_tx_1_uart_data_8_uart_top_1_uart_tx_1_uart_data_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_uart_data(1),
      O => uart_top_1_uart_tx_1_uart_data_1_0
    );
  uart_top_1_uart_tx_1_uart_data_8_uart_top_1_uart_tx_1_uart_data_8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_uart_data(2),
      O => uart_top_1_uart_tx_1_uart_data_2_0
    );
  uart_top_1_uart_tx_1_uart_data_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_8_CLK,
      I => lut2020_627_2981,
      O => uart_top_1_uart_tx_1_uart_data(8),
      RST => GND,
      SET => GND
    );
  lut2020_627 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => uart_top_1_uart_rx_1_data(7),
      ADR2 => ctrl_reset_n_3126,
      ADR5 => '1',
      O => lut2020_627_2981
    );
  lut2027_632 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => uart_top_1_uart_rx_1_data(6),
      ADR3 => '1',
      ADR2 => ctrl_reset_n_3126,
      O => lut2027_632_2982
    );
  uart_top_1_uart_tx_1_uart_data_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_7_CLK,
      I => lut2027_632_2982,
      O => uart_top_1_uart_tx_1_uart_data(7),
      RST => GND,
      SET => GND
    );
  uart_top_1_uart_tx_1_uart_data_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_6_CLK,
      I => lut2033_636_2990,
      O => uart_top_1_uart_tx_1_uart_data(6),
      RST => GND,
      SET => GND
    );
  lut2033_636 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => uart_top_1_uart_rx_1_data(5),
      ADR3 => ctrl_reset_n_3126,
      ADR5 => '1',
      O => lut2033_636_2990
    );
  lut2039_640 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => uart_top_1_uart_rx_1_data(4),
      ADR2 => '1',
      ADR3 => ctrl_reset_n_3126,
      O => lut2039_640_2991
    );
  uart_top_1_uart_tx_1_uart_data_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_5_CLK,
      I => lut2039_640_2991,
      O => uart_top_1_uart_tx_1_uart_data(5),
      RST => GND,
      SET => GND
    );
  uart_top_1_uart_tx_1_uart_data_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_4_CLK,
      I => lut2045_644_2997,
      O => uart_top_1_uart_tx_1_uart_data(4),
      RST => GND,
      SET => GND
    );
  lut2045_644 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"F000F000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => uart_top_1_uart_rx_1_data(3),
      ADR2 => ctrl_reset_n_3126,
      ADR5 => '1',
      O => lut2045_644_2997
    );
  lut2063_656 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => uart_top_1_uart_rx_1_data(0),
      ADR3 => '1',
      ADR2 => ctrl_reset_n_3126,
      O => lut2063_656_2998
    );
  uart_top_1_uart_tx_1_uart_data_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_1_CLK,
      I => lut2063_656_2998,
      O => uart_top_1_uart_tx_1_uart_data(1),
      RST => GND,
      SET => GND
    );
  uart_top_1_uart_tx_1_uart_data_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_3_CLK,
      I => lut2051_648_2974,
      O => uart_top_1_uart_tx_1_uart_data(3),
      RST => GND,
      SET => GND
    );
  lut2051_648 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => uart_top_1_uart_rx_1_data(2),
      ADR4 => ctrl_reset_n_3126,
      ADR5 => '1',
      O => lut2051_648_2974
    );
  lut2057_652 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => uart_top_1_uart_rx_1_data(1),
      ADR2 => '1',
      ADR4 => ctrl_reset_n_3126,
      O => lut2057_652_2975
    );
  uart_top_1_uart_tx_1_uart_data_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => '0'
    )
    port map (
      CE => Q_2726_631_0,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_2_CLK,
      I => lut2057_652_2975,
      O => uart_top_1_uart_tx_1_uart_data(2),
      RST => GND,
      SET => GND
    );
  uart_top_1_uart_rx_1_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_7_CLK,
      I => lut1710_531_3019,
      O => uart_top_1_uart_rx_1_data(7),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1710_531 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"FFFFFFFA00050000"
    )
    port map (
      ADR1 => '1',
      ADR0 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR2 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR5 => uart_top_1_uart_rx_1_data(7),
      ADR3 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR4 => pi_to_fpga_pin_IBUF_0,
      O => lut1710_531_3019
    );
  uart_top_1_uart_rx_1_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_6_CLK,
      I => lut1716_534_3028,
      O => uart_top_1_uart_rx_1_data(6),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1716_534 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"F5FFA000FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR3 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR4 => uart_top_1_uart_rx_1_data(6),
      ADR0 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR2 => pi_to_fpga_pin_IBUF_0,
      O => lut1716_534_3028
    );
  uart_top_1_uart_rx_1_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_5_CLK,
      I => lut1722_537_3004,
      O => uart_top_1_uart_rx_1_data(5),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1722_537 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"FFAF00A0FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR2 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR4 => uart_top_1_uart_rx_1_data(5),
      ADR5 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR0 => pi_to_fpga_pin_IBUF_0,
      O => lut1722_537_3004
    );
  uart_top_1_uart_rx_1_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => '0'
    )
    port map (
      CE => uart_top_1_uart_rx_1_sample_data_3533,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_data_4_CLK,
      I => lut1728_540_3011,
      O => uart_top_1_uart_rx_1_data(4),
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1728_540 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y40",
      INIT => X"EFFFEFFF40004000"
    )
    port map (
      ADR4 => '1',
      ADR3 => uart_top_1_uart_rx_1_bit_counter(0),
      ADR0 => uart_top_1_uart_rx_1_bit_counter(1),
      ADR5 => uart_top_1_uart_rx_1_data(4),
      ADR2 => uart_top_1_uart_rx_1_bit_counter(2),
      ADR1 => pi_to_fpga_pin_IBUF_0,
      O => lut1728_540_3011
    );
  Q_2550_514_2550_514_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_new_data_3038,
      O => uart_top_1_uart_rx_1_new_data_0
    );
  lut1679_513 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y42",
      INIT => X"FFFFFF00FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => uart_top_1_uart_rx_1_increment_bit_counter_3168,
      ADR3 => uart_top_1_uart_rx_1_check_framing_error_3134,
      ADR5 => '1',
      O => Q_2550_514
    );
  lut3962_1002 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y42",
      INIT => X"C000C000"
    )
    port map (
      ADR0 => '1',
      ADR2 => ctrl_reset_n_3126,
      ADR1 => pi_to_fpga_pin_IBUF_0,
      ADR4 => '1',
      ADR3 => uart_top_1_uart_rx_1_check_framing_error_3134,
      O => lut3962_1002_3037
    );
  uart_top_1_uart_rx_1_new_data : X_FF
    generic map(
      LOC => "SLICE_X21Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_new_data_CLK,
      I => lut3962_1002_3037,
      O => uart_top_1_uart_rx_1_new_data_3038,
      RST => GND,
      SET => GND
    );
  uart_top_1_uart_rx_1_check_framing_error : X_SFF
    generic map(
      LOC => "SLICE_X21Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_rx_1_check_framing_error_CLK,
      I => NlwBufferSignal_uart_top_1_uart_rx_1_check_framing_error_IN,
      O => uart_top_1_uart_rx_1_check_framing_error_3134,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  ctrl_reset_n : X_FF
    generic map(
      LOC => "SLICE_X22Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_ctrl_reset_n_CLK,
      I => NlwBufferSignal_ctrl_reset_n_IN,
      O => ctrl_reset_n_3126,
      RST => GND,
      SET => GND
    );
  led_0_OBUF_led_0_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3913_977_3054,
      O => lut3913_977_0
    );
  led_0_1132 : X_SFF
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_led_0_CLK,
      I => Q_2054_176,
      O => led_0_OBUF_3244,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut427_175 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR0 => sw_1_IBUF_0,
      ADR1 => sw_0_IBUF_0,
      ADR4 => pb_0_IBUF_0,
      ADR3 => pb_1_IBUF_0,
      ADR5 => '1',
      O => Q_2054_176
    );
  lut3913_977 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y54",
      INIT => X"0C0C0C0C"
    )
    port map (
      ADR2 => many_buttons_1_gen_buttons_r_single_button_1_pressed_3238,
      ADR0 => '1',
      ADR1 => sw_0_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => lut3913_977_3054
    );
  lut1903_580 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => X"0000015500001155"
    )
    port map (
      ADR4 => uart_top_1_uart_tx_1_tx_count(9),
      ADR0 => uart_top_1_uart_tx_1_tx_count(8),
      ADR1 => uart_top_1_uart_tx_1_tx_count(5),
      ADR5 => uart_top_1_uart_tx_1_tx_count(4),
      ADR2 => uart_top_1_uart_tx_1_tx_count(3),
      ADR3 => uart_top_1_uart_tx_1_tx_count(6),
      O => lut1903_580_3531
    );
  uart_top_1_uart_tx_1_tx_count_done_uart_top_1_uart_tx_1_tx_count_done_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_uart_tx_pack_3,
      O => uart_top_1_uart_tx_1_uart_tx_3528
    );
  uart_top_1_uart_tx_1_tx_count_done : X_SFF
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_done_CLK,
      I => lut1904_581_3603,
      O => uart_top_1_uart_tx_1_tx_count_done_3250,
      SRST => Q_2055_177,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  lut1904_581 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => X"00000000C8CC8888"
    )
    port map (
      ADR1 => lut1897_107_3602,
      ADR5 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR4 => uart_top_1_uart_tx_1_tx_count(10),
      ADR3 => lut1903_580_3531,
      ADR2 => uart_top_1_uart_tx_1_tx_count(7),
      ADR0 => uart_top_1_uart_tx_1_tx_count(11),
      O => lut1904_581_3603
    );
  Q_2650_582_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => lut1904_581_3603,
      O => Q_2650_582
    );
  lut1897_107 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => uart_top_1_uart_tx_1_tx_count(12),
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      ADR5 => '1',
      O => lut1897_107_3602
    );
  lut3888_962 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => X"CFC0CFCF"
    )
    port map (
      ADR2 => uart_top_1_uart_tx_1_state_FSM_FFd2_3139,
      ADR3 => lut3887_961_3601,
      ADR1 => uart_top_1_uart_tx_1_uart_tx_3528,
      ADR0 => '1',
      ADR4 => uart_top_1_uart_tx_1_state_FSM_FFd1_3251,
      O => lut3888_962_3082
    );
  uart_top_1_uart_tx_1_uart_tx : X_SFF
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_uart_top_1_uart_tx_1_uart_tx_CLK,
      I => lut3888_962_3082,
      O => uart_top_1_uart_tx_1_uart_tx_pack_3,
      SSET => Q_2055_177,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  lut3887_961 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y35",
      INIT => X"FFF0FFF0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => uart_top_1_uart_tx_1_bit_index(3),
      ADR2 => uart_top_1_uart_tx_1_bit_index(0),
      ADR3 => uart_top_1_uart_tx_1_uart_data(8),
      ADR4 => uart_top_1_uart_tx_1_Mmux_bit_index_3_X_14_o_Mux_28_o_5_f7_0,
      O => lut3887_961_3601
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(8),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(10)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(9),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(11)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(10),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(12)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(13)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(0),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(1),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(2),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(4)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(3),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(5)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(4),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(6)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(5),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(7)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(6),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(8)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(7),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRA(9)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(8),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(10)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(9),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(11)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(10),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(12)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(13)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(0),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(1),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(2),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(4)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(3),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(5)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(4),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(6)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(5),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(7)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(6),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(8)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(7),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_ADDRB(9)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKA
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKB : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_CLKB
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(8),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(0)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(9),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(1)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(10),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(11),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_DIA(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(0)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(1)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram1_WEA(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(8),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(10)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(9),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(11)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(10),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(12)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_Madd_next_write_addr_11_GND_45_o_add_10_OUT_xor_11_rt,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(13)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(0),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(1),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(2),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(4)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(3),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(5)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(4),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(6)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(5),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(7)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(6),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(8)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(7),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRA(9)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(8),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(10)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(9),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(11)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(10),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(12)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_Madd_read_addr_11_GND_45_o_add_4_OUT_xor_11_rt,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(13)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(0),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(1),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(2),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(4)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(3),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(5)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(4),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(6)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(5),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(7)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(6),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(8)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_read_addr(7),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_ADDRB(9)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKA
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKB : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_CLKB
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(12),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(0)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(13),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(1)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(14),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => pcm_out(15),
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_DIA(3)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(0)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(1)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(2)
    );
  NlwBufferBlock_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut317_2_3184,
      O => NlwBufferSignal_spi_top_1_tx_fifo_ram_1_Mram_ram2_WEA(3)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(4),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(1)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(13),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(10)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(14),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(11)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(15),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(12)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(16),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(13)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(5),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(2)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(6),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(3)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(7),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(4)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(8),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(5)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(9),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(6)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(10),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(7)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(11),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(8)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(12),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_ADDRA(9)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_CLKA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom5_CLKA
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(4),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(1)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(13),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(10)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(14),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(11)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(15),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(12)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(16),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(13)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(5),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(2)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(6),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(3)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(7),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(4)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(8),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(5)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(9),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(6)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(10),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(7)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(11),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(8)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(12),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_ADDRA(9)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_CLKA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom6_CLKA
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(4),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(1)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(13),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(10)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(14),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(11)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(15),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(12)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(16),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(13)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(5),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(2)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(6),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(3)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(7),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(4)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(8),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(5)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(9),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(6)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(10),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(7)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(11),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(8)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(12),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_ADDRA(9)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_CLKA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom7_CLKA
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(4),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(1)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_10_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(13),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(10)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_11_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(14),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(11)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_12_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(15),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(12)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_13_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(16),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(13)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(5),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(2)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(6),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(3)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_4_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(7),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(4)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_5_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(8),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(5)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_6_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(9),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(6)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_7_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(10),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(7)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_8_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(11),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(8)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA_9_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => temp_midi_note_player_1_sine_driver_counter(12),
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_ADDRA(9)
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_CLKA : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_rom_1_Mram_sine_rom8_CLKA
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_4_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_8_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_7_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_6_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_5_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_12_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_11_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_10_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_9_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_3_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_7_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_6_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_4_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_11_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_10_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_9_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_read_addr_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_read_addr_8_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_3_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_7_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_6_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_remaining_bytes_this_msg_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_remaining_bytes_this_msg_4_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_7_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_6_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_5_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_4_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_11_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_10_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_9_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_8_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_12_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(0),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_0_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(1),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_1_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(2),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_2_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(3),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_3_DI_3_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(4),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_0_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(5),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_1_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(6),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_2_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(7),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_cy_7_DI_3_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(8),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_0_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(9),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_1_Q
    );
  NlwBufferBlock_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_next_write_addr(10),
      O => NlwBufferSignal_spi_top_1_tx_fifo_Msub_GND_45_o_GND_45_o_sub_1_OUT_11_0_xor_11_DI_2_Q
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_2_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_7_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_6_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_5_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_4_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_11_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_10_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_9_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_8_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_15_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_14_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_13_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_12_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_19_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_18_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_17_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_16_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_23_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_23_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_22_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_22_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_21_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_21_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_20_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_20_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_27_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_27_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_26_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_26_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_25_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_25_CLK
    );
  NlwBufferBlock_debug_light_generator_1_spi_tx_buffer_full_counter_24_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_spi_tx_buffer_full_counter_24_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_3_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_7_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_6_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_4_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_11_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_10_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_9_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_next_write_addr_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_next_write_addr_8_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_2_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_7_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_6_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_5_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_4_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_11_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_10_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_9_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_8_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_3_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_2_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_1_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_0_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_7_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_6_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_5_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_4_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_10_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_9_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_8_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_3_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_2_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_1_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_0_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_7_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_6_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_5_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_4_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_11_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_10_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_9_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_8_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_15_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_14_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_13_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_12_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_sine_driver_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_sine_driver_counter_16_CLK
    );
  NlwBufferBlock_miso_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_ungated_miso_3525,
      O => NlwBufferSignal_miso_OBUFT_I
    );
  NlwBufferBlock_led_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => led_0_OBUF_3244,
      O => NlwBufferSignal_led_0_OBUF_I
    );
  NlwBufferBlock_fpga_to_pi_pin_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_tx_1_uart_tx_3528,
      O => NlwBufferSignal_fpga_to_pi_pin_OBUF_I
    );
  NlwBufferBlock_light_square_data_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_data_out_0,
      O => NlwBufferSignal_light_square_data_OBUF_I
    );
  NlwBufferBlock_clk_50mhz_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_50mhz_BUFGP_BUFG_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_led_int_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_5_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_bit_index_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_4_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_done_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_done_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_bit_index_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_bit_index_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_2_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_bit_index_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_bit_index_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_bit_index_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Q_3211_908,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_bit_index_1_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_bit_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_bit_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_4_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_data_out_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_data_out_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_data_fully_latched_re_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_data_fully_latched_re_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd2_3114,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_3_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_data_fully_latched_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_data_fully_latched_d1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_2_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_max_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_max_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_max_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_counter_max_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_state_FSM_FFd5_3218,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_counter_max_0_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_6_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_3_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_1_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_7_b_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_7_b_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_7_r_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_7_r_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_7_g_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_7_g_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_led_int_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_4_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_led_int_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_led_int_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_2_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_led_int_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_current_led_int_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_current_led_int_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_8_r_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_8_r_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_8_r_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_held_spi_tx_buffer_full_3186,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_8_r_1_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_4_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_7_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_2_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_next_byte_index_int_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_next_byte_index_int_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_7_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(7),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_7_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_6_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(6),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_6_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_5_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(5),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_5_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_4_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(4),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_4_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_6_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_4_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_7_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(7),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_7_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_6_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(6),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_6_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(5),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_5_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_4_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(4),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_4_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_9_r_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_9_r_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_9_r_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_full_int_3119,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_9_r_1_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_8_g_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_8_g_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_6_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_drv_1_timer_limit_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_ws2812_drv_1_state_FSM_FFd1_3111,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_drv_1_timer_limit_6_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_9_b_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_9_b_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_3_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(3),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_3_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_2_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(2),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_2_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_1_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(1),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_1_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_0_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_latched_data_int_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_controller_tx_byte(0),
      O => NlwBufferSignal_spi_top_1_spi_tx_1_latched_data_int_0_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_7_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_dequeue_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_dequeue_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_empty_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_empty_int_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_0_r_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_r_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_0_g_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_g_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_0_b_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_b_1_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_0_b_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3277_806_3590,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_0_b_1_IN
    );
  NlwBufferBlock_debug_light_generator_1_held_spi_tx_buffer_full_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_held_spi_tx_buffer_full_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_data_fully_latched_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_data_fully_latched_int_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_ungated_miso_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_ungated_miso_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_3_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_tx_byte_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_tx_byte_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_7_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_6_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_5_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_4_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_3_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_12_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_12_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_tx_fifo_full_int_3119,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_12_IN
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_11_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_8_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_10_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_contents_count_int_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_contents_count_int_9_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_bit_index_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_2_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_data_tentatively_latched_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_data_tentatively_latched_int_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_has_been_fully_latched_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_has_been_fully_latched_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_cs_n_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d2_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_cs_n_d2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_cs_n_d1_3132,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d2_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_cs_n_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d1_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_cs_n_d1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => cs_n_IBUF_0,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_cs_n_d1_IN
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_0_g_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_5_r_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_3_r_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_3_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(3),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_3_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_2_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(2),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_2_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_1_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(1),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_1_IN
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_0_CLK
    );
  NlwBufferBlock_spi_top_1_tx_controller_read_out_data_held_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_read_out_data(0),
      O => NlwBufferSignal_spi_top_1_tx_controller_read_out_data_held_0_IN
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_state_FSM_FFd5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd5_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_state_FSM_FFd6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd6_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_state_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd4_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_sclk_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d2_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_sclk_d2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => spi_top_1_spi_tx_1_sclk_d1_3558,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d2_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_sclk_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d1_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_sclk_d1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => sclk_IBUF_0,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_sclk_d1_IN
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_bit_index_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_1_CLK
    );
  NlwBufferBlock_spi_top_1_spi_tx_1_bit_index_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_spi_tx_1_bit_index_0_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_18_g_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_18_g_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_18_g_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_2_r_0_Q,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_18_g_3_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_19_g_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_19_g_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_22_r_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_22_r_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_22_r_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_6_r_0_0,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_22_r_3_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_16_g_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_16_g_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_20_g_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_20_g_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_20_g_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_4_r_0_Q,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_20_g_3_IN
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_21_g_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_21_g_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_increment_bit_counter_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_increment_bit_counter_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_increment_bit_counter_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_state_FSM_FFd4_3219,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_increment_bit_counter_IN
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_sample_data_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_sample_data_CLK
    );
  NlwBufferBlock_midi_no_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_1_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_b_single_button_1_pressed_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_b_single_button_1_pressed_CLK
    );
  NlwBufferBlock_spi_top_1_tx_fifo_full_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_spi_top_1_tx_fifo_full_int_CLK
    );
  NlwBufferBlock_debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_k_single_button_1_toggle_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_k_single_button_1_toggle_int_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_e_single_button_1_toggle_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_e_single_button_1_toggle_int_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_o_single_button_1_toggle_int_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_o_single_button_1_toggle_int_CLK
    );
  NlwBufferBlock_midi_no_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_6_CLK
    );
  NlwBufferBlock_midi_no_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_4_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_17_g_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_17_g_3_CLK
    );
  NlwBufferBlock_debug_light_generator_1_ws2812_data_17_g_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => debug_light_generator_1_debug_contents_count_1_contents_count_debug_1_r_0_Q,
      O => NlwBufferSignal_debug_light_generator_1_ws2812_data_17_g_3_IN
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_g_single_button_1_pressed_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_g_single_button_1_pressed_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_u_single_button_1_pressed_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_u_single_button_1_pressed_CLK
    );
  NlwBufferBlock_temp_midi_note_player_1_audio_freq_counter_done_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_temp_midi_note_player_1_audio_freq_counter_done_CLK
    );
  NlwBufferBlock_midi_no_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_5_CLK
    );
  NlwBufferBlock_midi_no_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_2_CLK
    );
  NlwBufferBlock_midi_no_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_3_CLK
    );
  NlwBufferBlock_midi_no_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_midi_no_0_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_r_single_button_1_pressed_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_r_single_button_1_pressed_CLK
    );
  NlwBufferBlock_many_buttons_1_gen_buttons_j_single_button_1_pressed_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_many_buttons_1_gen_buttons_j_single_button_1_pressed_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_bit_index_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_bit_index_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_bit_index_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_bit_index_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_bit_index_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_bit_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_bit_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_bit_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_bit_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_bit_counter_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_8_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_7_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_6_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_5_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_4_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_1_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_3_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_data_2_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_7_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_6_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_5_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_data_4_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_new_data_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_new_data_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_check_framing_error_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_check_framing_error_CLK
    );
  NlwBufferBlock_uart_top_1_uart_rx_1_check_framing_error_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => uart_top_1_uart_rx_1_state_FSM_FFd1_3245,
      O => NlwBufferSignal_uart_top_1_uart_rx_1_check_framing_error_IN
    );
  NlwBufferBlock_ctrl_reset_n_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_ctrl_reset_n_CLK
    );
  NlwBufferBlock_ctrl_reset_n_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => lut3913_977_0,
      O => NlwBufferSignal_ctrl_reset_n_IN
    );
  NlwBufferBlock_led_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_led_0_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_tx_count_done_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_tx_count_done_CLK
    );
  NlwBufferBlock_uart_top_1_uart_tx_1_uart_tx_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_50mhz_BUFGP,
      O => NlwBufferSignal_uart_top_1_uart_tx_1_uart_tx_CLK
    );
  NlwBlock_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

