# file: design_1_mdm_1_0.xdc
# (c) Copyright 2013-2018 Xilinx, Inc. All rights reserved.
# 
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.

create_clock -period 33.333 [get_pins {Use*.BSCAN*/*/DRCK}]
create_clock -period 33.333 [get_pins {Use*.BSCAN*/*/UPDATE}]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]]
set_false_path -through [get_pins "Use*.BSCAN*/*/CAPTURE"]
set_false_path -through [get_pins "Use*.BSCAN*/*/SEL"]
set_false_path -through [get_pins "Use*.BSCAN*/*/SHIFT"]
set_false_path -through [get_pins "Use*.BSCAN*/*/TDI"]
set_clock_groups -logically_exclusive  -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/DRCK"]] -group [get_clocks -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]]

create_waiver -internal -quiet -user mdm -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Debug_SYS_Rst_i_reg/C] -to *PIN

# Waivers for serial debug interface
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.completion*reg*/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.count_reg*/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.mb_data_overrun_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.mb_instr_error_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.mb_instr_overrun_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.sample*_reg*/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.clear_overrun_reg*/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.completion_block_reg/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.completion*reg*/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_Serial_Unified_Completion.count_reg*/*]

# Waivers for BSCAN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.TDI_Shifter_reg\[*\]/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/sel_n_reg/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/shift_Count_reg\[*\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/tdi_shifter_reg\[*\]/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/command_1_reg\[*\]/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Debug_Rst_i_reg/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Debug_SYS_Rst_i_reg/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Ext_NM_BRK_i_reg/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*Which_MB_Reg_reg\[*\]/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_BSCAN.command_reg\[*\]/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/completion_ctrl_reg\[0\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_BSCAN.FDC_I/Using_FPGA.Native/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/tdi_shifter_reg\[*\]/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.TDI_Shifter_reg\[*\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-1 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/set_Ext_BRK_reg/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-2 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.PORT_Selector*_reg\[*\]/CE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-2 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg\[*\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-2 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-4 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.PORT_Selector_reg\[*\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-7 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/sel_n_reg/PRE]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-7 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg\[*\]/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-7 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.TDI_Shifter_reg\[*\]/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-7 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.FDC_I/*/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-7 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/sel_n_reg/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-8 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/CLR]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.PORT_Selector*_reg\[*\]/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/CLR]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-11 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-11 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.PORT_Selector*_reg\[*\]/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/TDO]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.Config_Reg_reg*/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_BSCAN.FDC_I/Using_FPGA.Native/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_BSCAN.command_reg\[*\]/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/command_1_reg\[*\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Debug_Rst_i_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Debug_SYS_Rst_i_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Ext_NM_BRK_i_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*Which_MB_Reg_reg\[*\]/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_BSCAN.FDC_I/Using_FPGA.Native/C] -to *PIN
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/Use_BSCAN.PORT_Selector*_reg\[*\]/*]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/set_Ext_BRK_reg/D]
create_waiver -internal -quiet -user mdm -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" \
  -from *PIN -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/Use_BSCAN.command_reg\[*\]/D]
