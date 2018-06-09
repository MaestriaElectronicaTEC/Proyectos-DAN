#include "systemc.h" 
SC_MODULE(stim) 
{
	sc_out < sc_int<16> > inputA, inputB;
	sc_out < sc_int<5> > operation;
	sc_in<bool> Clk;

	void StimGen()   
	{
		//ADD
		inputA.write(0b100);     
		inputB.write(0b010);
		operation.write(0);

		wait(10,SC_NS);

		//ADD
		inputA.write(32767);     
		inputB.write(1);
		operation.write(0);

		wait(10,SC_NS);

		//SUB
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(1);

		wait(10,SC_NS);

		//MULT
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(2);

		wait(10,SC_NS);

		//DIV
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(3);

		wait(10,SC_NS);

		//OR
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(4);

		wait(10,SC_NS);

		//AND
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(5);

		wait(10,SC_NS);

		//XOR
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(6);

		wait(10,SC_NS);

		//ShL
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(7);

		wait(10,SC_NS);

		//ShR
		inputA.write(0b111);     
		inputB.write(0b001);
		operation.write(8);

		wait(10,SC_NS);

		//NegA
		inputA.write(0b111);     
		//inputB.write(0b001);
		operation.write(9);

		wait(10,SC_NS);

		//NegA
		//inputA.write(0b111);     
		inputB.write(1);
		operation.write(10);

		wait(10,SC_NS);

		sc_stop();   
	}   

	SC_CTOR(stim)   {
		SC_THREAD(StimGen);
	} 
};
