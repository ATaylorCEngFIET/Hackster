#Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ ipgui::add_page $IPINST  -name "Page 0" -layout vertical]
	set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]
	set C_DATA_WIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_DATA_WIDTH]
set_property tooltip {Video Data Width} $C_DATA_WIDTH
	set C_DEBUG_PORT [ipgui::add_param $IPINST -parent $Page0 -name C_DEBUG_PORT]
set_property tooltip {Enable Debug Port} $C_DEBUG_PORT
}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_DEBUG_PORT { PARAM_VALUE.C_DEBUG_PORT } {
	# Procedure called to update C_DEBUG_PORT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DEBUG_PORT { PARAM_VALUE.C_DEBUG_PORT } {
	# Procedure called to validate C_DEBUG_PORT
	return true
}


proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

