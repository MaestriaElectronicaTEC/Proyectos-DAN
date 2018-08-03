/*
 * LowPassFilter.h
 *
 *  Created on: Aug 2, 2018
 *      Author: Luis Murillo
 */
#include <systemc.h>
#include <systemc-ams.h>

SC_MODULE(LowPassFilter)
{
    // sca eln terminals
    sca_eln::sca_terminal n1;
    sca_eln::sca_terminal n2;

    // internal nodes
    sca_eln::sca_node_ref gnd;

    // eln modules
    sca_eln::sca_r i_r;
    sca_eln::sca_c i_c;

    SC_CTOR(LowPassFilter) : i_r("i_r"), i_c("i_c")
    {
          i_r.value = 1.0;
          i_r.p.bind(n1);
          i_r.n.bind(n2);

          i_c.value = 1.0/(2.0*M_PI*1.0e3);
          i_c.p.bind(n2);
          i_c.n.bind(gnd);
    }
};
