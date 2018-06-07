//-----------------------------------------------------
// Design Name : bidirectional_counter
// File Name : counter.h
// Function : This is a 12 bit up-counter with
// Synchronous active high reset and
// with active high enable signal
//-----------------------------------------------------
#include "systemc.h"

SC_MODULE (bidirectional_counter) {
  sc_in_clk     clock ;      // Clock input of the design
  sc_in<bool>   reset ;      // active high, synchronous Reset input
  sc_in<bool>   enable;      // Active high enable signal for counter
  sc_in<bool>	mode;	     // Mode of the counter. If high, up mode, if low, down mode
  sc_out<sc_int<12> > counter_out; // 12 bit vector output of the counter

  //------------Local Variables Here---------------------
  sc_int<12>	count;

  //------------Code Starts Here-------------------------
  // Below function implements actual counter logic
  void incr_count ();
  void decr_count ();
  void mode_choice();

  // Constructor for the counter
  // Since this counter is a positive edge trigged one,
  // We trigger the below block with respect to positive
  // edge of the clock and also when ever reset changes state
  SC_CTOR(bidirectional_counter) {
    cout<<"Executing new"<<endl;
    SC_METHOD(mode_choice);
    sensitive << reset;
    sensitive << clock.pos();
    sensitive << mode;
  } // End of Constructor

}; // End of Module counter
