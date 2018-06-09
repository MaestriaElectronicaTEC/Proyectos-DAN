#include "systemc.h" 
SC_MODULE(stim) 
{
	sc_out < sc_fixed<8,3,SC_TRN,SC_WRAP,0> > inputA, inputB;
	sc_fixed<8,3,SC_TRN,SC_WRAP,0> valA, valB;
	sc_in<bool> Clk;


	void StimGen()   
	{
		valA = ((float) 1.5);
		valB = ((float) 2.25);
		inputA.write(valA); 
		inputB.write(valB); 

		wait(10,SC_NS);

		valA = ((float) -0.25);
		valB = ((float) -0.65625);
		inputA.write(valA); 
		inputB.write(valB);

		wait(10,SC_NS);

		valA = ((float) 1.75);
		valB = ((float) 4.0);
		inputA.write(valA); 
		inputB.write(valB);

		wait(10,SC_NS);

		sc_stop();   
	}   

	SC_CTOR(stim)   {
		SC_THREAD(StimGen);
	} 
};
