-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity StateMachine_getNextState is
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
end;


architecture behav of StateMachine_getNextState is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv12_4 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_const_lv12_3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000011";
    constant ap_const_lv12_2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv8_61 : STD_LOGIC_VECTOR (7 downto 0) := "01100001";
    constant ap_const_lv8_62 : STD_LOGIC_VECTOR (7 downto 0) := "01100010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal val_V_read_fu_66_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_phi_mux_v_V_phi_fu_96_p18 : STD_LOGIC_VECTOR (11 downto 0);
    signal v_V_reg_92 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal storemerge_cast_cast_fu_152_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal storemerge1_cast_cas_fu_161_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_val_V_cast_fu_170_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_val_V1_cast_fu_143_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_val_V2_cast_fu_134_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    v_V_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((current_state_i_ap_vld = ap_const_logic_1) and (grp_fu_122_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_4))) then 
                v_V_reg_92 <= p_val_V2_cast_fu_134_p3;
            elsif (((current_state_i_ap_vld = ap_const_logic_1) and (grp_fu_122_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_3))) then 
                v_V_reg_92 <= p_val_V1_cast_fu_143_p3;
            elsif (((current_state_i_ap_vld = ap_const_logic_1) and (grp_fu_122_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_0))) then 
                v_V_reg_92 <= p_val_V_cast_fu_170_p3;
            elsif ((((current_state_i_ap_vld = ap_const_logic_1) and (grp_fu_122_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_0)) or ((current_state_i_ap_vld = ap_const_logic_1) and (grp_fu_122_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_3)) or ((current_state_i_ap_vld = ap_const_logic_1) and (grp_fu_122_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_4)))) then 
                v_V_reg_92 <= ap_const_lv12_1;
            elsif (((current_state_i_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_1))) then 
                v_V_reg_92 <= storemerge1_cast_cas_fu_161_p3;
            elsif (((current_state_i_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_2))) then 
                v_V_reg_92 <= storemerge_cast_cast_fu_152_p3;
            elsif ((not((val_V_read_fu_66_p2 = ap_const_lv12_0)) and not((val_V_read_fu_66_p2 = ap_const_lv12_1)) and not((val_V_read_fu_66_p2 = ap_const_lv12_2)) and not((val_V_read_fu_66_p2 = ap_const_lv12_3)) and not((val_V_read_fu_66_p2 = ap_const_lv12_4)) and (current_state_i_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                v_V_reg_92 <= current_state_i;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (current_state_i_ap_vld, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((current_state_i_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    StateMachine_state_V <= v_V_reg_92;

    StateMachine_state_V_ap_vld_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            StateMachine_state_V_ap_vld <= ap_const_logic_1;
        else 
            StateMachine_state_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm <= ap_ST_fsm_state1;
    ap_CS_fsm_state1 <= ap_ST_fsm_state1(0);
    ap_CS_fsm_state2 <= ap_ST_fsm_state1(1);

    ap_phi_mux_v_V_phi_fu_96_p18_assign_proc : process(current_state_i, val_V_read_fu_66_p2, ap_CS_fsm_state1, storemerge_cast_cast_fu_152_p3, storemerge1_cast_cas_fu_161_p3, grp_fu_122_p2, p_val_V_cast_fu_170_p3, p_val_V1_cast_fu_143_p3, p_val_V2_cast_fu_134_p3)
    begin
        if (((grp_fu_122_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_4))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= p_val_V2_cast_fu_134_p3;
        elsif (((grp_fu_122_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_3))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= p_val_V1_cast_fu_143_p3;
        elsif (((grp_fu_122_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_0))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= p_val_V_cast_fu_170_p3;
        elsif ((((grp_fu_122_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_0)) or ((grp_fu_122_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_3)) or ((grp_fu_122_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_4)))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= ap_const_lv12_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_1))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= storemerge1_cast_cas_fu_161_p3;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (val_V_read_fu_66_p2 = ap_const_lv12_2))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= storemerge_cast_cast_fu_152_p3;
        elsif ((not((val_V_read_fu_66_p2 = ap_const_lv12_0)) and not((val_V_read_fu_66_p2 = ap_const_lv12_1)) and not((val_V_read_fu_66_p2 = ap_const_lv12_2)) and not((val_V_read_fu_66_p2 = ap_const_lv12_3)) and not((val_V_read_fu_66_p2 = ap_const_lv12_4)) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_phi_mux_v_V_phi_fu_96_p18 <= current_state_i;
        else 
            ap_phi_mux_v_V_phi_fu_96_p18 <= "XXXXXXXXXXXX";
        end if; 
    end process;

    current_state_o <= ap_phi_mux_v_V_phi_fu_96_p18;

    current_state_o_ap_vld_assign_proc : process(current_state_i_ap_vld, ap_CS_fsm_state1)
    begin
        if (((current_state_i_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            current_state_o_ap_vld <= ap_const_logic_1;
        else 
            current_state_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_122_p2 <= "1" when (key = ap_const_lv8_61) else "0";
    grp_fu_128_p2 <= "1" when (key = ap_const_lv8_62) else "0";
    p_val_V1_cast_fu_143_p3 <= 
        ap_const_lv12_4 when (grp_fu_128_p2(0) = '1') else 
        ap_const_lv12_3;
    p_val_V2_cast_fu_134_p3 <= 
        ap_const_lv12_2 when (grp_fu_128_p2(0) = '1') else 
        ap_const_lv12_4;
    p_val_V_cast_fu_170_p3 <= 
        ap_const_lv12_2 when (grp_fu_128_p2(0) = '1') else 
        ap_const_lv12_0;
    storemerge1_cast_cas_fu_161_p3 <= 
        ap_const_lv12_3 when (grp_fu_128_p2(0) = '1') else 
        ap_const_lv12_1;
    storemerge_cast_cast_fu_152_p3 <= 
        ap_const_lv12_1 when (grp_fu_122_p2(0) = '1') else 
        ap_const_lv12_2;
    val_V_read_fu_66_p2 <= current_state_i;
end behav;
