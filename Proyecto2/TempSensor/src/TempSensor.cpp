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

	WaveSource wave("waveSource");
	wave.out(sig_sine);

	TemperatureSensor tempSensor("tempSensor");
	tempSensor.in(sig_sine);
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
	sc_core::sc_start(10, SC_MS);

	return 0;
}
