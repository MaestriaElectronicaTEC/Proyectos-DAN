#include <systemc.h>

SC_MODULE(fpAdder)
{
	sc_in < sc_fixed<8,3,SC_TRN,SC_WRAP,0> > inputA; 
	sc_in < sc_fixed<8,3,SC_TRN,SC_WRAP,0> > inputB; 
	sc_out < sc_fixed<8,3,SC_TRN,SC_WRAP,0> > result;

	sc_fixed<8,3,SC_TRN,SC_WRAP,0> dataA, dataB, res;

	void operate()
	{
		dataA = inputA.read();
		dataB = inputB.read();
	 	res = (dataA + dataB);
	 	result.write(res);
	}

	SC_CTOR(fpAdder)
	{
		SC_METHOD(operate);
			sensitive << inputA << inputB;
	}
};