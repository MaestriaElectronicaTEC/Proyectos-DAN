#include "StateMachine.h"

int sc_main (int argc, char* argv[]) 
{
  sc_signal<bool> 	clock; 
  sc_signal<char> 	key;
  sc_signal<STATE> 	next_state;
  sc_signal<STATE> 	current_state;
  int i = 0;

  //Connect the DUT
  StateMachine stateMachine ("STATE_MACHINE");
    stateMachine.clock(clock);
    stateMachine.key(key);
    stateMachine.next_state(next_state);
    stateMachine.current_state(current_state);

  sc_start(1, SC_NS);

  //Open VCD file
  sc_trace_file *wf = sc_create_vcd_trace_file("stateMachine");
  // Dump the desired signals
  sc_trace(wf, clock, "clock");
  sc_trace(wf, key, "key");
  sc_trace(wf, next_state, "next_state");
  sc_trace(wf, current_state, "current_state");

  // Initialize all variables
  key = '#';			// initial value of key
  next_state = A_STATE;		// initial value of next_state
  current_state = A_STATE;	// initial value of current_state

  // Assert the transition from A -> B
  cout << "@" << sc_time_stamp() <<" Asserting transition A -> B\n" << endl;
  key = 'a';
  for (i=0;i<10;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }

  // Assert the transition from B -> D
  cout << "@" << sc_time_stamp() <<" Asserting transition B -> D\n" << endl;
  key = 'b';
  for (i=0;i<10;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }

  // Assert the transition from D -> E
  cout << "@" << sc_time_stamp() <<" Asserting transition D -> E\n" << endl;
  key = 'b';
  for (i=0;i<10;i++) {
    clock = 0; 
    sc_start(1, SC_NS);
    clock = 1; 
    sc_start(1, SC_NS);
  }

  cout << "@" << sc_time_stamp() <<" Terminating simulation\n" << endl;
  sc_close_vcd_trace_file(wf);
  return 0;// Terminate simulation
}
