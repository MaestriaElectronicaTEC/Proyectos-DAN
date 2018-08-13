set moduleName bidirectional_counter_mode_choice
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {bidirectional_counter::mode_choice}
set C_modelType { void 0 }
set C_modelArgList {
	{ reset int 1 regular {pointer 0 volatile }  }
	{ enable int 1 regular {pointer 0 volatile }  }
	{ mode int 1 regular {pointer 0 volatile }  }
	{ counter_out int 12 regular {pointer 2 volatile }  }
	{ bidirectional_counter_count_V int 12 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bidirectional_counter.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bidirectional_counter.enable.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "mode", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bidirectional_counter.mode.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "counter_out", "interface" : "wire", "bitwidth" : 12, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "bidirectional_counter.counter_out.m_if.Val.V","cData": "int12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "bidirectional_counter_count_V", "interface" : "wire", "bitwidth" : 12, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "bidirectional_counter.count.V","cData": "int12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ reset sc_in sc_logic 1 signal 0 } 
	{ enable sc_in sc_logic 1 signal 1 } 
	{ mode sc_in sc_logic 1 signal 2 } 
	{ counter_out_i sc_in sc_lv 12 signal 3 } 
	{ counter_out_o sc_out sc_lv 12 signal 3 } 
	{ counter_out_i_ap_vld sc_in sc_logic 1 invld 3 } 
	{ counter_out_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ bidirectional_counter_count_V_i sc_in sc_lv 12 signal 4 } 
	{ bidirectional_counter_count_V_o sc_out sc_lv 12 signal 4 } 
	{ bidirectional_counter_count_V_o_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "mode", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mode", "role": "default" }} , 
 	{ "name": "counter_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "counter_out", "role": "i" }} , 
 	{ "name": "counter_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "counter_out", "role": "o" }} , 
 	{ "name": "counter_out_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "counter_out", "role": "i_ap_vld" }} , 
 	{ "name": "counter_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "counter_out", "role": "o_ap_vld" }} , 
 	{ "name": "bidirectional_counter_count_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bidirectional_counter_count_V", "role": "i" }} , 
 	{ "name": "bidirectional_counter_count_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bidirectional_counter_count_V", "role": "o" }} , 
 	{ "name": "bidirectional_counter_count_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bidirectional_counter_count_V", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "bidirectional_counter_mode_choice",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "counter_out", "Type" : "Vld", "Direction" : "IO"},
			{"Name" : "bidirectional_counter_count_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	bidirectional_counter_mode_choice {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead 0 FirstWrite -1}
		enable {Type I LastRead 0 FirstWrite -1}
		mode {Type I LastRead 0 FirstWrite -1}
		counter_out {Type IO LastRead 0 FirstWrite 0}
		bidirectional_counter_count_V {Type IO LastRead 0 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reset { ap_none {  { reset in_data 0 1 } } }
	enable { ap_none {  { enable in_data 0 1 } } }
	mode { ap_none {  { mode in_data 0 1 } } }
	counter_out { ap_vld {  { counter_out_i in_data 0 12 }  { counter_out_o out_data 1 12 }  { counter_out_i_ap_vld in_vld 0 1 }  { counter_out_o_ap_vld out_vld 1 1 } } }
	bidirectional_counter_count_V { ap_ovld {  { bidirectional_counter_count_V_i in_data 0 12 }  { bidirectional_counter_count_V_o out_data 1 12 }  { bidirectional_counter_count_V_o_ap_vld out_vld 1 1 } } }
}
