
call C:/Xilinx/Vivado/2017.3/bin/xelab xil_defaultlib.apatb_image_filter_top glbl -prj image_filter.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims --initfile "C:/Xilinx/Vivado/2017.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s image_filter -debug wave
call C:/Xilinx/Vivado/2017.3/bin/xsim --noieeewarnings image_filter -tclbatch image_filter.tcl

