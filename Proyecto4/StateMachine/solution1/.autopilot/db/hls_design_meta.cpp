#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clock", 1, hls_in, -1, "", "", 1),
	Port_Property("key", 8, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("current_state_i", 12, hls_in, 2, "ap_ovld", "in_data", 1),
	Port_Property("current_state_o", 12, hls_out, 2, "ap_ovld", "out_data", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "StateMachine::StateMachine";
