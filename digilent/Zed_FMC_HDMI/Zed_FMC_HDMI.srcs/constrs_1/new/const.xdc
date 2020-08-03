
set_property PACKAGE_PIN M19 [get_ports {clk}];  # "FMC-LA00_CC_P"
set_property PACKAGE_PIN G16 [get_ports {hsync_in}];  # "FMC-LA19_N"
set_property PACKAGE_PIN E20 [get_ports {iic_0_scl_io}];  # "FMC-LA21_N"
set_property PACKAGE_PIN F19 [get_ports {active_video_in}];  # "FMC-LA22_N"
set_property PACKAGE_PIN G19 [get_ports {vsync_in}];  # "FMC-LA22_P"
set_property PACKAGE_PIN E15 [get_ports {GPIO_O}];  # "FMC-LA23_P"
set_property PACKAGE_PIN C22 [get_ports {Int_in}];  # "FMC-LA25_N"
set_property PACKAGE_PIN D22 [get_ports {iic_0_sda_io}];  # "FMC-LA25_P"

set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];