#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clock", 1, hls_in, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("enable", 1, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("mode", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("counter_out_i", 12, hls_in, 4, "ap_ovld", "in_data", 1),
	Port_Property("counter_out_o", 12, hls_out, 4, "ap_ovld", "out_data", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "bidirectional_counter::bidirectional_counter";
