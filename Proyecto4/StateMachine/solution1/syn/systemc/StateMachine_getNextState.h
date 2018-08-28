// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _StateMachine_getNextState_HH_
#define _StateMachine_getNextState_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct StateMachine_getNextState : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > key;
    sc_in< sc_lv<12> > current_state_i;
    sc_in< sc_logic > current_state_i_ap_vld;
    sc_out< sc_lv<12> > current_state_o;
    sc_out< sc_logic > current_state_o_ap_vld;
    sc_out< sc_lv<12> > StateMachine_state_V;
    sc_out< sc_logic > StateMachine_state_V_ap_vld;


    // Module declarations
    StateMachine_getNextState(sc_module_name name);
    SC_HAS_PROCESS(StateMachine_getNextState);

    ~StateMachine_getNextState();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<12> > val_V_read_fu_66_p2;
    sc_signal< sc_lv<12> > ap_phi_mux_v_V_phi_fu_96_p18;
    sc_signal< sc_lv<12> > v_V_reg_92;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > storemerge_cast_cast_fu_152_p3;
    sc_signal< sc_lv<12> > storemerge1_cast_cas_fu_161_p3;
    sc_signal< sc_lv<1> > grp_fu_122_p2;
    sc_signal< sc_lv<12> > p_val_V_cast_fu_170_p3;
    sc_signal< sc_lv<12> > p_val_V1_cast_fu_143_p3;
    sc_signal< sc_lv<12> > p_val_V2_cast_fu_134_p3;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > grp_fu_128_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<12> ap_const_lv12_4;
    static const sc_lv<12> ap_const_lv12_3;
    static const sc_lv<12> ap_const_lv12_2;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<8> ap_const_lv8_61;
    static const sc_lv<8> ap_const_lv8_62;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_StateMachine_state_V();
    void thread_StateMachine_state_V_ap_vld();
    void thread_ap_CS_fsm();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_phi_mux_v_V_phi_fu_96_p18();
    void thread_current_state_o();
    void thread_current_state_o_ap_vld();
    void thread_grp_fu_122_p2();
    void thread_grp_fu_128_p2();
    void thread_p_val_V1_cast_fu_143_p3();
    void thread_p_val_V2_cast_fu_134_p3();
    void thread_p_val_V_cast_fu_170_p3();
    void thread_storemerge1_cast_cas_fu_161_p3();
    void thread_storemerge_cast_cast_fu_152_p3();
    void thread_val_V_read_fu_66_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif