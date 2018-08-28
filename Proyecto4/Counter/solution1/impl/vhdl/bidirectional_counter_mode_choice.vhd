-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bidirectional_counter_mode_choice is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    mode : IN STD_LOGIC;
    counter_out_i : IN STD_LOGIC_VECTOR (11 downto 0);
    counter_out_o : OUT STD_LOGIC_VECTOR (11 downto 0);
    counter_out_i_ap_vld : IN STD_LOGIC;
    counter_out_o_ap_vld : OUT STD_LOGIC;
    bidirectional_counter_count_V_i : IN STD_LOGIC_VECTOR (11 downto 0);
    bidirectional_counter_count_V_o : OUT STD_LOGIC_VECTOR (11 downto 0);
    bidirectional_counter_count_V_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of bidirectional_counter_mode_choice is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv12_FFF : STD_LOGIC_VECTOR (11 downto 0) := "111111111111";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";

    signal grp_read_fu_68_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_1_read_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_read_fu_80_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op29_read_state1 : BOOLEAN;
    signal ap_predicate_op41_read_state1 : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal v_V_2_fu_114_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal v_V_fu_122_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_NS_fsm_assign_proc : process (counter_out_i_ap_vld, ap_CS_fsm, ap_CS_fsm_state1, ap_predicate_op29_read_state1, ap_predicate_op41_read_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm <= ap_ST_fsm_state1;
    ap_CS_fsm_state1 <= ap_ST_fsm_state1(0);

    ap_block_state1_assign_proc : process(counter_out_i_ap_vld, ap_predicate_op29_read_state1, ap_predicate_op41_read_state1)
    begin
                ap_block_state1 <= (((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)));
    end process;


    ap_predicate_op29_read_state1_assign_proc : process(grp_read_fu_68_p2, tmp_1_read_fu_74_p2, tmp_2_read_fu_80_p2)
    begin
                ap_predicate_op29_read_state1 <= ((tmp_1_read_fu_74_p2 = ap_const_lv1_0) and (tmp_2_read_fu_80_p2 = ap_const_lv1_1) and (grp_read_fu_68_p2 = ap_const_lv1_1));
    end process;


    ap_predicate_op41_read_state1_assign_proc : process(grp_read_fu_68_p2, tmp_1_read_fu_74_p2, tmp_2_read_fu_80_p2)
    begin
                ap_predicate_op41_read_state1 <= ((tmp_2_read_fu_80_p2 = ap_const_lv1_1) and (tmp_1_read_fu_74_p2 = ap_const_lv1_1) and (grp_read_fu_68_p2 = ap_const_lv1_1));
    end process;


    bidirectional_counter_count_V_o_assign_proc : process(counter_out_i_ap_vld, bidirectional_counter_count_V_i, grp_read_fu_68_p2, ap_CS_fsm_state1, tmp_1_read_fu_74_p2, tmp_2_read_fu_80_p2, ap_predicate_op29_read_state1, ap_predicate_op41_read_state1, v_V_2_fu_114_p2, v_V_fu_122_p2)
    begin
        if ((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op41_read_state1 = ap_const_boolean_1))) then 
            bidirectional_counter_count_V_o <= v_V_fu_122_p2;
        elsif ((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op29_read_state1 = ap_const_boolean_1))) then 
            bidirectional_counter_count_V_o <= v_V_2_fu_114_p2;
        elsif (((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)))) then 
            bidirectional_counter_count_V_o <= ap_const_lv12_0;
        else 
            bidirectional_counter_count_V_o <= bidirectional_counter_count_V_i;
        end if; 
    end process;


    bidirectional_counter_count_V_o_ap_vld_assign_proc : process(counter_out_i_ap_vld, grp_read_fu_68_p2, ap_CS_fsm_state1, tmp_1_read_fu_74_p2, tmp_2_read_fu_80_p2, ap_predicate_op29_read_state1, ap_predicate_op41_read_state1)
    begin
        if (((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)))) then 
            bidirectional_counter_count_V_o_ap_vld <= ap_const_logic_1;
        else 
            bidirectional_counter_count_V_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    counter_out_o_assign_proc : process(counter_out_i, counter_out_i_ap_vld, grp_read_fu_68_p2, ap_CS_fsm_state1, tmp_1_read_fu_74_p2, tmp_2_read_fu_80_p2, ap_predicate_op29_read_state1, ap_predicate_op41_read_state1, v_V_2_fu_114_p2, v_V_fu_122_p2)
    begin
        if ((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op41_read_state1 = ap_const_boolean_1))) then 
            counter_out_o <= v_V_fu_122_p2;
        elsif ((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op29_read_state1 = ap_const_boolean_1))) then 
            counter_out_o <= v_V_2_fu_114_p2;
        elsif (((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)))) then 
            counter_out_o <= ap_const_lv12_0;
        else 
            counter_out_o <= counter_out_i;
        end if; 
    end process;


    counter_out_o_ap_vld_assign_proc : process(counter_out_i_ap_vld, grp_read_fu_68_p2, ap_CS_fsm_state1, tmp_1_read_fu_74_p2, tmp_2_read_fu_80_p2, ap_predicate_op29_read_state1, ap_predicate_op41_read_state1)
    begin
        if (((not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)) or (not((((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op41_read_state1 = ap_const_boolean_1)) or ((counter_out_i_ap_vld = ap_const_logic_0) and (ap_predicate_op29_read_state1 = ap_const_boolean_1)))) and (tmp_2_read_fu_80_p2 = ap_const_lv1_0) and (tmp_1_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (grp_read_fu_68_p2 = ap_const_lv1_1)))) then 
            counter_out_o_ap_vld <= ap_const_logic_1;
        else 
            counter_out_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_read_fu_68_p2 <= (0=>enable, others=>'-');
    tmp_1_read_fu_74_p2 <= (0=>mode, others=>'-');
    tmp_2_read_fu_80_p2 <= (0=>reset, others=>'-');
    v_V_2_fu_114_p2 <= std_logic_vector(unsigned(bidirectional_counter_count_V_i) + unsigned(ap_const_lv12_FFF));
    v_V_fu_122_p2 <= std_logic_vector(unsigned(bidirectional_counter_count_V_i) + unsigned(ap_const_lv12_1));
end behav;