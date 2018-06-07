//-----------------------------------------------------
// Design Name : StateMachine
// File Name : StateMachien.cpp
// Function : State machine of five states: A, B, C, D, E
//-----------------------------------------------------

#include "StateMachine.h"

void printState(STATE state) 
{
  switch (state) 
  {
    case A_STATE:
      cout << "State A" << endl;
      break;
    case B_STATE:
      cout << "State B" << endl;
      break;
    case C_STATE:
      cout << "State C" << endl;
      break;
    case D_STATE:
      cout << "State D" << endl;
      break;
    case E_STATE:
      cout << "State E" << endl;
      break;
  }
}

void StateMachine::getNextState()
{
  switch(current_state){
    case A_STATE:
      if (key == 'a')
      {
        next_state = B_STATE;
      }
      else if (key == 'b')
      {
        next_state = C_STATE;
      }
      break;
    case B_STATE:
      if (key == 'b')
      {
        next_state = D_STATE;
      }
      else
      {
        next_state = B_STATE;
      }
      break;
    case C_STATE:
      if (key == 'a')
      {
        next_state = B_STATE;
      }
      else 
      {
        next_state = C_STATE;
      }
      break;
    case D_STATE:
      if (key == 'a')
      {
        next_state = B_STATE;
      }
      else if (key == 'b')
      {
        next_state = E_STATE;
      }
      break;
    case E_STATE:
      if (key == 'a')
      {
        next_state = B_STATE;
      }
      else if (key == 'b')
      {
        next_state = C_STATE;
      }
      break;
  }
}

void StateMachine::setState()
{
  current_state = next_state;
  cout << "Current state set to: " << endl;
  printState(current_state);
}
