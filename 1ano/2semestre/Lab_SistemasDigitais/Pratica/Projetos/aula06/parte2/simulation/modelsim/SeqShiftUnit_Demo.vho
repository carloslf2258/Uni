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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/11/2023 11:49:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SeqShiftUnit_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(13 DOWNTO 0)
	);
END SeqShiftUnit_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(13 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~25_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~54\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~55_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[15]~56\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~57_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[16]~58\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~59_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[17]~60\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~61_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[18]~62\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~63_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[19]~64\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~65_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[20]~66\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~67_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[21]~68\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~69_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[22]~70\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~71_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[23]~72\ : std_logic;
SIGNAL \inst3|s_divCounter[24]~73_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|clkOut~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|clkOut~1_combout\ : std_logic;
SIGNAL \inst3|clkOut~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[0]~26\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~27_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[1]~28\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~29_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[2]~30\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~31_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[3]~32\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~33_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[4]~34\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~35_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[5]~36\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~37_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[6]~38\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~39_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[7]~40\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~41_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[8]~42\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~43_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[9]~44\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~45_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[10]~46\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[11]~48\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[12]~50\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \inst3|s_divCounter[13]~52\ : std_logic;
SIGNAL \inst3|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \inst3|clkOut~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~5_combout\ : std_logic;
SIGNAL \inst3|clkOut~6_combout\ : std_logic;
SIGNAL \inst3|clkOut~7_combout\ : std_logic;
SIGNAL \inst3|clkOut~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~8_combout\ : std_logic;
SIGNAL \inst3|clkOut~9_combout\ : std_logic;
SIGNAL \inst3|clkOut~q\ : std_logic;
SIGNAL \inst3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[6]~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[4]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[3]~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[2]~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~10_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[0]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~8_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~9_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~0_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|s_divCounter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst3|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkOut~q\);
\inst3|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \inst3|clkOut~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y6_N8
\inst3|s_divCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[0]~25_combout\ = \inst3|s_divCounter\(0) $ (VCC)
-- \inst3|s_divCounter[0]~26\ = CARRY(\inst3|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(0),
	datad => VCC,
	combout => \inst3|s_divCounter[0]~25_combout\,
	cout => \inst3|s_divCounter[0]~26\);

-- Location: LCCOMB_X41_Y5_N4
\inst3|s_divCounter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[14]~53_combout\ = (\inst3|s_divCounter\(14) & (\inst3|s_divCounter[13]~52\ $ (GND))) # (!\inst3|s_divCounter\(14) & (!\inst3|s_divCounter[13]~52\ & VCC))
-- \inst3|s_divCounter[14]~54\ = CARRY((\inst3|s_divCounter\(14) & !\inst3|s_divCounter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(14),
	datad => VCC,
	cin => \inst3|s_divCounter[13]~52\,
	combout => \inst3|s_divCounter[14]~53_combout\,
	cout => \inst3|s_divCounter[14]~54\);

-- Location: LCCOMB_X41_Y5_N6
\inst3|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[15]~55_combout\ = (\inst3|s_divCounter\(15) & (!\inst3|s_divCounter[14]~54\)) # (!\inst3|s_divCounter\(15) & ((\inst3|s_divCounter[14]~54\) # (GND)))
-- \inst3|s_divCounter[15]~56\ = CARRY((!\inst3|s_divCounter[14]~54\) # (!\inst3|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datad => VCC,
	cin => \inst3|s_divCounter[14]~54\,
	combout => \inst3|s_divCounter[15]~55_combout\,
	cout => \inst3|s_divCounter[15]~56\);

-- Location: FF_X42_Y6_N3
\inst3|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[15]~55_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(15));

-- Location: LCCOMB_X41_Y5_N8
\inst3|s_divCounter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[16]~57_combout\ = (\inst3|s_divCounter\(16) & (\inst3|s_divCounter[15]~56\ $ (GND))) # (!\inst3|s_divCounter\(16) & (!\inst3|s_divCounter[15]~56\ & VCC))
-- \inst3|s_divCounter[16]~58\ = CARRY((\inst3|s_divCounter\(16) & !\inst3|s_divCounter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(16),
	datad => VCC,
	cin => \inst3|s_divCounter[15]~56\,
	combout => \inst3|s_divCounter[16]~57_combout\,
	cout => \inst3|s_divCounter[16]~58\);

-- Location: FF_X41_Y5_N9
\inst3|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[16]~57_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(16));

-- Location: LCCOMB_X41_Y5_N10
\inst3|s_divCounter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[17]~59_combout\ = (\inst3|s_divCounter\(17) & (!\inst3|s_divCounter[16]~58\)) # (!\inst3|s_divCounter\(17) & ((\inst3|s_divCounter[16]~58\) # (GND)))
-- \inst3|s_divCounter[17]~60\ = CARRY((!\inst3|s_divCounter[16]~58\) # (!\inst3|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(17),
	datad => VCC,
	cin => \inst3|s_divCounter[16]~58\,
	combout => \inst3|s_divCounter[17]~59_combout\,
	cout => \inst3|s_divCounter[17]~60\);

-- Location: FF_X41_Y5_N11
\inst3|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[17]~59_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(17));

-- Location: LCCOMB_X41_Y5_N12
\inst3|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[18]~61_combout\ = (\inst3|s_divCounter\(18) & (\inst3|s_divCounter[17]~60\ $ (GND))) # (!\inst3|s_divCounter\(18) & (!\inst3|s_divCounter[17]~60\ & VCC))
-- \inst3|s_divCounter[18]~62\ = CARRY((\inst3|s_divCounter\(18) & !\inst3|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(18),
	datad => VCC,
	cin => \inst3|s_divCounter[17]~60\,
	combout => \inst3|s_divCounter[18]~61_combout\,
	cout => \inst3|s_divCounter[18]~62\);

-- Location: FF_X41_Y5_N13
\inst3|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[18]~61_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(18));

-- Location: LCCOMB_X41_Y5_N14
\inst3|s_divCounter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[19]~63_combout\ = (\inst3|s_divCounter\(19) & (!\inst3|s_divCounter[18]~62\)) # (!\inst3|s_divCounter\(19) & ((\inst3|s_divCounter[18]~62\) # (GND)))
-- \inst3|s_divCounter[19]~64\ = CARRY((!\inst3|s_divCounter[18]~62\) # (!\inst3|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(19),
	datad => VCC,
	cin => \inst3|s_divCounter[18]~62\,
	combout => \inst3|s_divCounter[19]~63_combout\,
	cout => \inst3|s_divCounter[19]~64\);

-- Location: FF_X41_Y5_N15
\inst3|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[19]~63_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(19));

-- Location: LCCOMB_X41_Y5_N16
\inst3|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[20]~65_combout\ = (\inst3|s_divCounter\(20) & (\inst3|s_divCounter[19]~64\ $ (GND))) # (!\inst3|s_divCounter\(20) & (!\inst3|s_divCounter[19]~64\ & VCC))
-- \inst3|s_divCounter[20]~66\ = CARRY((\inst3|s_divCounter\(20) & !\inst3|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(20),
	datad => VCC,
	cin => \inst3|s_divCounter[19]~64\,
	combout => \inst3|s_divCounter[20]~65_combout\,
	cout => \inst3|s_divCounter[20]~66\);

-- Location: FF_X41_Y5_N17
\inst3|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[20]~65_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(20));

-- Location: LCCOMB_X41_Y5_N18
\inst3|s_divCounter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[21]~67_combout\ = (\inst3|s_divCounter\(21) & (!\inst3|s_divCounter[20]~66\)) # (!\inst3|s_divCounter\(21) & ((\inst3|s_divCounter[20]~66\) # (GND)))
-- \inst3|s_divCounter[21]~68\ = CARRY((!\inst3|s_divCounter[20]~66\) # (!\inst3|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(21),
	datad => VCC,
	cin => \inst3|s_divCounter[20]~66\,
	combout => \inst3|s_divCounter[21]~67_combout\,
	cout => \inst3|s_divCounter[21]~68\);

-- Location: FF_X41_Y5_N19
\inst3|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[21]~67_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(21));

-- Location: LCCOMB_X41_Y5_N20
\inst3|s_divCounter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[22]~69_combout\ = (\inst3|s_divCounter\(22) & (\inst3|s_divCounter[21]~68\ $ (GND))) # (!\inst3|s_divCounter\(22) & (!\inst3|s_divCounter[21]~68\ & VCC))
-- \inst3|s_divCounter[22]~70\ = CARRY((\inst3|s_divCounter\(22) & !\inst3|s_divCounter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(22),
	datad => VCC,
	cin => \inst3|s_divCounter[21]~68\,
	combout => \inst3|s_divCounter[22]~69_combout\,
	cout => \inst3|s_divCounter[22]~70\);

-- Location: FF_X41_Y5_N21
\inst3|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[22]~69_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(22));

-- Location: LCCOMB_X41_Y5_N22
\inst3|s_divCounter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[23]~71_combout\ = (\inst3|s_divCounter\(23) & (!\inst3|s_divCounter[22]~70\)) # (!\inst3|s_divCounter\(23) & ((\inst3|s_divCounter[22]~70\) # (GND)))
-- \inst3|s_divCounter[23]~72\ = CARRY((!\inst3|s_divCounter[22]~70\) # (!\inst3|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(23),
	datad => VCC,
	cin => \inst3|s_divCounter[22]~70\,
	combout => \inst3|s_divCounter[23]~71_combout\,
	cout => \inst3|s_divCounter[23]~72\);

-- Location: FF_X41_Y5_N23
\inst3|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[23]~71_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(23));

-- Location: LCCOMB_X41_Y5_N24
\inst3|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[24]~73_combout\ = \inst3|s_divCounter\(24) $ (!\inst3|s_divCounter[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(24),
	cin => \inst3|s_divCounter[23]~72\,
	combout => \inst3|s_divCounter[24]~73_combout\);

-- Location: FF_X41_Y5_N25
\inst3|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[24]~73_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(24));

-- Location: LCCOMB_X41_Y5_N30
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = ((!\inst3|s_divCounter\(17) & !\inst3|s_divCounter\(16))) # (!\inst3|s_divCounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(17),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(22),
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X41_Y5_N26
\inst3|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~2_combout\ = (\inst3|s_divCounter\(18) & (\inst3|s_divCounter\(21) & (\inst3|s_divCounter\(19) & \inst3|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(18),
	datab => \inst3|s_divCounter\(21),
	datac => \inst3|s_divCounter\(19),
	datad => \inst3|s_divCounter\(20),
	combout => \inst3|clkOut~2_combout\);

-- Location: LCCOMB_X42_Y6_N6
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = ((!\inst3|s_divCounter\(23) & ((\inst3|LessThan0~4_combout\) # (!\inst3|clkOut~2_combout\)))) # (!\inst3|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(23),
	datab => \inst3|s_divCounter\(24),
	datac => \inst3|LessThan0~4_combout\,
	datad => \inst3|clkOut~2_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X41_Y6_N6
\inst3|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~1_combout\ = (!\inst3|s_divCounter\(9) & (!\inst3|s_divCounter\(6) & (!\inst3|s_divCounter\(7) & !\inst3|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(9),
	datab => \inst3|s_divCounter\(6),
	datac => \inst3|s_divCounter\(7),
	datad => \inst3|s_divCounter\(8),
	combout => \inst3|clkOut~1_combout\);

-- Location: LCCOMB_X41_Y6_N4
\inst3|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~0_combout\ = (\inst3|s_divCounter\(1) & (\inst3|s_divCounter\(0) & (\inst3|s_divCounter\(3) & \inst3|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(1),
	datab => \inst3|s_divCounter\(0),
	datac => \inst3|s_divCounter\(3),
	datad => \inst3|s_divCounter\(2),
	combout => \inst3|clkOut~0_combout\);

-- Location: LCCOMB_X42_Y6_N10
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|clkOut~1_combout\ & (((!\inst3|s_divCounter\(5)) # (!\inst3|clkOut~0_combout\)) # (!\inst3|s_divCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(4),
	datab => \inst3|clkOut~1_combout\,
	datac => \inst3|clkOut~0_combout\,
	datad => \inst3|s_divCounter\(5),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y6_N24
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_divCounter\(15) & (!\inst3|s_divCounter\(17) & !\inst3|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(15),
	datac => \inst3|s_divCounter\(17),
	datad => \inst3|s_divCounter\(23),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y6_N4
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|LessThan0~1_combout\ & (!\inst3|s_divCounter\(10) & \inst3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~1_combout\,
	datab => \inst3|s_divCounter\(10),
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y6_N30
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (!\inst3|LessThan0~5_combout\ & (!\inst3|LessThan0~2_combout\ & !\inst3|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~5_combout\,
	datab => \inst3|LessThan0~2_combout\,
	datac => \inst3|LessThan0~3_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: FF_X41_Y6_N9
\inst3|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[0]~25_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(0));

-- Location: LCCOMB_X41_Y6_N10
\inst3|s_divCounter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[1]~27_combout\ = (\inst3|s_divCounter\(1) & (!\inst3|s_divCounter[0]~26\)) # (!\inst3|s_divCounter\(1) & ((\inst3|s_divCounter[0]~26\) # (GND)))
-- \inst3|s_divCounter[1]~28\ = CARRY((!\inst3|s_divCounter[0]~26\) # (!\inst3|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(1),
	datad => VCC,
	cin => \inst3|s_divCounter[0]~26\,
	combout => \inst3|s_divCounter[1]~27_combout\,
	cout => \inst3|s_divCounter[1]~28\);

-- Location: FF_X41_Y6_N11
\inst3|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[1]~27_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(1));

-- Location: LCCOMB_X41_Y6_N12
\inst3|s_divCounter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[2]~29_combout\ = (\inst3|s_divCounter\(2) & (\inst3|s_divCounter[1]~28\ $ (GND))) # (!\inst3|s_divCounter\(2) & (!\inst3|s_divCounter[1]~28\ & VCC))
-- \inst3|s_divCounter[2]~30\ = CARRY((\inst3|s_divCounter\(2) & !\inst3|s_divCounter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(2),
	datad => VCC,
	cin => \inst3|s_divCounter[1]~28\,
	combout => \inst3|s_divCounter[2]~29_combout\,
	cout => \inst3|s_divCounter[2]~30\);

-- Location: FF_X41_Y6_N13
\inst3|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[2]~29_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(2));

-- Location: LCCOMB_X41_Y6_N14
\inst3|s_divCounter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[3]~31_combout\ = (\inst3|s_divCounter\(3) & (!\inst3|s_divCounter[2]~30\)) # (!\inst3|s_divCounter\(3) & ((\inst3|s_divCounter[2]~30\) # (GND)))
-- \inst3|s_divCounter[3]~32\ = CARRY((!\inst3|s_divCounter[2]~30\) # (!\inst3|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(3),
	datad => VCC,
	cin => \inst3|s_divCounter[2]~30\,
	combout => \inst3|s_divCounter[3]~31_combout\,
	cout => \inst3|s_divCounter[3]~32\);

-- Location: FF_X41_Y6_N15
\inst3|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[3]~31_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(3));

-- Location: LCCOMB_X41_Y6_N16
\inst3|s_divCounter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[4]~33_combout\ = (\inst3|s_divCounter\(4) & (\inst3|s_divCounter[3]~32\ $ (GND))) # (!\inst3|s_divCounter\(4) & (!\inst3|s_divCounter[3]~32\ & VCC))
-- \inst3|s_divCounter[4]~34\ = CARRY((\inst3|s_divCounter\(4) & !\inst3|s_divCounter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(4),
	datad => VCC,
	cin => \inst3|s_divCounter[3]~32\,
	combout => \inst3|s_divCounter[4]~33_combout\,
	cout => \inst3|s_divCounter[4]~34\);

-- Location: FF_X41_Y6_N17
\inst3|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[4]~33_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(4));

-- Location: LCCOMB_X41_Y6_N18
\inst3|s_divCounter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[5]~35_combout\ = (\inst3|s_divCounter\(5) & (!\inst3|s_divCounter[4]~34\)) # (!\inst3|s_divCounter\(5) & ((\inst3|s_divCounter[4]~34\) # (GND)))
-- \inst3|s_divCounter[5]~36\ = CARRY((!\inst3|s_divCounter[4]~34\) # (!\inst3|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(5),
	datad => VCC,
	cin => \inst3|s_divCounter[4]~34\,
	combout => \inst3|s_divCounter[5]~35_combout\,
	cout => \inst3|s_divCounter[5]~36\);

-- Location: FF_X41_Y6_N19
\inst3|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[5]~35_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(5));

-- Location: LCCOMB_X41_Y6_N20
\inst3|s_divCounter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[6]~37_combout\ = (\inst3|s_divCounter\(6) & (\inst3|s_divCounter[5]~36\ $ (GND))) # (!\inst3|s_divCounter\(6) & (!\inst3|s_divCounter[5]~36\ & VCC))
-- \inst3|s_divCounter[6]~38\ = CARRY((\inst3|s_divCounter\(6) & !\inst3|s_divCounter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(6),
	datad => VCC,
	cin => \inst3|s_divCounter[5]~36\,
	combout => \inst3|s_divCounter[6]~37_combout\,
	cout => \inst3|s_divCounter[6]~38\);

-- Location: FF_X41_Y6_N21
\inst3|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[6]~37_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(6));

-- Location: LCCOMB_X41_Y6_N22
\inst3|s_divCounter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[7]~39_combout\ = (\inst3|s_divCounter\(7) & (!\inst3|s_divCounter[6]~38\)) # (!\inst3|s_divCounter\(7) & ((\inst3|s_divCounter[6]~38\) # (GND)))
-- \inst3|s_divCounter[7]~40\ = CARRY((!\inst3|s_divCounter[6]~38\) # (!\inst3|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(7),
	datad => VCC,
	cin => \inst3|s_divCounter[6]~38\,
	combout => \inst3|s_divCounter[7]~39_combout\,
	cout => \inst3|s_divCounter[7]~40\);

-- Location: FF_X41_Y6_N23
\inst3|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[7]~39_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(7));

-- Location: LCCOMB_X41_Y6_N24
\inst3|s_divCounter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[8]~41_combout\ = (\inst3|s_divCounter\(8) & (\inst3|s_divCounter[7]~40\ $ (GND))) # (!\inst3|s_divCounter\(8) & (!\inst3|s_divCounter[7]~40\ & VCC))
-- \inst3|s_divCounter[8]~42\ = CARRY((\inst3|s_divCounter\(8) & !\inst3|s_divCounter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(8),
	datad => VCC,
	cin => \inst3|s_divCounter[7]~40\,
	combout => \inst3|s_divCounter[8]~41_combout\,
	cout => \inst3|s_divCounter[8]~42\);

-- Location: FF_X41_Y6_N25
\inst3|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[8]~41_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(8));

-- Location: LCCOMB_X41_Y6_N26
\inst3|s_divCounter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[9]~43_combout\ = (\inst3|s_divCounter\(9) & (!\inst3|s_divCounter[8]~42\)) # (!\inst3|s_divCounter\(9) & ((\inst3|s_divCounter[8]~42\) # (GND)))
-- \inst3|s_divCounter[9]~44\ = CARRY((!\inst3|s_divCounter[8]~42\) # (!\inst3|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(9),
	datad => VCC,
	cin => \inst3|s_divCounter[8]~42\,
	combout => \inst3|s_divCounter[9]~43_combout\,
	cout => \inst3|s_divCounter[9]~44\);

-- Location: FF_X41_Y6_N27
\inst3|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[9]~43_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(9));

-- Location: LCCOMB_X41_Y6_N28
\inst3|s_divCounter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[10]~45_combout\ = (\inst3|s_divCounter\(10) & (\inst3|s_divCounter[9]~44\ $ (GND))) # (!\inst3|s_divCounter\(10) & (!\inst3|s_divCounter[9]~44\ & VCC))
-- \inst3|s_divCounter[10]~46\ = CARRY((\inst3|s_divCounter\(10) & !\inst3|s_divCounter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(10),
	datad => VCC,
	cin => \inst3|s_divCounter[9]~44\,
	combout => \inst3|s_divCounter[10]~45_combout\,
	cout => \inst3|s_divCounter[10]~46\);

-- Location: FF_X41_Y6_N29
\inst3|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[10]~45_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(10));

-- Location: LCCOMB_X41_Y6_N30
\inst3|s_divCounter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[11]~47_combout\ = (\inst3|s_divCounter\(11) & (!\inst3|s_divCounter[10]~46\)) # (!\inst3|s_divCounter\(11) & ((\inst3|s_divCounter[10]~46\) # (GND)))
-- \inst3|s_divCounter[11]~48\ = CARRY((!\inst3|s_divCounter[10]~46\) # (!\inst3|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(11),
	datad => VCC,
	cin => \inst3|s_divCounter[10]~46\,
	combout => \inst3|s_divCounter[11]~47_combout\,
	cout => \inst3|s_divCounter[11]~48\);

-- Location: FF_X41_Y6_N31
\inst3|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[11]~47_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(11));

-- Location: LCCOMB_X41_Y5_N0
\inst3|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[12]~49_combout\ = (\inst3|s_divCounter\(12) & (\inst3|s_divCounter[11]~48\ $ (GND))) # (!\inst3|s_divCounter\(12) & (!\inst3|s_divCounter[11]~48\ & VCC))
-- \inst3|s_divCounter[12]~50\ = CARRY((\inst3|s_divCounter\(12) & !\inst3|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(12),
	datad => VCC,
	cin => \inst3|s_divCounter[11]~48\,
	combout => \inst3|s_divCounter[12]~49_combout\,
	cout => \inst3|s_divCounter[12]~50\);

-- Location: FF_X42_Y6_N19
\inst3|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[12]~49_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(12));

-- Location: LCCOMB_X41_Y5_N2
\inst3|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divCounter[13]~51_combout\ = (\inst3|s_divCounter\(13) & (!\inst3|s_divCounter[12]~50\)) # (!\inst3|s_divCounter\(13) & ((\inst3|s_divCounter[12]~50\) # (GND)))
-- \inst3|s_divCounter[13]~52\ = CARRY((!\inst3|s_divCounter[12]~50\) # (!\inst3|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(13),
	datad => VCC,
	cin => \inst3|s_divCounter[12]~50\,
	combout => \inst3|s_divCounter[13]~51_combout\,
	cout => \inst3|s_divCounter[13]~52\);

-- Location: FF_X42_Y6_N17
\inst3|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_divCounter[13]~51_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(13));

-- Location: FF_X41_Y5_N5
\inst3|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divCounter[14]~53_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divCounter\(14));

-- Location: LCCOMB_X42_Y6_N26
\inst3|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~4_combout\ = (\inst3|s_divCounter\(12) & (\inst3|s_divCounter\(13) & \inst3|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_divCounter\(12),
	datac => \inst3|s_divCounter\(13),
	datad => \inst3|s_divCounter\(11),
	combout => \inst3|clkOut~4_combout\);

-- Location: LCCOMB_X42_Y6_N22
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|LessThan0~0_combout\ & ((!\inst3|clkOut~4_combout\) # (!\inst3|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(14),
	datac => \inst3|clkOut~4_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X42_Y6_N8
\inst3|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~5_combout\ = (\inst3|s_divCounter\(15) & (\inst3|s_divCounter\(10) & (!\inst3|s_divCounter\(16) & !\inst3|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(15),
	datab => \inst3|s_divCounter\(10),
	datac => \inst3|s_divCounter\(16),
	datad => \inst3|s_divCounter\(14),
	combout => \inst3|clkOut~5_combout\);

-- Location: LCCOMB_X41_Y5_N28
\inst3|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~6_combout\ = (\inst3|s_divCounter\(17) & (!\inst3|s_divCounter\(24) & (\inst3|s_divCounter\(23) & !\inst3|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(17),
	datab => \inst3|s_divCounter\(24),
	datac => \inst3|s_divCounter\(23),
	datad => \inst3|s_divCounter\(22),
	combout => \inst3|clkOut~6_combout\);

-- Location: LCCOMB_X42_Y6_N14
\inst3|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~7_combout\ = (\inst3|clkOut~4_combout\ & (!\inst3|s_divCounter\(5) & (\inst3|clkOut~5_combout\ & \inst3|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~4_combout\,
	datab => \inst3|s_divCounter\(5),
	datac => \inst3|clkOut~5_combout\,
	datad => \inst3|clkOut~6_combout\,
	combout => \inst3|clkOut~7_combout\);

-- Location: LCCOMB_X42_Y6_N12
\inst3|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~3_combout\ = (\inst3|s_divCounter\(4) & (\inst3|clkOut~0_combout\ & (\inst3|clkOut~1_combout\ & \inst3|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divCounter\(4),
	datab => \inst3|clkOut~0_combout\,
	datac => \inst3|clkOut~1_combout\,
	datad => \inst3|clkOut~2_combout\,
	combout => \inst3|clkOut~3_combout\);

-- Location: LCCOMB_X42_Y6_N28
\inst3|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~8_combout\ = (\inst3|clkOut~q\) # ((\inst3|clkOut~7_combout\ & \inst3|clkOut~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~q\,
	datac => \inst3|clkOut~7_combout\,
	datad => \inst3|clkOut~3_combout\,
	combout => \inst3|clkOut~8_combout\);

-- Location: LCCOMB_X42_Y6_N20
\inst3|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~9_combout\ = (\inst3|clkOut~8_combout\ & ((\inst3|LessThan0~3_combout\) # ((\inst3|LessThan0~2_combout\) # (\inst3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~3_combout\,
	datab => \inst3|clkOut~8_combout\,
	datac => \inst3|LessThan0~2_combout\,
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|clkOut~9_combout\);

-- Location: FF_X42_Y6_N21
\inst3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkOut~q\);

-- Location: CLKCTRL_G15
\inst3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y15_N10
\inst|s_shiftReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[6]~1_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(5))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(5),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg[6]~1_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X114_Y15_N11
\inst|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[6]~1_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y15_N12
\inst|s_shiftReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[5]~2_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(4))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(4),
	datab => \inst|s_shiftReg\(6),
	datad => \SW[12]~input_o\,
	combout => \inst|s_shiftReg[5]~2_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y15_N13
\inst|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[5]~2_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y15_N30
\inst|s_shiftReg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[4]~3_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(3)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(5),
	datab => \inst|s_shiftReg\(3),
	datad => \SW[12]~input_o\,
	combout => \inst|s_shiftReg[4]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X114_Y15_N31
\inst|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[4]~3_combout\,
	asdata => \SW[4]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y15_N8
\inst|s_shiftReg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[3]~4_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(2)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(4),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(2),
	combout => \inst|s_shiftReg[3]~4_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y15_N9
\inst|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[3]~4_combout\,
	asdata => \SW[3]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y15_N6
\inst|s_shiftReg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[2]~5_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(1))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(1),
	datab => \inst|s_shiftReg\(3),
	datad => \SW[12]~input_o\,
	combout => \inst|s_shiftReg[2]~5_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y15_N7
\inst|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[2]~5_combout\,
	asdata => \SW[2]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y15_N28
\inst|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[1]~6_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(0))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(0),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(2),
	combout => \inst|s_shiftReg[1]~6_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y15_N29
\inst|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[1]~6_combout\,
	asdata => \SW[1]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(1));

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y15_N18
\inst|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~10_combout\ = (\SW[11]~input_o\ & (((\inst|s_shiftReg\(7))))) # (!\SW[11]~input_o\ & (\SW[9]~input_o\ & (!\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg~10_combout\);

-- Location: LCCOMB_X114_Y15_N26
\inst|s_shiftReg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[0]~7_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg~10_combout\))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(1),
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg~10_combout\,
	combout => \inst|s_shiftReg[0]~7_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X114_Y15_N27
\inst|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[0]~7_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(0));

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y15_N22
\inst|s_shiftReg[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~8_combout\ = (\SW[11]~input_o\) # ((\SW[13]~input_o\ & ((\inst|s_shiftReg\(7)))) # (!\SW[13]~input_o\ & (\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg[7]~8_combout\);

-- Location: LCCOMB_X114_Y15_N20
\inst|s_shiftReg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~9_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(6)))) # (!\SW[12]~input_o\ & (!\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(6),
	combout => \inst|s_shiftReg[7]~9_combout\);

-- Location: LCCOMB_X114_Y15_N16
\inst|s_shiftReg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~0_combout\ = (\SW[12]~input_o\ & (((\inst|s_shiftReg[7]~9_combout\)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg[7]~8_combout\ & ((\inst|s_shiftReg\(0)) # (\inst|s_shiftReg[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(0),
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg[7]~8_combout\,
	datad => \inst|s_shiftReg[7]~9_combout\,
	combout => \inst|s_shiftReg[7]~0_combout\);

-- Location: LCCOMB_X114_Y15_N24
\inst|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~feeder_combout\ = \inst|s_shiftReg[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_shiftReg[7]~0_combout\,
	combout => \inst|s_shiftReg[7]~feeder_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y15_N25
\inst|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[7]~feeder_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(7));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


