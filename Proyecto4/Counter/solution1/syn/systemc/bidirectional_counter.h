// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bidirectional_counter_HH_
#define _bidirectional_counter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "bidirectional_counter_mode_choice.h"

namespace ap_rtl {

struct bidirectional_counter : public sc_module {
    // Port declarations 7
    sc_in_clk clock;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > enable;
    sc_in< sc_logic > mode;
    sc_in< sc_lv<12> > counter_out_i;
    sc_out< sc_lv<12> > counter_out_o;
    sc_in< sc_logic > ap_rst;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    bidirectional_counter(sc_module_name name);
    SC_HAS_PROCESS(bidirectional_counter);

    ~bidirectional_counter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    bidirectional_counter_mode_choice* StgValue_12_bidirectional_counter_mode_choice_fu_52;
    sc_signal< sc_lv<1> > bidirectional_counte_load_fu_68_p1;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_lv<12> > StgValue_12_bidirectional_counter_mode_choice_fu_52_counter_out_o;
    sc_signal< sc_logic > StgValue_12_bidirectional_counter_mode_choice_fu_52_counter_out_o_ap_vld;
    sc_signal< sc_lv<12> > StgValue_12_bidirectional_counter_mode_choice_fu_52_bidirectional_counter_count_V_o;
    sc_signal< sc_logic > StgValue_12_bidirectional_counter_mode_choice_fu_52_bidirectional_counter_count_V_o_ap_vld;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<12> > bidirectional_counter_count_V;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_bidirectional_counter_count_V();
    void thread_counter_out_o();
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state2();
    void thread_bidirectional_counte_load_fu_68_p1();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
