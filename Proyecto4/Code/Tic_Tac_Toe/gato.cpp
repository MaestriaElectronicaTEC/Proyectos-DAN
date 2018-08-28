#include <iostream>
#include <stdint.h>
#include "ap_int.h"
#include "gato.h"

ap_uint<2> gato_game(bool playerA, ap_uint<4> choice, bool &winA, bool &next_player)
{
	#pragma HLS INTERFACE port=next_player
	#pragma HLS INTERFACE port=winA
	#pragma HLS INTERFACE port=choice
	#pragma HLS INTERFACE port=playerA

	int player = (playerA) ? 0 : 1;

	// Movement validation
    if (A[choice] > 1) {
      A[choice] = player % 2;
    }
    else {
      //Invalid move
    	next_player = (player == 0) ? 1 : 0;
    }

    // GameOver Validation

    if (A[0] == A[1] && A[1] == A[2] || A[3] == A[4] && A[4] == A[5]
          || A[6] == A[7] && A[7] == A[8] || A[0] == A[3] && A[3] == A[6]
          || A[1] == A[4] && A[4] == A[7] || A[2] == A[5] && A[5] == A[8]
          || A[0] == A[4] && A[4] == A[8] || A[2] == A[4] && A[4] == A[6]) {
    	if (player == 0) winA = true;
    	return 1;
    }
    else {
        for (int i = 0; i < 9; i++) {
          if (1 < A[i]){
        	  next_player = !playerA;
        	  return 0;
          }
        }
      }
  return 2;
}

/*
 * Return: Game status
 *  0 -> Game in progress
 *  1 -> Game over with winner
 *  2 -> Game over tie
 */
