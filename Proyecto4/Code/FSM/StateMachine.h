//-----------------------------------------------------
// Design Name : StateMachine
// File Name : StateMachien.h
// Function : State machine of five states: A, B, C, D, E
//-----------------------------------------------------

#ifndef STATE_MACHINE_H
#define STATE_MACHINE_H

#include "systemc.h"

enum STATE {
  A_STATE = 0,
  B_STATE,
  C_STATE,
  D_STATE,
  E_STATE
};

SC_MODULE(StateMachine)
{
  sc_in <bool> clock;
  sc_in <bool>  reset;
  sc_in <sc_int<4> > key;
  sc_inout<sc_int<4> > current_state;

  sc_int<4> _state;

  void getNextState();

SC_CTOR(StateMachine)
{
  /*SC_CTHREAD(getNextState,clock.pos());
	reset_signal_is(reset,true);*/
	SC_METHOD(getNextState);
	sensitive << clock.pos();
}
};

#endif
