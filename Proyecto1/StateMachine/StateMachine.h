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
  sc_out<STATE> next_state;
  sc_out<STATE> current_state;

  void getNextState();
  void setState();

SC_CTOR(StateMachine)
{
  SC_METHOD(getNextState);
     sensitive << key << clock.pos();
  SC_METHOD(setState);
    sensitive << clock.pos();
}
};
