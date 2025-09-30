-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/17/2023 15:29:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MyRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MyRegister_vhd_vec_tst IS
END MyRegister_vhd_vec_tst;
ARCHITECTURE MyRegister_arch OF MyRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL P1 : STD_LOGIC;
SIGNAL P2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL Start_Stop : STD_LOGIC;
SIGNAL Start_Stop_out : STD_LOGIC;
SIGNAL Time_adjust : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Time_amassar : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Time_cozer : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Time_extra : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Time_levedar : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT MyRegister
	PORT (
	clk : IN STD_LOGIC;
	P1 : IN STD_LOGIC;
	P2 : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Start_Stop : IN STD_LOGIC;
	Start_Stop_out : OUT STD_LOGIC;
	Time_adjust : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Time_amassar : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Time_cozer : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Time_extra : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Time_levedar : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MyRegister
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	P1 => P1,
	P2 => P2,
	reset => reset,
	Start_Stop => Start_Stop,
	Start_Stop_out => Start_Stop_out,
	Time_adjust => Time_adjust,
	Time_amassar => Time_amassar,
	Time_cozer => Time_cozer,
	Time_extra => Time_extra,
	Time_levedar => Time_levedar
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 43
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- P1
t_prcs_P1: PROCESS
BEGIN
	P1 <= '1';
	WAIT FOR 140000 ps;
	P1 <= '0';
	WAIT FOR 470000 ps;
	P1 <= '1';
	WAIT FOR 140000 ps;
	P1 <= '0';
WAIT;
END PROCESS t_prcs_P1;

-- P2
t_prcs_P2: PROCESS
BEGIN
	P2 <= '0';
	WAIT FOR 150000 ps;
	P2 <= '1';
	WAIT FOR 460000 ps;
	P2 <= '0';
	WAIT FOR 150000 ps;
	P2 <= '1';
WAIT;
END PROCESS t_prcs_P2;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 150000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
	WAIT FOR 580000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- Start_Stop
t_prcs_Start_Stop: PROCESS
BEGIN
	Start_Stop <= '1';
	WAIT FOR 50000 ps;
	Start_Stop <= '0';
	WAIT FOR 140000 ps;
	Start_Stop <= '1';
	WAIT FOR 30000 ps;
	Start_Stop <= '0';
	WAIT FOR 120000 ps;
	Start_Stop <= '1';
	WAIT FOR 40000 ps;
	Start_Stop <= '0';
	WAIT FOR 230000 ps;
	Start_Stop <= '1';
	WAIT FOR 50000 ps;
	Start_Stop <= '0';
	WAIT FOR 140000 ps;
	Start_Stop <= '1';
	WAIT FOR 30000 ps;
	Start_Stop <= '0';
	WAIT FOR 120000 ps;
	Start_Stop <= '1';
	WAIT FOR 40000 ps;
	Start_Stop <= '0';
WAIT;
END PROCESS t_prcs_Start_Stop;
-- Time_adjust[2]
t_prcs_Time_adjust_2: PROCESS
BEGIN
	Time_adjust(2) <= '0';
WAIT;
END PROCESS t_prcs_Time_adjust_2;
-- Time_adjust[1]
t_prcs_Time_adjust_1: PROCESS
BEGIN
	Time_adjust(1) <= '0';
WAIT;
END PROCESS t_prcs_Time_adjust_1;
-- Time_adjust[0]
t_prcs_Time_adjust_0: PROCESS
BEGIN
	Time_adjust(0) <= '0';
WAIT;
END PROCESS t_prcs_Time_adjust_0;
END MyRegister_arch;
