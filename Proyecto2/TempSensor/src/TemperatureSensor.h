/*
 * TemperatureSensor.h
 *
 *  Created on: Aug 3, 2018
 *      Author: luis
 */

#include <systemc.h>
#include <systemc-ams.h>

SC_MODULE(TemperatureSensor) // Air sensor model using ELN primitive modules
{

  sca_tdf::sca_in< double > in;
  sca_eln::sca_terminal out;
  sca_eln::sca_node_ref gnd;
  sca_eln::sca_tdf_isource *i1; // current source declaration
  sca_eln::sca_r *r1; // resistor declaration

  SC_CTOR(TemperatureSensor) // standard constructor
  {
    r1 = new sca_eln::sca_r ( "r1" ); // resistor instantiation
    r1->p ( out );
    r1->n ( gnd );
    i1 = new sca_eln::sca_tdf_isource ( "i1", 0.025 ); // current source Instantiation
    r1->value = 1; // R=1 ohm
    i1->p ( gnd );
    i1->n ( out ); // 0.0-3.25 (V)
    i1->inp ( in );
  }
};
