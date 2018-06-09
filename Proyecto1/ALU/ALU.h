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
				dataA18[16] = dataA[15];	// Sign copy
				dataB18[16] = dataB[15];	// Sign copy
				dataA18[15] = dataA[14];	// Sign copy
				dataB18[15] = dataB[14];	// Sign copy
				for(int i = 0; i < 14; i++)
				{
					dataA18[i] = dataA[i];
					dataB18[i] = dataB[i];
				}
				real_res = dataA18 + dataB18;
				/*cout << "real_res[0]: " <<  real_res[0] << endl;
				cout << "real_res[1]: " <<  real_res[1] << endl;
				cout << "real_res[2]: " <<  real_res[2] << endl;
				cout << "real_res[3]: " <<  real_res[3] << endl;
				cout << "real_res[4]: " <<  real_res[4] << endl;
				cout << "real_res[5]: " <<  real_res[5] << endl;
				cout << "real_res[6]: " <<  real_res[6] << endl;
				cout << "real_res[7]: " <<  real_res[7] << endl;
				cout << "real_res[8]: " <<  real_res[8] << endl;
				cout << "real_res[9]: " <<  real_res[9] << endl;
				cout << "real_res[10]: " << real_res[10] << endl;
				cout << "real_res[11]: " << real_res[11] << endl;
				cout << "real_res[12]: " << real_res[12] << endl;
				cout << "real_res[13]: " << real_res[13] << endl;
				cout << "real_res[14]: " << real_res[14] << endl;
				cout << "real_res[15]: " << real_res[15] << endl;
				cout << "real_res[16]: " << real_res[16] << endl;*/
				carry = (real_res[15] == 1 && real_res[16] == 0) ? true : false;
				if((dataA[15] == dataB[15]) && (dataA[15] != res[15]))
					overflow = true;
				break;
			// Substraction	
			case 1:
				res = dataA - dataB;
				carry = (real_res[16] == 1) ? true : false;
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