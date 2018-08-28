-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity StateMachine is
port (
    clock : IN STD_LOGIC;
    key : IN STD_LOGIC_VECTOR (7 downto 0);
    current_state_i : IN STD_LOGIC_VECTOR (11 downto 0);
    current_state_o : OUT STD_LOGIC_VECTOR (11 downto 0);
    ap_rst : IN STD_LOGIC );
end;


architecture behav of StateMachine is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "StateMachine,hls_ip_2018_2,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.551700,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=24,HLS_SYN_LUT=137,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal StateMachine_ssdm_load_fu_56_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal grp_StateMachine_getNextState_fu_44_current_state_o : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld : STD_LOGIC;
    signal grp_StateMachine_getNextState_fu_44_StateMachine_state_V : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_StateMachine_getNextState_fu_44_StateMachine_state_V_ap_vld : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";

    component StateMachine_getNextState IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        key : IN STD_LOGIC_VECTOR (7 downto 0);
        current_state_i : IN STD_LOGIC_VECTOR (11 downto 0);
        current_state_i_ap_vld : IN STD_LOGIC;
        current_state_o : OUT STD_LOGIC_VECTOR (11 downto 0);
        current_state_o_ap_vld : OUT STD_LOGIC;
        StateMachine_state_V : OUT STD_LOGIC_VECTOR (11 downto 0);
        StateMachine_state_V_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_StateMachine_getNextState_fu_44 : component StateMachine_getNextState
    port map (
        ap_clk => clock,
        ap_rst => ap_rst,
        key => key,
        current_state_i => current_state_i,
        current_state_i_ap_vld => ap_const_logic_1,
        current_state_o => grp_StateMachine_getNextState_fu_44_current_state_o,
        current_state_o_ap_vld => grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld,
        StateMachine_state_V => grp_StateMachine_getNextState_fu_44_StateMachine_state_V,
        StateMachine_state_V_ap_vld => grp_StateMachine_getNextState_fu_44_StateMachine_state_V_ap_vld);





    current_state_o_assign_proc : process(clock)
    begin
        if (clock'event and clock =  '1') then
            if ((grp_StateMachine_getNextState_fu_44_current_state_o_ap_vld = ap_const_logic_1)) then 
                current_state_o <= grp_StateMachine_getNextState_fu_44_current_state_o;
            else 
                current_state_o <= current_state_i;
            end if; 
        end if;
    end process;

    StateMachine_ssdm_load_fu_56_p1 <= ap_const_lv1_0;
    ap_CS_fsm <= ap_const_lv2_0;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
end behav;