onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L v_vid_in_axi4s_v4_0_7 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_1 -L lib_fifo_v1_0_10 -L blk_mem_gen_v8_4_1 -L lib_bmg_v1_0_10 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_17 -L axi_vdma_v6_3_3 -L axi_lite_ipif_v3_0_4 -L v_tc_v6_1_12 -L v_axi4s_vid_out_v4_0_8 -L proc_sys_reset_v5_0_12 -L xlconstant_v1_1_3 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_15 -L axi_data_fifo_v2_1_14 -L axi_crossbar_v2_1_16 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_17 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_15 -L axis_subset_converter_v1_1_15 -L axi_protocol_converter_v2_1_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
