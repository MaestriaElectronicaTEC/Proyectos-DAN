#include <systemc.h>
#include "stim.h"
#include "ALU.h"
#include "mon.h"

int sc_main(int argc, char* argv[]) 
{   
	sc_signal < sc_int<16> > A, B, F;   
	sc_signal < sc_int<5> > O;
	sc_signal <bool> carry;
	sc_signal <bool> overflow;
	sc_clock TestClk("TestClock", 10, SC_NS, 1, SC_NS);

	stim Stim1("Stimulus");   
	Stim1.inputA(A);   
	Stim1.inputB(B);
	Stim1.operation(O);
	Stim1.Clk(TestClk);

	alu A1("A");
	A1.inputA(A);
	A1.inputB(B);
	A1.operation(O);
	A1.result(F);
	A1.carry(carry);
	A1.overflow(overflow);

  	mon Monitor1("Monitor");   
	Monitor1.inputA(A);   
	Monitor1.inputB(B);   
	Monitor1.operation(O);
	Monitor1.result(F);
	Monitor1.Clk(TestClk);   
	Monitor1.carry(carry);
	Monitor1.overflow(overflow);

	sc_start();  // run forever  
	return 0;  
}
	
