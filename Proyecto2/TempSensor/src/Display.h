/*
 * Display.h
 *
 *  Created on: Aug 3, 2018
 *      Author: mtaylor
 */

#include <systemc.h>

SC_MODULE(Display)
{
  sc_in <bool> neg;
  sc_in <sc_uint<4> > d0; //LSB
  sc_in <sc_uint<4> > d1;
  sc_in <sc_uint<4> > d2;
  sc_in <bool> oe;

  void  PROC ();

  SC_CTOR(Display)
  {
    SC_METHOD (PROC);
      sensitive << oe;
  }
};

