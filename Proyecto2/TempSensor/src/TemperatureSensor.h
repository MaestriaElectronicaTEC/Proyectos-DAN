/*
 * TemperatureSensor.h
 *
 *  Created on: Aug 3, 2018
 *      Author: luis
 */

#include <systemc.h>
#include <systemc-ams.h>

SC_MODULE(TemperatureSensor) // Air sensor model using ELN primitive modules
{
  sc_in<sc_int<12> > in;
  sc_in <sc_uint<2> > mode;
  sc_out <bool> neg;
  sc_out <sc_uint<4> > d0; //LSB
  sc_out <sc_uint<4> > d1;
  sc_out <sc_uint<4> > d2;
  sc_out <bool> tmp_warn;
  sc_out <bool> oe;

  void  PROC ();

  SC_CTOR(TemperatureSensor) // standard constructor
  {
    SC_METHOD (PROC);
      sensitive << in << mode;
  }
};
