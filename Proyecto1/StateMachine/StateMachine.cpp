//-----------------------------------------------------
// Design Name : StateMachine
// File Name : StateMachien.cpp
// Function : State machine of five states: A, B, C, D, E
//-----------------------------------------------------

#include "StateMachine.h"

void StateMachine::getNextState()
{
	_state = current_state.read();

	switch(_state){
	case A_STATE:
		if (key == 'a')
		{
			_state = B_STATE;
		}
		else if (key == 'b')
		{
			_state = C_STATE;
		}
		break;
	case B_STATE:
		if (key == 'b')
		{
			_state = D_STATE;
		}
		else
		{
			_state = B_STATE;
		}
		break;
	case C_STATE:
		if (key == 'a')
		{
			_state = B_STATE;
		}
		else
		{
			_state = C_STATE;
		}
		break;
	case D_STATE:
		if (key == 'a')
		{
			_state = B_STATE;
		}
		else if (key == 'b')
		{
			_state = E_STATE;
		}
		break;
	case E_STATE:
		if (key == 'a')
		{
			_state = B_STATE;
		}
		else if (key == 'b')
		{
			_state = C_STATE;
		}
		break;
	}
	current_state.write(_state);
}
