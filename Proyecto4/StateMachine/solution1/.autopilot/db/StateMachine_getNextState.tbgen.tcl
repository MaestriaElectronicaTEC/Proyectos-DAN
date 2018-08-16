set moduleName StateMachine_getNextState
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {StateMachine::getNextState}
set C_modelType { void 0 }
set C_modelArgList {
	{ key int 8 regular {pointer 0 volatile }  }
	{ current_state int 12 regular {pointer 2 volatile }  }
	{ StateMachine_state_V int 12 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "StateMachine.key.m_if.Val","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "current_state", "interface" : "wire", "bitwidth" : 12, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "StateMachine.current_state.m_if.Val.V","cData": "int12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "StateMachine_state_V", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "StateMachine._state.V","cData": "int12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ key sc_in sc_lv 8 signal 0 } 
	{ current_state_i sc_in sc_lv 12 signal 1 } 
	{ current_state_i_ap_vld sc_in sc_logic 1 invld 1 } 
	{ current_state_o sc_out sc_lv 12 signal 1 } 
	{ current_state_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ StateMachine_state_V sc_out sc_lv 12 signal 2 } 
	{ StateMachine_state_V_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "key", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "default" }} , 
 	{ "name": "current_state_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "current_state", "role": "i" }} , 
 	{ "name": "current_state_i_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "current_state", "role": "i_ap_vld" }} , 
 	{ "name": "current_state_o", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "current_state", "role": "o" }} , 
 	{ "name": "current_state_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "current_state", "role": "o_ap_vld" }} , 
 	{ "name": "StateMachine_state_V", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "StateMachine_state_V", "role": "default" }} , 
 	{ "name": "StateMachine_state_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "StateMachine_state_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "StateMachine_getNextState",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I"},
			{"Name" : "key", "Type" : "None", "Direction" : "I"},
			{"Name" : "current_state", "Type" : "Vld", "Direction" : "IO"},
			{"Name" : "StateMachine_state_V", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	StateMachine_getNextState {
		clock {Type I LastRead -1 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		current_state {Type IO LastRead 0 FirstWrite 0}
		StateMachine_state_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	key { ap_none {  { key in_data 0 8 } } }
	current_state { ap_vld {  { current_state_i in_data 0 12 }  { current_state_i_ap_vld in_vld 0 1 }  { current_state_o out_data 1 12 }  { current_state_o_ap_vld out_vld 1 1 } } }
	StateMachine_state_V { ap_vld {  { StateMachine_state_V out_data 1 12 }  { StateMachine_state_V_ap_vld out_vld 1 1 } } }
}
