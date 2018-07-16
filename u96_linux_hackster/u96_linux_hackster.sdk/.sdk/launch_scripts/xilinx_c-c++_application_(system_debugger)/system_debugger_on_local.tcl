#If required use the below command and launch symbol server from an external shell.
#symbol_server.bat -S -s tcp::1534
connect -path [list tcp::1534 tcp:192.168.1.178:3121]
source C:/Xilinx/SDK/2018.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG Cable 2018.1 AAo1BId+0"} -index 1
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "JTAG Cable 2018.1 AAo1BId+0" && level==0} -index 0
fpga -file C:/hdl_projects/u96_linux_hackster/u96_linux_hackster.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG Cable 2018.1 AAo1BId+0"} -index 1
loadhw -hw C:/hdl_projects/u96_linux_hackster/u96_linux_hackster.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG Cable 2018.1 AAo1BId+0"} -index 1
source C:/hdl_projects/u96_linux_hackster/u96_linux_hackster.sdk/design_1_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "JTAG Cable 2018.1 AAo1BId+0"} -index 1
rst -processor
dow C:/hdl_projects/u96_linux_hackster/u96_linux_hackster.sdk/test_uart/Debug/test_uart.elf
configparams force-mem-access 0
bpadd -addr &main
