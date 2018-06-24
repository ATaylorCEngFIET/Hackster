############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cvt_colour
set_top image_filter
add_files cvt_colour/test.bmp
add_files cvt_colour/cvt_colour.hpp
add_files cvt_colour/cvt_colour.cpp
add_files -tb cvt_colour/cvt_colour_tb.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./cvt_colour/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level port -rtl vhdl -tool xsim
export_design -rtl vhdl -format ip_catalog -vendor "adiuvoengineering" -display_name "SOBEL"
