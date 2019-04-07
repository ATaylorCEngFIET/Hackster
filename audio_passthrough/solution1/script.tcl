############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project audio_passthrough
set_top audio_top
add_files audio_passthrough/audio.hpp
add_files audio_passthrough/audio.cpp
open_solution "solution1"
set_part {xc7z020clg400-3} -tool vivado
create_clock -period 20 -name default
config_export -description {Audio Pass throug} -display_name Audio_HLS -format ip_catalog -rtl vhdl -taxonomy /Audio_HLS -vendor adiuvo
#source "./audio_passthrough/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl vhdl -format ip_catalog -description "Audio Pass throug" -vendor "adiuvo" -display_name "Audio_HLS" -taxonomy "/Audio_HLS"
