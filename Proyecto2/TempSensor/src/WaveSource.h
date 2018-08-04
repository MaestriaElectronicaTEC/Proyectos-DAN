/*
 * WaveSource.h
 *
 *  Created on: Aug 3, 2018
 *      Author: luis
 */

#include <systemc.h>
#include <systemc-ams.h>

SCA_TDF_MODULE(WaveSource) {
sca_tdf::sca_out<double> out;
// output port
void processing(){
// our workhorse method
    out.write(40/*Amplitude*/*sin(sc_time_stamp().to_seconds()*(1000./*frequency*/*2.*M_PI)));
  }
SCA_CTOR(WaveSource) {}
// constructor does nothing here
};
