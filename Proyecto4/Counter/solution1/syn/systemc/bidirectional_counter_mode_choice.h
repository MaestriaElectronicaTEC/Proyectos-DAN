// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bidirectional_counter_mode_choice_HH_
#define _bidirectional_counter_mode_choice_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct bidirectional_counter_mode_choice : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > enable;
    sc_in< sc_logic > mode;
    sc_in< sc_lv<12> > counter_out_i;
    sc_out< sc_lv<12> > counter_out_o;
    sc_in< sc_logic > counter_out_i_ap_vld;
    sc_out< sc_logic > counter_out_o_ap_vld;
    sc_in< sc_lv<12> > bidirectional_counter_count_V_i;
    sc_out< sc_lv<12> > bidirectional_counter_count_V_o;
    sc_out< sc_logic > bidirectional_counter_count_V_o_ap_vld;


    // Module declarations
    bidirectional_counter_mode_choice(sc_module_name name);
    SC_HAS_PROCESS(bidirectional_counter_mode_choice);

    ~bidirectional_counter_mode_choice();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > grp_read_fu_68_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_1_read_fu_74_p2;
    sc_signal< sc_lv<1> > tmp_2_read_fu_80_p2;
    sc_signal< bool > ap_predicate_op29_read_state1;
    sc_signal< bool > ap_predicate_op41_read_state1;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<12> > v_V_2_fu_114_p2;
    sc_signal< sc_lv<12> > v_V_fu_122_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_FFF;
    static const sc_lv<12> ap_const_lv12_1;
    // Thread declarations
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_predicate_op29_read_state1();
    void thread_ap_predicate_op41_read_state1();
    void thread_bidirectional_counter_count_V_o();
    void thread_bidirectional_counter_count_V_o_ap_vld();
    void thread_counter_out_o();
    void thread_counter_out_o_ap_vld();
    void thread_grp_read_fu_68_p2();
    void thread_tmp_1_read_fu_74_p2();
    void thread_tmp_2_read_fu_80_p2();
    void thread_v_V_2_fu_114_p2();
    void thread_v_V_fu_122_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
