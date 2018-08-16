//-----------------------------------------------------
// Design Name : StateMachine
// File Name : StateMachien.h
// Function : State machine of five states: A, B, C, D, E
//-----------------------------------------------------
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
  sc_in_clk clock; 
  sc_in<char> key;
  sc_out<sc_int<12> > current_state;

  sc_int<12> _state;

  void getNextState();

SC_CTOR(StateMachine)
{
  SC_METHOD(getNextState);
     sensitive << clock.pos();
}
};
