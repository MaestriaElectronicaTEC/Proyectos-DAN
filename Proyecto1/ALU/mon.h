#include "iomanip"

SC_MODULE(mon) 
{     
	sc_in<bool> carry;
	sc_in<bool> overflow;
	sc_in < sc_int<16> > inputA, inputB, result;
	sc_in < sc_int<5> > operation;
	sc_in <bool> Clk;


	void monitor()   
	{     
		char ops[12][5] = {"ADD ", "ADD ", "SUB ", "MULT", "DIV ", "OR  ", "AND ", "XOR ", "ShR ", "ShL ", "NegA", "NegB"};
		cout << std::setw(15) << "Time";     
		cout << std::setw(15) << "inputA";     
		cout << std::setw(15) << "inputB";         
		cout << std::setw(15) << "result"; 
		cout << std::setw(15) << "carry";
		cout << std::setw(15) << "overflow" << endl; 
		int i=0;
		while(true){
			wait();
			cout << operation << ": " << ops[i];
			i++;
			cout << std::setw(10) << sc_time_stamp();
			cout << std::setw(12) << inputA;       
			cout << std::setw(13) << inputB;            
			cout << std::setw(15) << result;
			cout << std::setw(16) << carry.read();
			cout << std::setw(17) << overflow.read() << endl;
		}
	}

	SC_CTOR(mon)   {     
		SC_THREAD(monitor);
			sensitive << Clk.pos() ;
	} 
};
