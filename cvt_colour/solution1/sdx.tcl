# ==============================================================
# File generated on Tue Apr 09 13:10:03 +0100 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../cvt_colour_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files cvt_colour/test.bmp
add_files cvt_colour/cvt_colour.hpp
add_files cvt_colour/cvt_colour.cpp
set_part xc7z020clg400-1
create_clock -name default -period 10
