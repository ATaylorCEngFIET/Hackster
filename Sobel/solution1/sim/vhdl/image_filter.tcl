
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_image_filter_top/AESL_inst_image_filter/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set OUTPUT_STREAM_group [add_wave_group OUTPUT_STREAM(axis) -into $coutputgroup]
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TREADY -into $OUTPUT_STREAM_group -color #ffff00 -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TVALID -into $OUTPUT_STREAM_group -color #ffff00 -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TDEST -into $OUTPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TID -into $OUTPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TLAST -into $OUTPUT_STREAM_group -color #ffff00 -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TUSER -into $OUTPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TSTRB -into $OUTPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TKEEP -into $OUTPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/OUTPUT_STREAM_TDATA -into $OUTPUT_STREAM_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set INPUT_STREAM_group [add_wave_group INPUT_STREAM(axis) -into $cinputgroup]
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TREADY -into $INPUT_STREAM_group -color #ffff00 -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TVALID -into $INPUT_STREAM_group -color #ffff00 -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TDEST -into $INPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TID -into $INPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TLAST -into $INPUT_STREAM_group -color #ffff00 -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TUSER -into $INPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TSTRB -into $INPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TKEEP -into $INPUT_STREAM_group -radix hex
add_wave /apatb_image_filter_top/AESL_inst_image_filter/INPUT_STREAM_TDATA -into $INPUT_STREAM_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_image_filter_top/AESL_inst_image_filter/ap_start -into $blocksiggroup
add_wave /apatb_image_filter_top/AESL_inst_image_filter/ap_done -into $blocksiggroup
add_wave /apatb_image_filter_top/AESL_inst_image_filter/ap_ready -into $blocksiggroup
add_wave /apatb_image_filter_top/AESL_inst_image_filter/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_image_filter_top/AESL_inst_image_filter/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_image_filter_top/AESL_inst_image_filter/ap_clk -into $clockgroup
save_wave_config image_filter.wcfg
run all
quit

