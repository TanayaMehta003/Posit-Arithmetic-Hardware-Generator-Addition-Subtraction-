-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder_decoder_Pipeline_decoder_label8 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    mant1_new_new_V_1_reload : IN STD_LOGIC_VECTOR (28 downto 0);
    mant2_new_V_1_reload : IN STD_LOGIC_VECTOR (28 downto 0);
    mant2_final_V_7_out : OUT STD_LOGIC_VECTOR (28 downto 0);
    mant2_final_V_7_out_ap_vld : OUT STD_LOGIC;
    mant1_final_V_7_out : OUT STD_LOGIC_VECTOR (28 downto 0);
    mant1_final_V_7_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of decoder_decoder_Pipeline_decoder_label8 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_1D : STD_LOGIC_VECTOR (4 downto 0) := "11101";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln189_fu_98_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_Val2_s_fu_42 : STD_LOGIC_VECTOR (28 downto 0);
    signal p_Result_20_fu_131_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_Val2_11_fu_46 : STD_LOGIC_VECTOR (28 downto 0);
    signal p_Result_21_fu_148_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal j_fu_50 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_4_fu_104_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln779_fu_120_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal trunc_ln779_7_cast_fu_116_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_124_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_18_fu_141_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component decoder_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component decoder_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    j_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_50 <= ap_const_lv5_0;
                elsif (((icmp_ln189_fu_98_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_50 <= j_4_fu_104_p2;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_11_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    p_Val2_11_fu_46 <= ap_const_lv29_0;
                elsif (((icmp_ln189_fu_98_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    p_Val2_11_fu_46 <= p_Result_21_fu_148_p4;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_s_fu_42_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    p_Val2_s_fu_42 <= ap_const_lv29_0;
                elsif (((icmp_ln189_fu_98_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    p_Val2_s_fu_42 <= p_Result_20_fu_131_p4;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln189_fu_98_p2)
    begin
        if (((icmp_ln189_fu_98_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln189_fu_98_p2 <= "1" when (j_fu_50 = ap_const_lv5_1D) else "0";
    j_4_fu_104_p2 <= std_logic_vector(unsigned(j_fu_50) + unsigned(ap_const_lv5_1));
    mant1_final_V_7_out <= p_Val2_s_fu_42;

    mant1_final_V_7_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln189_fu_98_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln189_fu_98_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mant1_final_V_7_out_ap_vld <= ap_const_logic_1;
        else 
            mant1_final_V_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    mant2_final_V_7_out <= p_Val2_11_fu_46;

    mant2_final_V_7_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln189_fu_98_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln189_fu_98_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mant2_final_V_7_out_ap_vld <= ap_const_logic_1;
        else 
            mant2_final_V_7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_18_fu_141_p3 <= mant2_new_V_1_reload(to_integer(unsigned(zext_ln779_fu_120_p1)) downto to_integer(unsigned(zext_ln779_fu_120_p1))) when (to_integer(unsigned(zext_ln779_fu_120_p1)) >= 0 and to_integer(unsigned(zext_ln779_fu_120_p1)) <=28) else "-";
    
    p_Result_20_fu_131_p4_proc : process(p_Val2_s_fu_42, trunc_ln779_7_cast_fu_116_p1, p_Result_s_fu_124_p3)
    begin
        p_Result_20_fu_131_p4 <= p_Val2_s_fu_42;
        if to_integer(unsigned(trunc_ln779_7_cast_fu_116_p1)) >= p_Val2_s_fu_42'low and to_integer(unsigned(trunc_ln779_7_cast_fu_116_p1)) <= p_Val2_s_fu_42'high then
            p_Result_20_fu_131_p4(to_integer(unsigned(trunc_ln779_7_cast_fu_116_p1))) <= p_Result_s_fu_124_p3(0);
        end if;
    end process;

    
    p_Result_21_fu_148_p4_proc : process(p_Val2_11_fu_46, trunc_ln779_7_cast_fu_116_p1, p_Result_18_fu_141_p3)
    begin
        p_Result_21_fu_148_p4 <= p_Val2_11_fu_46;
        if to_integer(unsigned(trunc_ln779_7_cast_fu_116_p1)) >= p_Val2_11_fu_46'low and to_integer(unsigned(trunc_ln779_7_cast_fu_116_p1)) <= p_Val2_11_fu_46'high then
            p_Result_21_fu_148_p4(to_integer(unsigned(trunc_ln779_7_cast_fu_116_p1))) <= p_Result_18_fu_141_p3(0);
        end if;
    end process;

    p_Result_s_fu_124_p3 <= mant1_new_new_V_1_reload(to_integer(unsigned(zext_ln779_fu_120_p1)) downto to_integer(unsigned(zext_ln779_fu_120_p1))) when (to_integer(unsigned(zext_ln779_fu_120_p1)) >= 0 and to_integer(unsigned(zext_ln779_fu_120_p1)) <=28) else "-";
    trunc_ln779_7_cast_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_50),32));
    zext_ln779_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_50),29));
end behav;
