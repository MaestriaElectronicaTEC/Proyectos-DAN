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
	sca_eln::sca_node vout2;

	WaveSource waveSignal("waveSignal");
	waveSignal.setFrequency(100000.0);
	waveSignal.tsigout(vin);

	LowPassFilter lpFilter("lpFilter");
	lpFilter.n1(vin);
	lpFilter.n2(vout);

	LowPassFilter lpFilterSecondOrder("lpFilterSecondOrder");
	lpFilterSecondOrder.n1(vout);
	lpFilterSecondOrder.n2(vout2);

	sca_util::sca_trace_file *tf1= sca_create_vcd_trace_file("lowPassFilter");
	sca_util::sca_trace(tf1,vin,"Vin");
	sca_util::sca_trace(tf1,vout,"Vout");
	sca_util::sca_trace(tf1,vout2,"Vout2");

	sc_core::sc_start(10, SC_MS);
	sca_util::sca_close_vcd_trace_file(tf1);

	return 0;
}
