// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "StateMachine.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic StateMachine::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<1> StateMachine::ap_const_lv1_0 = "0";
const sc_lv<32> StateMachine::ap_const_lv32_1 = "1";
const sc_lv<1> StateMachine::ap_const_lv1_1 = "1";
const sc_lv<2> StateMachine::ap_const_lv2_0 = "00";
const sc_logic StateMachine::ap_const_logic_0 = sc_dt::Log_0;
const bool StateMachine::ap_const_boolean_1 = true;

StateMachine::StateMachine(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_StateMachine_getNextState_fu_44 = new StateMachine_getNextState("grp_StateMachine_getNextState_fu_44");
    grp_StateMachine_getNextState_fu_44->ap_clk(clock);
    grp_StateMachine_getNextState_fu_44->ap_rst(ap_rst);
    grp_StateMachine_getNextState_fu_44->key(key);
    grp_StateMachine_getNextState_fu_44->current_state_i(current_state_i);
    grp_StateMachine_getNextState_fu_44->current_state_i_ap_vld(ap_var_for_const0);
    grp_StateMachine_getNextState_fu_44->current_state_o(grp_StateMachine_getNextState_fu_44_current_state_o);
    grp_StateMachine_getNextState_fu_44->current_state_o_ap_vld(grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld);
    grp_StateMachine_getNextState_fu_44->StateMachine_state_V(grp_StateMachine_getNextState_fu_44_StateMachine_state_V);
    grp_StateMachine_getNextState_fu_44->StateMachine_state_V_ap_vld(grp_StateMachine_getNextState_fu_44_StateMachine_state_V_ap_vld);

    SC_METHOD(thread_current_state_o);
    dont_initialize();
    sensitive << ( clock.pos() );

    SC_METHOD(thread_StateMachine_ssdm_load_fu_56_p1);

    SC_METHOD(thread_ap_CS_fsm);

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( clock.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "StateMachine_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, clock, "(port)clock");
    sc_trace(mVcdFile, key, "(port)key");
    sc_trace(mVcdFile, current_state_i, "(port)current_state_i");
    sc_trace(mVcdFile, current_state_o, "(port)current_state_o");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, StateMachine_ssdm_load_fu_56_p1, "StateMachine_ssdm_load_fu_56_p1");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, grp_StateMachine_getNextState_fu_44_current_state_o, "grp_StateMachine_getNextState_fu_44_current_state_o");
    sc_trace(mVcdFile, grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld, "grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld");
    sc_trace(mVcdFile, grp_StateMachine_getNextState_fu_44_StateMachine_state_V, "grp_StateMachine_getNextState_fu_44_StateMachine_state_V");
    sc_trace(mVcdFile, grp_StateMachine_getNextState_fu_44_StateMachine_state_V_ap_vld, "grp_StateMachine_getNextState_fu_44_StateMachine_state_V_ap_vld");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
#endif

    }
    mHdltvinHandle.open("StateMachine.hdltvin.dat");
    mHdltvoutHandle.open("StateMachine.hdltvout.dat");
}

StateMachine::~StateMachine() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_StateMachine_getNextState_fu_44;
}

void StateMachine::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void StateMachine::thread_current_state_o() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld.read())) {
        current_state_o = grp_StateMachine_getNextState_fu_44_current_state_o.read();
    } else {
        current_state_o = current_state_i.read();
    }
}

void StateMachine::thread_StateMachine_ssdm_load_fu_56_p1() {
    StateMachine_ssdm_load_fu_56_p1 = ap_const_lv1_0;
}

void StateMachine::thread_ap_CS_fsm() {
    ap_CS_fsm = ap_const_lv2_0;
}

void StateMachine::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void StateMachine::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"key\" :  \"" << key.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"current_state_i\" :  \"" << current_state_i.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"current_state_o\" :  \"" << current_state_o.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
