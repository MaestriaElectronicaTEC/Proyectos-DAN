//============================================================================
// Name        : TempSensor.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include "TemperatureSensor.h"
#include "WaveSource.h"

int sc_main (int argc, char* argv[]) {

	sc_set_time_resolution(10.0, SC_NS);

	sca_tdf::sca_signal<double> sig_sine;
	sca_eln::sca_node vout;

	WaveSource wave("waveSource");
	wave.out(sig_sine);
	wave.out.set_timestep(100, SC_NS); // The sampling time of the port

	TemperatureSensor tempSensor("tempSensor");
	tempSensor.in(sig_sine);
	tempSensor.out(vout);

	sca_util::sca_trace_file *tf1= sca_create_vcd_trace_file("temperatureSensor");
	sca_util::sca_trace(tf1,sig_sine,"Vin");
	sca_util::sca_trace(tf1,vout,"Vout");

	sc_core::sc_start(10, SC_MS);
	sca_util::sca_close_vcd_trace_file(tf1);

	return 0;
}
