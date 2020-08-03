connect -url tcp:127.0.0.1:3121
source C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722849"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248722849" && level==0} -index 1
fpga -file C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248722849"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248722849"} -index 0
dow C:/hdl_projects/digilent/Zed_FMC_HDMI/Zed_FMC_HDMI.sdk/app/Debug/app.elf
bpadd -addr &main
