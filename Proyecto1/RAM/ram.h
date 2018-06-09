// Asynchronous one port RAM
// Based on this: http://www.asic-world.com/examples/systemc/ram_dp_ar_aw.html

#ifndef RAM_H
#define RAM_H
#include "systemc.h"

#define DATA_WIDTH        32 
#define ADDR_WIDTH        16 
#define RAM_DEPTH         1 << ADDR_WIDTH

SC_MODULE (ram) {
  sc_in    <sc_uint<ADDR_WIDTH> > address;
  sc_in    <bool> cs ;
  sc_in    <bool> we ;
  sc_in    <bool> oe  ;
  sc_inout_rv <DATA_WIDTH> data;

  //-----------Internal variables-------------------
  sc_uint <DATA_WIDTH> mem [RAM_DEPTH];

  //-----------Methods------------------------------
  void  READ ();
  void  WRITE ();

  //-----------Constructor--------------------------
  SC_CTOR(ram) {
    SC_METHOD (READ);
      sensitive << address << cs << we << oe;
    SC_METHOD (WRITE);
      sensitive << address << cs << we << data;
  }
};
#endif
