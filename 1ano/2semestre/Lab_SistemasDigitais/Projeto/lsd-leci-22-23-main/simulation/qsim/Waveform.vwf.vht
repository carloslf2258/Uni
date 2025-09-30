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
-- Generated on "05/17/2023 15:10:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DisplaySelect
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DisplaySelect_vhd_vec_tst IS
END DisplaySelect_vhd_vec_tst;
ARCHITECTURE DisplaySelect_arch OF DisplaySelect_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DEC : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Start_Stop : STD_LOGIC;
SIGNAL ValueFromFSM : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT DisplaySelect
	PORT (
	DEC : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Start_Stop : IN STD_LOGIC;
	ValueFromFSM : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DisplaySelect
	PORT MAP (
-- list connections between master ports and signals
	DEC => DEC,
	Start_Stop => Start_Stop,
	ValueFromFSM => ValueFromFSM
	);

-- Start_Stop
t_prcs_Start_Stop: PROCESS
BEGIN
	Start_Stop <= '1';
	WAIT FOR 10000 ps;
	Start_Stop <= '0';
	WAIT FOR 150000 ps;
	Start_Stop <= '1';
	WAIT FOR 100000 ps;
	Start_Stop <= '0';
WAIT;
END PROCESS t_prcs_Start_Stop;
-- ValueFromFSM[3]
t_prcs_ValueFromFSM_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ValueFromFSM(3) <= '0';
		WAIT FOR 80000 ps;
		ValueFromFSM(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ValueFromFSM(3) <= '0';
WAIT;
END PROCESS t_prcs_ValueFromFSM_3;
-- ValueFromFSM[2]
t_prcs_ValueFromFSM_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ValueFromFSM(2) <= '0';
		WAIT FOR 40000 ps;
		ValueFromFSM(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ValueFromFSM(2) <= '0';
WAIT;
END PROCESS t_prcs_ValueFromFSM_2;
-- ValueFromFSM[1]
t_prcs_ValueFromFSM_1: PROCESS
BEGIN
LOOP
	ValueFromFSM(1) <= '0';
	WAIT FOR 20000 ps;
	ValueFromFSM(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ValueFromFSM_1;
-- ValueFromFSM[0]
t_prcs_ValueFromFSM_0: PROCESS
BEGIN
LOOP
	ValueFromFSM(0) <= '0';
	WAIT FOR 10000 ps;
	ValueFromFSM(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ValueFromFSM_0;
END DisplaySelect_arch;
