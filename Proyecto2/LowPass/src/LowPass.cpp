//============================================================================
// Name        : LowPass.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include "LowPassFilter.h"
#include "WaveSource.h"

int sc_main (int argc, char* argv[]) {
	sca_eln::sca_node vin;
	sca_eln::sca_node vout;

	WaveSource waveSignal("waveSignal");
	waveSignal.tsigout(vin);

	LowPassFilter lpFilter("lpFilter");
	lpFilter.n1(vin);
	lpFilter.n2(vout);

	sca_util::sca_trace_file *tf1= sca_create_vcd_trace_file("lowPassFilter");
	sca_util::sca_trace(tf1,vin,"Vin");
	sca_util::sca_trace(tf1,vout,"Vout");

	sc_core::sc_start(10, SC_MS);
	sca_util::sca_close_vcd_trace_file(tf1);

	return 0;
}
