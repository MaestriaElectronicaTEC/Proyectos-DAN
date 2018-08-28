#include <iostream>
#include <stdint.h>
#include "ap_int.h"
#include "gato.h"

using namespace std;

bool playerA = false;
bool next_player;
ap_uint<4> choice;
bool winA = false;
ap_uint<2> gameover;

int
main ()
{
  int player = 0;

  do {
    draw ();
    cout << "Player " << player % 2 << ", enter a number:  ";
    cin >> choice;
    gameover = gato_game(playerA, choice, winA, next_player);
    playerA = next_player;
  } while (gameover == 0);

  draw ();
  if (gameover == 1)
	  (winA) ? cout << "==>\aPlayer A wins " : cout << "==>\aPlayer B wins ";
  else
    cout << "==>\aGame draw";
  cin.ignore ();
  cin.get ();
  return 0;
}

/*
 * Return: Game status
 *  0 -> Game in progress
 *  1 -> Game over with winner
 *  2 -> Game over tie
 */

void
draw ()
{
  cout << "\n\n\tTic Tac Toe\n\n";
  cout << "Player 0 (O) - Player 1 (X)" << endl << endl;
  cout << endl;
  cout << "     |     |     " << endl;
  cout << "  " << symbol (A[0]) << "  |  " << symbol (A[1]) << "  |  " <<
      symbol (A[2]) << endl;
  cout << "_____|_____|_____" << endl;
  cout << "     |     |     " << endl;
  cout << "  " << symbol (A[3]) << "  |  " << symbol (A[4]) << "  |  " <<
      symbol (A[5]) << endl;
  cout << "_____|_____|_____" << endl;
  cout << "     |     |     " << endl;
  cout << "  " << symbol (A[6]) << "  |  " << symbol (A[7]) << "  |  " <<
      symbol (A[8]) << endl;
  cout << "     |     |     " << endl << endl;
}


char
symbol (int n)
{
  switch (n) {
    case 0:
      return 'O';
    case 1:
      return 'X';
    default:
      return ' ';
  }
}
