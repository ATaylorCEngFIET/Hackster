set C_TypeInfoList {{ 
"image_filter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"INPUT_STREAM": [[], {"reference": "0"}] }, {"OUTPUT_STREAM": [[], {"reference": "0"}] }],[],""], 
"0": [ "AXI_STREAM", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<ap_axiu<24, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<24, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 24}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "6"]},{ "id": [[], "6"]},{ "dest": [[], "6"]}],""]}], 
"5": [ "ap_uint<3>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 3}}]],""]}}], 
"4": [ "ap_uint<24>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 24}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName image_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {image_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_STREAM_V_data_V int 24 regular {axi_s 0 volatile  { INPUT_STREAM Data } }  }
	{ INPUT_STREAM_V_keep_V int 3 regular {axi_s 0 volatile  { INPUT_STREAM Keep } }  }
	{ INPUT_STREAM_V_strb_V int 3 regular {axi_s 0 volatile  { INPUT_STREAM Strb } }  }
	{ INPUT_STREAM_V_user_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM User } }  }
	{ INPUT_STREAM_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Last } }  }
	{ INPUT_STREAM_V_id_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM ID } }  }
	{ INPUT_STREAM_V_dest_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Dest } }  }
	{ OUTPUT_STREAM_V_data_V int 24 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ OUTPUT_STREAM_V_keep_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ OUTPUT_STREAM_V_strb_V int 3 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ OUTPUT_STREAM_V_user_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ OUTPUT_STREAM_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ OUTPUT_STREAM_V_id_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ OUTPUT_STREAM_V_dest_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "INPUT_STREAM.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "INPUT_STREAM.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "INPUT_STREAM.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "OUTPUT_STREAM.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "OUTPUT_STREAM.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "OUTPUT_STREAM.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_STREAM_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ INPUT_STREAM_TDATA sc_in sc_lv 24 signal 0 } 
	{ INPUT_STREAM_TKEEP sc_in sc_lv 3 signal 1 } 
	{ INPUT_STREAM_TSTRB sc_in sc_lv 3 signal 2 } 
	{ INPUT_STREAM_TUSER sc_in sc_lv 1 signal 3 } 
	{ INPUT_STREAM_TLAST sc_in sc_lv 1 signal 4 } 
	{ INPUT_STREAM_TID sc_in sc_lv 1 signal 5 } 
	{ INPUT_STREAM_TDEST sc_in sc_lv 1 signal 6 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 24 signal 7 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 3 signal 8 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 3 signal 9 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 1 signal 10 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 1 signal 12 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 1 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ INPUT_STREAM_TVALID sc_in sc_logic 1 invld 6 } 
	{ INPUT_STREAM_TREADY sc_out sc_logic 1 inacc 6 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 13 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 13 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "INPUT_STREAM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_data_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_keep_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_strb_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_user_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_last_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_id_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_STREAM_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7", "22", "23", "36", "49", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "image_filter",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "2", "Name" : "AXIvideo2Mat_U0"}],
		"OutputProcess" : [
			{"ID" : "57", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "INPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "INPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "INPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "INPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "INPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "INPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "INPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "OUTPUT_STREAM_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "OUTPUT_STREAM_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "OUTPUT_STREAM_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "OUTPUT_STREAM_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "OUTPUT_STREAM_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "OUTPUT_STREAM_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "OUTPUT_STREAM_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "img_0_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "img_0_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_0_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "img_0_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "img_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "img_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "img_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "img_cols_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "CvtColor_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "2",
		"StartFifo" : "start_for_CvtColoudo_U",
		"Port" : [
			{"Name" : "p_src_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "p_src_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "p_src_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0.image_filter_mul_bkb_U17", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0.image_filter_mac_cud_U18", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.CvtColor_1_U0.image_filter_mac_dEe_U19", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "GaussianBlur",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "3",
		"StartFifo" : "start_for_Gaussiavdy_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_1_fu_40"}],
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "65",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_Filter2D_1_fu_40", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "66",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_Filter2D_1_fu_40", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40", "Parent" : "7", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "Filter2D_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.k_buf_0_val_3_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.k_buf_0_val_4_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.k_buf_0_val_5_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mux_hbi_U29", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mux_hbi_U30", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mux_hbi_U31", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mux_hbi_U32", "Parent" : "8"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mux_hbi_U33", "Parent" : "8"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mux_hbi_U34", "Parent" : "8"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mul_ibs_U35", "Parent" : "8"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_ama_jbC_U36", "Parent" : "8"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mac_kbM_U37", "Parent" : "8"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.grp_Filter2D_1_fu_40.image_filter_mac_lbW_U38", "Parent" : "8"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Duplicate_U0", "Parent" : "0",
		"CDFG" : "Duplicate",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "7",
		"StartFifo" : "start_for_DuplicawdI_U",
		"Port" : [
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst1_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "dst1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst2_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "dst2_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "Sobel",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "22",
		"StartFifo" : "start_for_Sobel_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_52"}],
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "67",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "69",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52", "Parent" : "23", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "Filter2D",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_kernel_val_0_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_1_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.k_buf_0_val_3_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.k_buf_0_val_4_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.k_buf_0_val_5_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U52", "Parent" : "24"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U53", "Parent" : "24"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U54", "Parent" : "24"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U55", "Parent" : "24"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U56", "Parent" : "24"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U57", "Parent" : "24"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mac_pcA_U58", "Parent" : "24"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_U0.grp_Filter2D_fu_52.image_filter_mac_qcK_U59", "Parent" : "24"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "Sobel_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "22",
		"StartFifo" : "start_for_Sobel_1xdS_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_52"}],
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "68",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_src_data_stream_V"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "70",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_Filter2D_fu_52", "Port" : "p_dst_data_stream_V"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52", "Parent" : "36", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "Filter2D",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_kernel_val_0_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_1_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.k_buf_0_val_3_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.k_buf_0_val_4_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.k_buf_0_val_5_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U52", "Parent" : "37"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U53", "Parent" : "37"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U54", "Parent" : "37"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U55", "Parent" : "37"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U56", "Parent" : "37"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mux_hbi_U57", "Parent" : "37"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mac_pcA_U58", "Parent" : "37"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Sobel_1_U0.grp_Filter2D_fu_52.image_filter_mac_qcK_U59", "Parent" : "37"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55"],
		"CDFG" : "AddWeighted",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "23",
		"StartFifo" : "start_for_AddWeigyd2_U",
		"Port" : [
			{"Name" : "src1_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "src1_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src2_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "src2_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.image_filter_daddrcU_U74", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.image_filter_daddrcU_U75", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.image_filter_dmulsc4_U76", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.image_filter_dmulsc4_U77", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.image_filter_sitotde_U78", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AddWeighted_U0.image_filter_sitotde_U79", "Parent" : "49"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CvtColor_U0", "Parent" : "0",
		"CDFG" : "CvtColor",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "49",
		"StartFifo" : "start_for_CvtColozec_U",
		"Port" : [
			{"Name" : "p_src_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "56",
		"StartFifo" : "start_for_Mat2AXIAem_U",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_rows_V_c_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_cols_V_c_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_0_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_1_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_2_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_rows_V_c20_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_cols_V_c21_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_data_stream_0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2_data_stream_0_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2a_data_stream_0_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2b_data_stream_0_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_3_data_stream_0_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_4_data_stream_0_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_5_data_stream_0_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_6_data_stream_0_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_6_data_stream_1_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_6_data_stream_2_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_CvtColoudo_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Gaussiavdy_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_DuplicawdI_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_U0_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_1xdS_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_AddWeigyd2_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_CvtColozec_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIAem_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	image_filter {
		INPUT_STREAM_V_data_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_keep_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_strb_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_user_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_last_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_id_V {Type I LastRead 7 FirstWrite -1}
		INPUT_STREAM_V_dest_V {Type I LastRead 7 FirstWrite -1}
		OUTPUT_STREAM_V_data_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_keep_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_strb_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_user_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_last_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_id_V {Type O LastRead -1 FirstWrite 3}
		OUTPUT_STREAM_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	Block_proc {
		img_0_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_0_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_rows_V {Type I LastRead 0 FirstWrite -1}
		img_cols_V {Type I LastRead 0 FirstWrite -1}
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		img_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_cols_V_out {Type O LastRead -1 FirstWrite 0}}
	CvtColor_1 {
		p_src_rows_V {Type I LastRead 0 FirstWrite -1}
		p_src_cols_V {Type I LastRead 0 FirstWrite -1}
		p_src_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		p_src_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		p_src_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 6}}
	GaussianBlur {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Filter2D_1 {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Duplicate {
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst1_data_stream_V {Type O LastRead -1 FirstWrite 3}
		dst2_data_stream_V {Type O LastRead -1 FirstWrite 3}}
	Sobel {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Filter2D {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}
		p_kernel_val_0_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_1_read {Type I LastRead 0 FirstWrite -1}}
	Sobel_1 {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}}
	Filter2D {
		p_src_data_stream_V {Type I LastRead 4 FirstWrite -1}
		p_dst_data_stream_V {Type O LastRead -1 FirstWrite 7}
		p_kernel_val_0_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_1_read {Type I LastRead 0 FirstWrite -1}}
	AddWeighted {
		src1_data_stream_V {Type I LastRead 3 FirstWrite -1}
		src2_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 29}}
	CvtColor {
		p_src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		p_dst_data_stream_0_V {Type O LastRead -1 FirstWrite 3}
		p_dst_data_stream_1_V {Type O LastRead -1 FirstWrite 3}
		p_dst_data_stream_2_V {Type O LastRead -1 FirstWrite 3}}
	Mat2AXIvideo {
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "942498", "Max" : "942498"}
	, {"Name" : "Interval", "Min" : "942482", "Max" : "942482"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	INPUT_STREAM_V_data_V { axis {  { INPUT_STREAM_TDATA in_data 0 24 } } }
	INPUT_STREAM_V_keep_V { axis {  { INPUT_STREAM_TKEEP in_data 0 3 } } }
	INPUT_STREAM_V_strb_V { axis {  { INPUT_STREAM_TSTRB in_data 0 3 } } }
	INPUT_STREAM_V_user_V { axis {  { INPUT_STREAM_TUSER in_data 0 1 } } }
	INPUT_STREAM_V_last_V { axis {  { INPUT_STREAM_TLAST in_data 0 1 } } }
	INPUT_STREAM_V_id_V { axis {  { INPUT_STREAM_TID in_data 0 1 } } }
	INPUT_STREAM_V_dest_V { axis {  { INPUT_STREAM_TDEST in_data 0 1 }  { INPUT_STREAM_TVALID in_vld 0 1 }  { INPUT_STREAM_TREADY in_acc 1 1 } } }
	OUTPUT_STREAM_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 24 } } }
	OUTPUT_STREAM_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 3 } } }
	OUTPUT_STREAM_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 3 } } }
	OUTPUT_STREAM_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 1 } } }
	OUTPUT_STREAM_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	OUTPUT_STREAM_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 1 } } }
	OUTPUT_STREAM_V_dest_V { axis {  { OUTPUT_STREAM_TDEST out_data 1 1 }  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
