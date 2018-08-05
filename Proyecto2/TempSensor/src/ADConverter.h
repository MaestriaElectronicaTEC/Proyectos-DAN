/*
 * ADConverter.h
 *
 *  Created on: Aug 3, 2018
 *      Author: luis
 */

#include <systemc.h>
#include <systemc-ams.h>

SCA_TDF_MODULE(ADConverter) // Very simple AD converter
{

	sca_tdf::sca_in<double> in_tdf; // TDF port
	sca_tdf::sc_out<sc_dt::sc_int<12> > out_de; // converter port to discrete-event domain

	void processing()
	{
		out_de.write(static_cast<sc_dt::sc_int<12> >(in_tdf.read()));
	}

	SCA_CTOR(ADConverter) { }
};
