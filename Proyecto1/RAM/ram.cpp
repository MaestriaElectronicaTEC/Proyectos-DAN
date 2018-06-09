#include "ram.h"

void  ram::READ () {
  if (cs.read() && oe.read() && !we.read()) {
    data = mem[address.read()];
    cout<<"READ ADDR: "<<address.read()<<" DATA:"<<data<<endl;
  }
}

void  ram::WRITE () {
  if (cs.read() && we.read()) {
    mem[address.read()] = data.read();
    cout<<"READ ADDR: "<<address.read()<<" DATA:"<<data.read()<<endl;
  } 
}
