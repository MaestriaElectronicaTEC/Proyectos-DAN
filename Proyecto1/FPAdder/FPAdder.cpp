#include <systemc.h>
#include "stim.h"
#include "FPAdder.h"
#include "mon.h"

int sc_main(int argc, char* argv[]) 
{   
	sc_signal < sc_fixed<8,3,SC_TRN,SC_WRAP,0> > A, B, F;   
	sc_clock TestClk("TestClock", 10, SC_NS, 1, SC_NS);

	stim Stim1("Stimulus");   
	Stim1.inputA(A);   
	Stim1.inputB(B);
	Stim1.Clk(TestClk);

	fpAdder A1("A");
	A1.inputA(A);
	A1.inputB(B);
	A1.result(F);

  	mon Monitor1("Monitor");   
	Monitor1.inputA(A);   
	Monitor1.inputB(B);   
	Monitor1.result(F);
	Monitor1.Clk(TestClk);   

	sc_start();  
	return 0;  
}