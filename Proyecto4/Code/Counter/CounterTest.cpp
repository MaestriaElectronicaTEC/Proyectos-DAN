#include "systemc.h"
#include "Counter.h"

int sc_main (int argc, char* argv[]) {
  sc_signal<bool>   clock;
  sc_signal<bool>   reset;
  sc_signal<bool>   reset_counter;
  sc_signal<bool>   enable;
  sc_signal<bool>   mode;
  sc_signal<sc_int<4> > counter_out;
  int i = 0;
  // Connect the DUT
  bidirectional_counter counter("COUNTER");
    counter.clock(clock);
    counter.reset(reset);
    counter.reset_counter(reset_counter);
    counter.enable(enable);
    counter.mode(mode);
    counter.counter_out(counter_out);

  mode = 1;
  sc_start(1, SC_NS);

  // Open VCD file
  sc_trace_file *wf = sc_create_vcd_trace_file("counter");
  // Dump the desired signals
  sc_trace(wf, clock, "clock");
  sc_trace(wf, reset, "reset");
  sc_trace(wf, reset_counter, "reset_counter");
  sc_trace(wf, enable, "enable");
  sc_trace(wf, mode, "mode");
  sc_trace(wf, counter_out, "count");

  // Initialize all variables
  reset_counter = 1;       // initial value of reset
  enable = 1;      // initial value of enable
  mode = 1;	   // initial value of mode (Incremental mode)
  for (i=0;i<5;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }
  reset_counter = 0;    // Assert the reset
  cout << "@" << sc_time_stamp() <<" Asserting reset\n" << endl;
  for (i=0;i<10;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }
  reset_counter = 1;    // De-assert the reset
  cout << "@" << sc_time_stamp() <<" De-Asserting reset\n" << endl;
  for (i=0;i<5;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }
  cout << "@" << sc_time_stamp() <<" Asserting Mode\n" << endl;
  enable = 1;  // Assert mode
  mode = 0;
  for (i=0;i<20;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }
  cout << "@" << sc_time_stamp() <<" De-Asserting Enable\n" << endl;
  enable = 0; // De-assert enable
  for (i=0;i<20;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }

  cout << "@" << sc_time_stamp() <<" Terminating simulation\n" << endl;
  sc_close_vcd_trace_file(wf);
  return 0;// Terminate simulation

 }

