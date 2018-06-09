#include "systemc.h"
#include "ram.cpp"

int sc_main(int argc, char* argv[]) {
  sc_signal <sc_uint<ADDR_WIDTH> > address;
  sc_signal <bool> cs ;
  sc_signal <bool> we ;
  sc_signal <bool> oe  ;
  sc_signal_rv <DATA_WIDTH> data;
  int i = 0;

  ram ram1("RAM");
  ram1.address(address);
  ram1.cs(cs);
  ram1.we(we);
  ram1.oe(oe);
  ram1.data(data);

  
  sc_trace_file *wf = sc_create_vcd_trace_file("ram");
  sc_trace(wf, address, "address");
  sc_trace(wf, cs, "cs");
  sc_trace(wf, we, "we");
  sc_trace(wf, oe, "oe");
  sc_trace(wf, data, "data");

  // Initialize all variables
  address = 0;
  data = 0;
  we = 0;
  oe = 0;
  cs = 0; 
  sc_start();
  cs = 1; 
  sc_start();


  address = 20;
  data = 666;
  we = 1;
  oe = 0;
  cs = 0; 
  sc_start();
  cs = 1; 
  sc_start();


  address = 20;
  we = 0;
  oe = 1;
  cs = 0; 
  sc_start();
  cs = 1; 
  sc_start();

  return(0);
}
