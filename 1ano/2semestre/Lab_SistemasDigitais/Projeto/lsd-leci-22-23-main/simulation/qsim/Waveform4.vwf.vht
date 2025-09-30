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
-- Generated on "05/17/2023 17:05:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_vec_tst IS
END FSM_vhd_vec_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL display_select : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC;
SIGNAL NewTime : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
SIGNAL time_amassar : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL time_cozer : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL time_extra : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL time_levedar : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL timer_enable : STD_LOGIC;
SIGNAL timer_exp : STD_LOGIC;
SIGNAL TimeValue : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT FSM
	PORT (
	clock : IN STD_LOGIC;
	display_select : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDG : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC;
	NewTime : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	start_stop : IN STD_LOGIC;
	time_amassar : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	time_cozer : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	time_extra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	time_levedar : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	timer_enable : BUFFER STD_LOGIC;
	timer_exp : IN STD_LOGIC;
	TimeValue : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	display_select => display_select,
	LEDG => LEDG,
	LEDR => LEDR,
	NewTime => NewTime,
	reset => reset,
	start_stop => start_stop,
	time_amassar => time_amassar,
	time_cozer => time_cozer,
	time_extra => time_extra,
	time_levedar => time_levedar,
	timer_enable => timer_enable,
	timer_exp => timer_exp,
	TimeValue => TimeValue
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start_stop
t_prcs_start_stop: PROCESS
BEGIN
	start_stop <= '0';
	WAIT FOR 40000 ps;
	start_stop <= '1';
	WAIT FOR 30000 ps;
	start_stop <= '0';
WAIT;
END PROCESS t_prcs_start_stop;
-- time_amassar[4]
t_prcs_time_amassar_4: PROCESS
BEGIN
	time_amassar(4) <= '0';
WAIT;
END PROCESS t_prcs_time_amassar_4;
-- time_amassar[3]
t_prcs_time_amassar_3: PROCESS
BEGIN
	time_amassar(3) <= '1';
WAIT;
END PROCESS t_prcs_time_amassar_3;
-- time_amassar[2]
t_prcs_time_amassar_2: PROCESS
BEGIN
	time_amassar(2) <= '0';
WAIT;
END PROCESS t_prcs_time_amassar_2;
-- time_amassar[1]
t_prcs_time_amassar_1: PROCESS
BEGIN
	time_amassar(1) <= '1';
WAIT;
END PROCESS t_prcs_time_amassar_1;
-- time_amassar[0]
t_prcs_time_amassar_0: PROCESS
BEGIN
	time_amassar(0) <= '0';
WAIT;
END PROCESS t_prcs_time_amassar_0;
-- time_cozer[4]
t_prcs_time_cozer_4: PROCESS
BEGIN
	time_cozer(4) <= '0';
WAIT;
END PROCESS t_prcs_time_cozer_4;
-- time_cozer[3]
t_prcs_time_cozer_3: PROCESS
BEGIN
	time_cozer(3) <= '1';
WAIT;
END PROCESS t_prcs_time_cozer_3;
-- time_cozer[2]
t_prcs_time_cozer_2: PROCESS
BEGIN
	time_cozer(2) <= '0';
WAIT;
END PROCESS t_prcs_time_cozer_2;
-- time_cozer[1]
t_prcs_time_cozer_1: PROCESS
BEGIN
	time_cozer(1) <= '1';
WAIT;
END PROCESS t_prcs_time_cozer_1;
-- time_cozer[0]
t_prcs_time_cozer_0: PROCESS
BEGIN
	time_cozer(0) <= '0';
WAIT;
END PROCESS t_prcs_time_cozer_0;
-- time_levedar[4]
t_prcs_time_levedar_4: PROCESS
BEGIN
	time_levedar(4) <= '0';
WAIT;
END PROCESS t_prcs_time_levedar_4;
-- time_levedar[3]
t_prcs_time_levedar_3: PROCESS
BEGIN
	time_levedar(3) <= '1';
WAIT;
END PROCESS t_prcs_time_levedar_3;
-- time_levedar[2]
t_prcs_time_levedar_2: PROCESS
BEGIN
	time_levedar(2) <= '0';
WAIT;
END PROCESS t_prcs_time_levedar_2;
-- time_levedar[1]
t_prcs_time_levedar_1: PROCESS
BEGIN
	time_levedar(1) <= '0';
WAIT;
END PROCESS t_prcs_time_levedar_1;
-- time_levedar[0]
t_prcs_time_levedar_0: PROCESS
BEGIN
	time_levedar(0) <= '0';
WAIT;
END PROCESS t_prcs_time_levedar_0;
-- time_extra[4]
t_prcs_time_extra_4: PROCESS
BEGIN
	time_extra(4) <= '0';
WAIT;
END PROCESS t_prcs_time_extra_4;
-- time_extra[3]
t_prcs_time_extra_3: PROCESS
BEGIN
	time_extra(3) <= '0';
WAIT;
END PROCESS t_prcs_time_extra_3;
-- time_extra[2]
t_prcs_time_extra_2: PROCESS
BEGIN
	time_extra(2) <= '0';
WAIT;
END PROCESS t_prcs_time_extra_2;
-- time_extra[1]
t_prcs_time_extra_1: PROCESS
BEGIN
	time_extra(1) <= '0';
WAIT;
END PROCESS t_prcs_time_extra_1;
-- time_extra[0]
t_prcs_time_extra_0: PROCESS
BEGIN
	time_extra(0) <= '0';
WAIT;
END PROCESS t_prcs_time_extra_0;
END FSM_arch;
