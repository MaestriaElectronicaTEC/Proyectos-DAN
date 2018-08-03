#include <systemc.h>

#define MAX_POSITIVE_NUMBER_16BITS 32767 	// 2^(15)
#define MAX_NEGATIVE_NUMBER_16BITS -32768 // -2^(15)

SC_MODULE(alu)
{
	// Inputs
	sc_in < sc_int<16> > inputA; 
	sc_in < sc_int<16> > inputB; 
	sc_out < sc_int<16> > result;			// Output
	sc_in < sc_int<5> > operation;			// Operation Selector

	sc_out < bool > overflow;				// Overflow Flag
	sc_out < bool > carry;					// Carry Flag

	sc_int<16> dataA, dataB, res;
	sc_int<17> dataA18, dataB18, real_res;

	void operate()
	{
		overflow = false;
		carry = false;
		dataA = inputA.read();
		dataB = inputB.read();
		
		switch(operation.read())
		{
			// Addition
			case 0:
				res = dataA + dataB;
				dataA18 = (sc_int<17>)dataA;
				dataB18 = (sc_int<17>)dataB;
				real_res = dataA18 + dataB18;
				carry = (real_res[15] == 1) ? true : false;
				if((dataA[15] == dataB[15]) && (dataA[15] != res[15]))
					overflow = true;
				break;
			// Substraction	
			case 1:
				res = dataA - dataB;
				carry = (real_res[15] == 1) ? true : false;
				if((dataA[15] != dataB[15]) && (dataB[15] == res[15]))
					overflow = true;
				break;
			// Multiplication
			case 2:
				if(real_res > MAX_POSITIVE_NUMBER_16BITS)
						overflow = true;
				res = dataA * dataB;
				break;
			// Division
			case 3:
				res = dataA / dataB;
				break;
			// OR
			case 4:
				res = dataA || dataB;
				break;
			// AND
			case 5:
				res = dataA && dataB;
				break;
			// XOR
			case 6:
				res = dataA ^ dataB;
				break;
			// Shift Right
			case 7:
				res = dataA >> dataB;
				break;
			// Shift Left
			case 8:
				res = dataA << dataB;
				break;	
			// Negate A
			case 9:
				res = ~dataA;
				break;
			// Negate B
			case 10:
				res = ~dataB;
				break;			
		}
		result.write(res);
	}
	
	SC_CTOR(alu)
	{
		SC_METHOD(operate);
			sensitive << inputA << inputB << operation;
	}

};