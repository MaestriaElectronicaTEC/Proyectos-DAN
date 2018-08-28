#ifndef _CPP_GATO_H_
#define _CPP_GATO_H_

#include <stdint.h>
#include "ap_int.h"

int A[9] = { 2, 3, 2, 3, 2, 3, 3, 2, 3 };
ap_uint<2> gato_game(bool playerA, ap_uint<4> choice, bool &winA, bool &next_player);

#endif
