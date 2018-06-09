#include "iomanip"

SC_MODULE(mon) 
{     
	sc_in < sc_fixed<8,3,SC_TRN,SC_WRAP,0> > inputA, inputB, result;
	sc_in <bool> Clk;
	void monitor()   
	{     
		cout << std::setw(25) << "Time";     
		cout << std::setw(25) << "inputA";     
		cout << std::setw(25) << "inputB";          
		cout << std::setw(25) << "result" << endl; 
		int i=0;
		while(true){
			wait();
			cout << i;
			i++;
			cout << std::setw(25) << sc_time_stamp();
			cout << std::setw(25) << inputA;       
			cout << std::setw(25) << inputB;              
			cout << std::setw(25) << result << endl;
		}
	}

	SC_CTOR(mon)   {     
		SC_THREAD(monitor);
			sensitive << Clk.pos() ;
	} 
};
