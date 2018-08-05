//============================================================================
// Name        : TempSensor.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include "TemperatureSensor.h"
#include "Display.h"
#include "WaveSource.h"
#include "ADConverter.h"

int sc_main (int argc, char* argv[]) {
	sc_signal <sc_uint<2> > mode;
	sc_signal <bool> neg;
	sc_signal <sc_uint<4> > d0; //LSB
	sc_signal <sc_uint<4> > d1;
	sc_signal <sc_uint<4> > d2;
	sc_signal <bool> tmp_warn;
	sc_signal <bool> oe;

	sc_set_time_resolution(10.0, SC_NS);

	sca_tdf::sca_signal<double> sig_sine;
	sc_signal<sc_int<12> > digital_sig;

	WaveSource wave("waveSource");
	wave.out(sig_sine);

	ADConverter converter("AD_Converter");
	converter.in_tdf(sig_sine);
	converter.out_de(digital_sig);

	TemperatureSensor tempSensor("tempSensor");
	tempSensor.in(digital_sig);
	tempSensor.mode(mode);
	tempSensor.neg(neg);
	tempSensor.d0(d0);
	tempSensor.d1(d1);
	tempSensor.d2(d2);
	tempSensor.tmp_warn(tmp_warn);
	tempSensor.oe(oe);

	Display display("display");
	display.neg(neg);
	display.d0(d0);
	display.d1(d1);
	display.d2(d2);
	display.oe(oe);

	mode = 0;

	sca_util::sca_trace_file *tf1= sca_create_vcd_trace_file("temperatureSensor");
	sca_util::sca_trace(tf1,sig_sine,"Vin");
	sca_util::sca_trace(tf1,digital_sig,"Vout");
	sca_util::sca_trace(tf1,mode,"mode");
	sca_util::sca_trace(tf1,tmp_warn,"warn");
	sca_util::sca_trace(tf1,d0,"d0");
	sca_util::sca_trace(tf1,d1,"d1");
	sca_util::sca_trace(tf1,d2,"d2");
	sca_util::sca_trace(tf1,neg,"neg");
	sca_util::sca_trace(tf1,oe,"oe");

	sc_core::sc_start(10, SC_MS);
	sca_util::sca_close_vcd_trace_file(tf1);

	return 0;
}
