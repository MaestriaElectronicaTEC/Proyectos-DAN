/*
 * TemperatureSensor.cpp
 *
 *  Created on: Aug 3, 2018
 *      Author: mtaylor
 */
#include "TemperatureSensor.h"


void  TemperatureSensor::PROC () {
	double scaled_in;
	int digits;

	/* Map input to desired range [-40,40]->[-50,260] */
	scaled_in = 3.875*in.read()+105;

	/* Rise temperature warning if T > 60°C */
	tmp_warn = (scaled_in>60);

	/* Convert input */
	switch(mode.read()) {
		case 1: //K
			scaled_in +=273;
			break;
		case 2: //F
			scaled_in = 1.8*scaled_in+32;
			break;
	    default: //C
			break;
	}

	/* set the output */
	oe = 0;
	neg = (scaled_in<0);
	digits = (uint) scaled_in;
	d0 = (uint) digits%10;
	digits = digits/10;
	d1 = (uint) digits%10;
	digits = digits/10;
	d2 = (uint) digits%10;
	oe = 1;
}
