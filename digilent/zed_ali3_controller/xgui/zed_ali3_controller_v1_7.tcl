# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_PIXEL_CLOCK_RATE [ipgui::add_param $IPINST -name "C_PIXEL_CLOCK_RATE" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Select the pixel clock rate (in MHz) of the targeted display panel} ${C_PIXEL_CLOCK_RATE}
  set C_DATA_WIDTH [ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${Page_0}]
  set_property tooltip {Video Data Width} ${C_DATA_WIDTH}


}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PIXEL_CLOCK_RATE { PARAM_VALUE.C_PIXEL_CLOCK_RATE } {
	# Procedure called to update C_PIXEL_CLOCK_RATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PIXEL_CLOCK_RATE { PARAM_VALUE.C_PIXEL_CLOCK_RATE } {
	# Procedure called to validate C_PIXEL_CLOCK_RATE
	return true
}


proc update_MODELPARAM_VALUE.C_PIXEL_CLOCK_RATE { MODELPARAM_VALUE.C_PIXEL_CLOCK_RATE PARAM_VALUE.C_PIXEL_CLOCK_RATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PIXEL_CLOCK_RATE}] ${MODELPARAM_VALUE.C_PIXEL_CLOCK_RATE}
}

