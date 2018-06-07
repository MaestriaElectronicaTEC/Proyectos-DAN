//-----------------------------------------------------
// Design Name : bidirectional_counter
// File Name : bidirectional_counter.cpp
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
  void incr_count () {
    // At every rising edge of clock we check if reset is active
    // If active, we load the counter output with 4'b0000
    if (reset.read() == 1) {
      count =  0;
      counter_out.write(count);
    // If enable is active, then we increment the counter
    } else if (enable.read() == 1) {
      count = count + 1;
      counter_out.write(count);
      cout <<"@" << sc_time_stamp() << " :: Incremented Counter " << counter_out.read() << endl;
    }
  }

  void decr_count () {
    // At every rising edge of clock we check if reset is active
    // If active, we load the counter output with 4'b0000
    if (reset.read() == 1) {
      count = 0;
      counter_out.write(count);
    // If enable is active, then we decrement the counter
    } else {
      count = count - 1;
      counter_out.write(count);
      cout << "@" << sc_time_stamp() << " :: Incremental Counter " << counter_out.read() << endl;
    }
  }

  void mode_choice() {
    if (mode.read() == 1) {
      incr_count();
    } else {
      decr_count();
    }
  }

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
