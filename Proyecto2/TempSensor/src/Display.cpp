/*
 * Display.cpp
 *
 *  Created on: Aug 3, 2018
 *      Author: mtaylor
 */
#include "Display.h"

void  Display::PROC () {
  if (oe){
	  if (neg.read()){
		  cout<<"T= -"<<d2.read()<<d1.read()<<d0.read()<<endl;
	  }
	  else{
		  cout<<"T= "<<d2.read()<<d1.read()<<d0.read()<<endl;
	  }
  }
}

