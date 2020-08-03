proc make_ip {ip_name} {

   # Collect the names of the HDL source files that are used by this IP here.
   set file_list [list  "hdl/verilog/synchro.v" \
                        "hdl/verilog/zed_ali3_controller_core.v" \
                        "hdl/vhdl/clock_generator_pll_7_to_1_diff_sdr.vhd" \
						"hdl/vhdl/serdes_7_to_1_diff_sdr.vhd" \
						"hdl/vhdl/zed_ali3_controller.vhd" ]
   
   # Create a new Vivado project for this IP and add the source files.
   create_project $ip_name . -force
   set proj_dir [get_property directory [current_project]]
   set proj_name [get_projects $ip_name]
   set proj_fileset [get_filesets sources_1]
   add_files -norecurse -scan_for_includes -fileset $proj_fileset $file_list
   set_property "top" "$ip_name" $proj_fileset
   ipx::package_project -root_dir .
   
   # Set the IP core information properties.
   set_property vendor {avnet.com} [ipx::current_core]
   set_property library {ip} [ipx::current_core]
   set_property name {zed_ali3_controller} [ipx::current_core]
   set_property version {1.7} [ipx::current_core]
   set_property display_name {ALI3 Display Controller} [ipx::current_core]
   set_property vendor_display_name {Avnet} [ipx::current_core]
   set_property company_url {http://em.avnet.com} [ipx::current_core]
   set_property taxonomy {{/Video_&amp;_Image_Processing}} [ipx::current_core]
   set_property supported_families {{virtex7} {Pre-Production}\
                                    {qzynq} {Pre-Production}\
                                    {qvirtex7} {Pre-Production}\
                                    {qkintex7l} {Pre-Production}\
                                    {qkintex7} {Pre-Production}\
                                    {qartix7} {Pre-Production}\
                                    {kintex7l} {Pre-Production}\
                                    {kintex7} {Pre-Production}\
                                    {azynq} {Pre-Production}\
                                    {artix7l} {Pre-Production}\
                                    {aartix7} {Pre-Production}\
                                    {artix7} {Pre-Production}\
                                    {zynq} {Production}} [ipx::current_core]

   # Set the File Groups for this IP core.
   ipx::add_file_group -type utility xilinx_utilityxitfiles [ipx::current_core]
   ipx::add_file misc/AVNET_EM_sRGB_150x53px.png [ipx::get_file_groups xilinx_utilityxitfiles -of_objects [ipx::current_core]]
   set_property type LOGO [ipx::get_files misc/AVNET_EM_sRGB_150x53px.png -of_objects [ipx::get_file_groups xilinx_utilityxitfiles -of_objects [ipx::current_core]]]
   set_property is_include false [ipx::get_files misc/AVNET_EM_sRGB_150x53px.png -of_objects [ipx::get_file_groups xilinx_utilityxitfiles -of_objects [ipx::current_core]]]
   
   # Set the Customization Parameters for this IP core.
   ipx::add_user_parameter C_DATA_WIDTH [ipx::current_core]
   set_property value_resolve_type user [ipx::get_user_parameters C_DATA_WIDTH -of_objects [ipx::current_core]]
   set_property display_name {Video Data Width} [ipx::get_user_parameters C_DATA_WIDTH -of_objects [ipx::current_core]]
   set_property value 32 [ipx::get_user_parameters C_DATA_WIDTH -of_objects [ipx::current_core]]
   set_property value_format long [ipx::get_user_parameters C_DATA_WIDTH -of_objects [ipx::current_core]]
   
   # Assign the bus interfaces used for this IP core.
   ipx::add_bus_interface {ALI3} [ipx::current_core]
   set_property interface_mode {master} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property display_name {ALI3} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property description {Avnet LCD Interface (ALI3)} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property abstraction_type_vlnv {avnet.com:interface:avnet_ali3_rtl:1.0} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property bus_type_vlnv {avnet.com:interface:avnet_ali3:1.0} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]

   ipx::add_bus_interface {VID_IO_IN} [ipx::current_core]
   set_property interface_mode {slave} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property display_name {VID_IO_IN} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property description {Video Interface} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property abstraction_type_vlnv {xilinx.com:interface:vid_io_rtl:1.0} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property bus_type_vlnv {xilinx.com:interface:vid_io:1.0} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   
   # Create the port map assignments for this IP core.
   ipx::add_port_map {ALI_RST_N} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property physical_name {ALI_RST_N} [ipx::get_port_maps ALI_RST_N -of_objects [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]]
   ipx::add_port_map {ALI_CLK_N} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property physical_name {ALI_CLK_N} [ipx::get_port_maps ALI_CLK_N -of_objects [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]]
   ipx::add_port_map {ALI_CLK_P} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property physical_name {ALI_CLK_P} [ipx::get_port_maps ALI_CLK_P -of_objects [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]]
   ipx::add_port_map {ALI_DATA_N} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property physical_name {ALI_DATA_N} [ipx::get_port_maps ALI_DATA_N -of_objects [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]]
   ipx::add_port_map {ALI_DATA_P} [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]
   set_property physical_name {ALI_DATA_P} [ipx::get_port_maps ALI_DATA_P -of_objects [ipx::get_bus_interfaces ALI3 -of_objects [ipx::current_core]]]
   
   ipx::add_port_map {DATA} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property physical_name {video_data} [ipx::get_port_maps DATA -of_objects [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]]
   ipx::add_port_map {ACTIVE_VIDEO} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property physical_name {video_de} [ipx::get_port_maps ACTIVE_VIDEO -of_objects [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]]
   ipx::add_port_map {HSYNC} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property physical_name {video_hsync} [ipx::get_port_maps HSYNC -of_objects [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]]
   ipx::add_port_map {VSYNC} [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]
   set_property physical_name {video_vsync} [ipx::get_port_maps VSYNC -of_objects [ipx::get_bus_interfaces VID_IO_IN -of_objects [ipx::current_core]]]
   
   # Setup the Customization GUI for this IP core.
   ipgui::add_param -name {C_DATA_WIDTH} -component [ipx::current_core] -parent [ipgui::get_pagespec -name "Page 0" -component [ipx::current_core] ] -display_name {C_DATA_WIDTH}
   set_property tooltip {Video Data Width} [ipgui::get_guiparamspec -name "C_DATA_WIDTH" -component [ipx::current_core] ]
   
   ipgui::add_param -name {C_PIXEL_CLOCK_RATE} -component [ipx::current_core] -parent [ipgui::get_pagespec -name "Page 0" -component [ipx::current_core] ] -display_name {C_PIXEL_CLOCK_RATE}
   set_property tooltip {Select the pixel clock rate (in MHz) of the targeted display panel} [ipgui::get_guiparamspec -name "C_PIXEL_CLOCK_RATE" -component [ipx::current_core] ]
   set_property widget {comboBox} [ipgui::get_guiparamspec -name "C_PIXEL_CLOCK_RATE" -component [ipx::current_core] ]
   set_property value_validation_type pairs [ipx::get_user_parameters C_PIXEL_CLOCK_RATE -of_objects [ipx::current_core]]
   set_property value_validation_pairs {25 0 33.33 1 40 2 50 3 65 4 71.1 5 74.25 6 108 7} [ipx::get_user_parameters C_PIXEL_CLOCK_RATE -of_objects [ipx::current_core]]

   # Generate the XGUI files to accompany this IP core.
   ipx::create_xgui_files [ipx::current_core]
   
   # Save the IP core.
   ipx::save_core [ipx::current_core]
   
   # Close the current project.
   close_project
}