/*
 * WaveSource.h
 *
 *  Created on: Aug 2, 2018
 *      Author: Luis Murillo
 */
#include <systemc.h>
#include <systemc-ams.h>

SC_MODULE(WaveSource)
{
	sca_eln::sca_terminal 	tsigout;
	sca_eln::sca_vsource 	v_src;

	SC_CTOR(WaveSource)
	:     tsigout("tsigout"),
		  v_src("v_src",0.0,0.0,2.0,100000),    //100 KHz sinusoidal source with an amplitude of 2V
		  gnd("gnd")
	{
		v_src.set_timestep(0.01,sc_core::SC_US);
		v_src.p(tsigout);
		v_src.n(gnd);
	}
private:
	sca_eln::sca_node_ref gnd;
};
