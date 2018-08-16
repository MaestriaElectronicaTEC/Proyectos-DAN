set moduleName StateMachine
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
set C_modelName {StateMachine::StateMachine}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ key int 8 regular {pointer 0 volatile }  }
	{ current_state int 12 regular {pointer 2 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "StateMachine.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "key", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "StateMachine.key.m_if.Val","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "current_state", "interface" : "wire", "bitwidth" : 12, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "StateMachine.current_state.m_if.Val.V","cData": "int12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 5
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ key sc_in sc_lv 8 signal 1 clock } 
	{ current_state_i sc_in sc_lv 12 signal 2 clock } 
	{ current_state_o sc_out sc_lv 12 signal 2 clock } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "key", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "default" }} , 
 	{ "name": "current_state_i", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "current_state", "role": "i" }} , 
 	{ "name": "current_state_o", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "current_state", "role": "o" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "StateMachine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_StateMachine_getNextState_fu_44", "Port" : "clock"}]},
			{"Name" : "key", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_StateMachine_getNextState_fu_44", "Port" : "key"}]},
			{"Name" : "current_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_StateMachine_getNextState_fu_44", "Port" : "current_state"}]},
			{"Name" : "StateMachine_state_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_StateMachine_getNextState_fu_44", "Port" : "StateMachine_state_V"}]},
			{"Name" : "StateMachine_ssdm_thread_M_getNextState", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_StateMachine_getNextState_fu_44", "Parent" : "0",
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
	StateMachine {
		clock {Type I LastRead -1 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		current_state {Type IO LastRead 0 FirstWrite 0}
		StateMachine_state_V {Type O LastRead -1 FirstWrite -1}
		StateMachine_ssdm_thread_M_getNextState {Type I LastRead -1 FirstWrite -1}}
	StateMachine_getNextState {
		clock {Type I LastRead -1 FirstWrite -1}
		key {Type I LastRead 0 FirstWrite -1}
		current_state {Type IO LastRead 0 FirstWrite 0}
		StateMachine_state_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	key { ap_none {  { key in_data 0 8 } } }
	current_state { ap_ovld {  { current_state_i in_data 0 12 }  { current_state_o out_data 1 12 } } }
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
