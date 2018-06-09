//-----------------------------------------------------
// Design Name : bidirectional_counter
// File Name : bidirectional_counter.cpp
// Function : This is a 12 bit up-counter with
// Synchronous active high reset and
// with active high enable signal
//-----------------------------------------------------
#include "systemc.h"
#include "Counter.h"

//------------Code Starts Here-------------------------
// Below function implements actual counter logic
void bidirectional_counter::incr_count () {
  // At every rising edge of clock we check if reset is active
  // If active, we load the counter output with 4'b0000
  if (reset.read() == 0) {
    count =  0;
    counter_out.write(count);
  // If enable is active, then we increment the counter
  } else if (enable.read() == 1) {
    count = count + 1;
    counter_out.write(count);
    cout <<"@" << sc_time_stamp() << " :: Incremented Counter " << counter_out.read() << endl;
  }
}

void bidirectional_counter::decr_count () {
  // At every rising edge of clock we check if reset is active
  // If active, we load the counter output with 4'b0000
  if (reset.read() == 0) {
    count = 0;
    counter_out.write(count);
  // If enable is active, then we decrement the counter
  } else {
    count = count - 1;
    counter_out.write(count);
    cout << "@" << sc_time_stamp() << " :: Incremental Counter " << counter_out.read() << endl;
  }
}

void bidirectional_counter::mode_choice() {
  if (enable.read() == 0) {
    return;
  }

  if (mode.read() == 1) {
    incr_count();
  } else {
    decr_count();
  }
}
