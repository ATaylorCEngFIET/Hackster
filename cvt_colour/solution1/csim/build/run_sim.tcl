# ==============================================================
# File generated on Thu Apr 11 10:09:22 +0100 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/fpo_v7_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/opencv"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/fft_v9_1"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/fir_v7_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/tools/dds_v6_0"
set ::env(PATH) "$::env(PATH);C:/Xilinx/Vivado/2018.3/win64/csim"
### C sim ###
if {![file exists csim.exe]} {
  puts "@E C-simulation is not set up properly. Please re-run csim."
  return -code error
}
set ret [catch {eval exec ./csim.exe | tee temp0.log >&@ stdout} err]
set logfile "temp0.log"
if {$ret || $err != ""} {
    if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
        set status [lindex $::errorCode 2]
        if {$status != ""} {
            puts "@E Simulation failed: Function \'main\' returns nonzero value \'$status\'."
            set ::AESL_CSIM::gnonzeroRetErr 1
            return -code error
        } else {
            puts "@E Simulation failed."
            return -code error
        }
    } else {
        if { [regexp {segmentation violation} $err] } {
            puts "@E Simulation failed: SIGSEGV."
        } else {
            puts "@E Simulation failed."
        }
        return -code error
    }
}
if {[file exists $logfile]} {
    set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
    if {$cmdret == 0} {
        puts "@E Simulation failed."
        return -code error
    }
}

