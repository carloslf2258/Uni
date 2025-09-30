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
-- Generated on "05/17/2023 18:39:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerFSM_vhd_vec_tst IS
END TimerFSM_vhd_vec_tst;
ARCHITECTURE TimerFSM_arch OF TimerFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL newTime : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL timerEnable : STD_LOGIC;
SIGNAL timerExp : STD_LOGIC;
SIGNAL timeValue : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT TimerFSM
	PORT (
	clk : IN STD_LOGIC;
	newTime : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	timerEnable : IN STD_LOGIC;
	timerExp : BUFFER STD_LOGIC;
	timeValue : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TimerFSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	newTime => newTime,
	reset => reset,
	timerEnable => timerEnable,
	timerExp => timerExp,
	timeValue => timeValue
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 260000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- newTime
t_prcs_newTime: PROCESS
BEGIN
	newTime <= '0';
	WAIT FOR 20000 ps;
	newTime <= '1';
	WAIT FOR 20000 ps;
	newTime <= '0';
	WAIT FOR 190000 ps;
	newTime <= '1';
	WAIT FOR 10000 ps;
	newTime <= '0';
	WAIT FOR 30000 ps;
	newTime <= '1';
	WAIT FOR 20000 ps;
	newTime <= '0';
	WAIT FOR 110000 ps;
	newTime <= '1';
	WAIT FOR 10000 ps;
	newTime <= '0';
WAIT;
END PROCESS t_prcs_newTime;

-- timerEnable
t_prcs_timerEnable: PROCESS
BEGIN
	timerEnable <= '1';
WAIT;
END PROCESS t_prcs_timerEnable;
-- timeValue[7]
t_prcs_timeValue_7: PROCESS
BEGIN
	timeValue(7) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_7;
-- timeValue[6]
t_prcs_timeValue_6: PROCESS
BEGIN
	timeValue(6) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_6;
-- timeValue[5]
t_prcs_timeValue_5: PROCESS
BEGIN
	timeValue(5) <= '0';
	WAIT FOR 400000 ps;
	timeValue(5) <= '1';
	WAIT FOR 280000 ps;
	timeValue(5) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_5;
-- timeValue[4]
t_prcs_timeValue_4: PROCESS
BEGIN
	timeValue(4) <= '0';
	WAIT FOR 400000 ps;
	timeValue(4) <= '1';
	WAIT FOR 280000 ps;
	timeValue(4) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_4;
-- timeValue[3]
t_prcs_timeValue_3: PROCESS
BEGIN
	timeValue(3) <= '0';
	WAIT FOR 30000 ps;
	timeValue(3) <= '1';
	WAIT FOR 120000 ps;
	timeValue(3) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_3;
-- timeValue[2]
t_prcs_timeValue_2: PROCESS
BEGIN
	timeValue(2) <= '0';
	WAIT FOR 230000 ps;
	timeValue(2) <= '1';
	WAIT FOR 160000 ps;
	timeValue(2) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_2;
-- timeValue[1]
t_prcs_timeValue_1: PROCESS
BEGIN
	timeValue(1) <= '0';
	WAIT FOR 30000 ps;
	timeValue(1) <= '1';
	WAIT FOR 120000 ps;
	timeValue(1) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_1;
-- timeValue[0]
t_prcs_timeValue_0: PROCESS
BEGIN
	timeValue(0) <= '0';
WAIT;
END PROCESS t_prcs_timeValue_0;
END TimerFSM_arch;
