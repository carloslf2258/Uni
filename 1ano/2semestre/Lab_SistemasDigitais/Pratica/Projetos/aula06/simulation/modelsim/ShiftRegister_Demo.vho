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

-- DATE "04/11/2023 10:55:25"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ClkDividerN|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[0]~25_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[10]~46\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[11]~47_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[11]~48\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[12]~49_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[12]~50\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[13]~51_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[13]~52\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[14]~53_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[14]~54\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[15]~55_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[15]~56\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[16]~57_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[16]~58\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[17]~59_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[17]~60\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[18]~61_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[18]~62\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[19]~63_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[19]~64\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[20]~65_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[20]~66\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[21]~67_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[21]~68\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[22]~69_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[22]~70\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[23]~71_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[23]~72\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[24]~73_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~4_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~2_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~5_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~4_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~0_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~3_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~6_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[0]~26\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[1]~27_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[1]~28\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[2]~29_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[2]~30\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[3]~31_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[3]~32\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[4]~33_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[4]~34\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[5]~35_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[5]~36\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[6]~37_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[6]~38\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[7]~39_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[7]~40\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[8]~41_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[8]~42\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[9]~43_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[9]~44\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter[10]~45_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~0_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~1_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~1_combout\ : std_logic;
SIGNAL \ClkDividerN|LessThan0~2_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~5_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~6_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~7_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~3_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~8_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~9_combout\ : std_logic;
SIGNAL \ClkDividerN|clkOut~q\ : std_logic;
SIGNAL \ClkDividerN|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \system|aux~17_combout\ : std_logic;
SIGNAL \system|aux~16_combout\ : std_logic;
SIGNAL \system|aux~15_combout\ : std_logic;
SIGNAL \system|aux~14_combout\ : std_logic;
SIGNAL \system|aux~13_combout\ : std_logic;
SIGNAL \system|aux~12_combout\ : std_logic;
SIGNAL \system|aux~11_combout\ : std_logic;
SIGNAL \system|aux~10_combout\ : std_logic;
SIGNAL \system|aux~9_combout\ : std_logic;
SIGNAL \system|aux~8_combout\ : std_logic;
SIGNAL \system|aux~7_combout\ : std_logic;
SIGNAL \system|aux~6_combout\ : std_logic;
SIGNAL \system|aux~5_combout\ : std_logic;
SIGNAL \system|aux~4_combout\ : std_logic;
SIGNAL \system|aux~3_combout\ : std_logic;
SIGNAL \system|aux~2_combout\ : std_logic;
SIGNAL \system|aux~1_combout\ : std_logic;
SIGNAL \system|aux~0_combout\ : std_logic;
SIGNAL \ClkDividerN|s_divCounter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \system|aux\ : std_logic_vector(17 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\ClkDividerN|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ClkDividerN|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(16),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system|aux\(17),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

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

-- Location: LCCOMB_X55_Y4_N8
\ClkDividerN|s_divCounter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[0]~25_combout\ = \ClkDividerN|s_divCounter\(0) $ (VCC)
-- \ClkDividerN|s_divCounter[0]~26\ = CARRY(\ClkDividerN|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(0),
	datad => VCC,
	combout => \ClkDividerN|s_divCounter[0]~25_combout\,
	cout => \ClkDividerN|s_divCounter[0]~26\);

-- Location: LCCOMB_X55_Y4_N28
\ClkDividerN|s_divCounter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[10]~45_combout\ = (\ClkDividerN|s_divCounter\(10) & (\ClkDividerN|s_divCounter[9]~44\ $ (GND))) # (!\ClkDividerN|s_divCounter\(10) & (!\ClkDividerN|s_divCounter[9]~44\ & VCC))
-- \ClkDividerN|s_divCounter[10]~46\ = CARRY((\ClkDividerN|s_divCounter\(10) & !\ClkDividerN|s_divCounter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(10),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[9]~44\,
	combout => \ClkDividerN|s_divCounter[10]~45_combout\,
	cout => \ClkDividerN|s_divCounter[10]~46\);

-- Location: LCCOMB_X55_Y4_N30
\ClkDividerN|s_divCounter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[11]~47_combout\ = (\ClkDividerN|s_divCounter\(11) & (!\ClkDividerN|s_divCounter[10]~46\)) # (!\ClkDividerN|s_divCounter\(11) & ((\ClkDividerN|s_divCounter[10]~46\) # (GND)))
-- \ClkDividerN|s_divCounter[11]~48\ = CARRY((!\ClkDividerN|s_divCounter[10]~46\) # (!\ClkDividerN|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(11),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[10]~46\,
	combout => \ClkDividerN|s_divCounter[11]~47_combout\,
	cout => \ClkDividerN|s_divCounter[11]~48\);

-- Location: FF_X55_Y4_N31
\ClkDividerN|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[11]~47_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(11));

-- Location: LCCOMB_X55_Y3_N0
\ClkDividerN|s_divCounter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[12]~49_combout\ = (\ClkDividerN|s_divCounter\(12) & (\ClkDividerN|s_divCounter[11]~48\ $ (GND))) # (!\ClkDividerN|s_divCounter\(12) & (!\ClkDividerN|s_divCounter[11]~48\ & VCC))
-- \ClkDividerN|s_divCounter[12]~50\ = CARRY((\ClkDividerN|s_divCounter\(12) & !\ClkDividerN|s_divCounter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(12),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[11]~48\,
	combout => \ClkDividerN|s_divCounter[12]~49_combout\,
	cout => \ClkDividerN|s_divCounter[12]~50\);

-- Location: FF_X56_Y4_N31
\ClkDividerN|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDividerN|s_divCounter[12]~49_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(12));

-- Location: LCCOMB_X55_Y3_N2
\ClkDividerN|s_divCounter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[13]~51_combout\ = (\ClkDividerN|s_divCounter\(13) & (!\ClkDividerN|s_divCounter[12]~50\)) # (!\ClkDividerN|s_divCounter\(13) & ((\ClkDividerN|s_divCounter[12]~50\) # (GND)))
-- \ClkDividerN|s_divCounter[13]~52\ = CARRY((!\ClkDividerN|s_divCounter[12]~50\) # (!\ClkDividerN|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(13),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[12]~50\,
	combout => \ClkDividerN|s_divCounter[13]~51_combout\,
	cout => \ClkDividerN|s_divCounter[13]~52\);

-- Location: FF_X56_Y4_N29
\ClkDividerN|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDividerN|s_divCounter[13]~51_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(13));

-- Location: LCCOMB_X55_Y3_N4
\ClkDividerN|s_divCounter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[14]~53_combout\ = (\ClkDividerN|s_divCounter\(14) & (\ClkDividerN|s_divCounter[13]~52\ $ (GND))) # (!\ClkDividerN|s_divCounter\(14) & (!\ClkDividerN|s_divCounter[13]~52\ & VCC))
-- \ClkDividerN|s_divCounter[14]~54\ = CARRY((\ClkDividerN|s_divCounter\(14) & !\ClkDividerN|s_divCounter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(14),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[13]~52\,
	combout => \ClkDividerN|s_divCounter[14]~53_combout\,
	cout => \ClkDividerN|s_divCounter[14]~54\);

-- Location: FF_X56_Y4_N19
\ClkDividerN|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ClkDividerN|s_divCounter[14]~53_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(14));

-- Location: LCCOMB_X55_Y3_N6
\ClkDividerN|s_divCounter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[15]~55_combout\ = (\ClkDividerN|s_divCounter\(15) & (!\ClkDividerN|s_divCounter[14]~54\)) # (!\ClkDividerN|s_divCounter\(15) & ((\ClkDividerN|s_divCounter[14]~54\) # (GND)))
-- \ClkDividerN|s_divCounter[15]~56\ = CARRY((!\ClkDividerN|s_divCounter[14]~54\) # (!\ClkDividerN|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(15),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[14]~54\,
	combout => \ClkDividerN|s_divCounter[15]~55_combout\,
	cout => \ClkDividerN|s_divCounter[15]~56\);

-- Location: FF_X55_Y3_N7
\ClkDividerN|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[15]~55_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(15));

-- Location: LCCOMB_X55_Y3_N8
\ClkDividerN|s_divCounter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[16]~57_combout\ = (\ClkDividerN|s_divCounter\(16) & (\ClkDividerN|s_divCounter[15]~56\ $ (GND))) # (!\ClkDividerN|s_divCounter\(16) & (!\ClkDividerN|s_divCounter[15]~56\ & VCC))
-- \ClkDividerN|s_divCounter[16]~58\ = CARRY((\ClkDividerN|s_divCounter\(16) & !\ClkDividerN|s_divCounter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(16),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[15]~56\,
	combout => \ClkDividerN|s_divCounter[16]~57_combout\,
	cout => \ClkDividerN|s_divCounter[16]~58\);

-- Location: FF_X55_Y3_N9
\ClkDividerN|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[16]~57_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(16));

-- Location: LCCOMB_X55_Y3_N10
\ClkDividerN|s_divCounter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[17]~59_combout\ = (\ClkDividerN|s_divCounter\(17) & (!\ClkDividerN|s_divCounter[16]~58\)) # (!\ClkDividerN|s_divCounter\(17) & ((\ClkDividerN|s_divCounter[16]~58\) # (GND)))
-- \ClkDividerN|s_divCounter[17]~60\ = CARRY((!\ClkDividerN|s_divCounter[16]~58\) # (!\ClkDividerN|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(17),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[16]~58\,
	combout => \ClkDividerN|s_divCounter[17]~59_combout\,
	cout => \ClkDividerN|s_divCounter[17]~60\);

-- Location: FF_X55_Y3_N11
\ClkDividerN|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[17]~59_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(17));

-- Location: LCCOMB_X55_Y3_N12
\ClkDividerN|s_divCounter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[18]~61_combout\ = (\ClkDividerN|s_divCounter\(18) & (\ClkDividerN|s_divCounter[17]~60\ $ (GND))) # (!\ClkDividerN|s_divCounter\(18) & (!\ClkDividerN|s_divCounter[17]~60\ & VCC))
-- \ClkDividerN|s_divCounter[18]~62\ = CARRY((\ClkDividerN|s_divCounter\(18) & !\ClkDividerN|s_divCounter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(18),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[17]~60\,
	combout => \ClkDividerN|s_divCounter[18]~61_combout\,
	cout => \ClkDividerN|s_divCounter[18]~62\);

-- Location: FF_X55_Y3_N13
\ClkDividerN|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[18]~61_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(18));

-- Location: LCCOMB_X55_Y3_N14
\ClkDividerN|s_divCounter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[19]~63_combout\ = (\ClkDividerN|s_divCounter\(19) & (!\ClkDividerN|s_divCounter[18]~62\)) # (!\ClkDividerN|s_divCounter\(19) & ((\ClkDividerN|s_divCounter[18]~62\) # (GND)))
-- \ClkDividerN|s_divCounter[19]~64\ = CARRY((!\ClkDividerN|s_divCounter[18]~62\) # (!\ClkDividerN|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(19),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[18]~62\,
	combout => \ClkDividerN|s_divCounter[19]~63_combout\,
	cout => \ClkDividerN|s_divCounter[19]~64\);

-- Location: FF_X55_Y3_N15
\ClkDividerN|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[19]~63_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(19));

-- Location: LCCOMB_X55_Y3_N16
\ClkDividerN|s_divCounter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[20]~65_combout\ = (\ClkDividerN|s_divCounter\(20) & (\ClkDividerN|s_divCounter[19]~64\ $ (GND))) # (!\ClkDividerN|s_divCounter\(20) & (!\ClkDividerN|s_divCounter[19]~64\ & VCC))
-- \ClkDividerN|s_divCounter[20]~66\ = CARRY((\ClkDividerN|s_divCounter\(20) & !\ClkDividerN|s_divCounter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(20),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[19]~64\,
	combout => \ClkDividerN|s_divCounter[20]~65_combout\,
	cout => \ClkDividerN|s_divCounter[20]~66\);

-- Location: FF_X55_Y3_N17
\ClkDividerN|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[20]~65_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(20));

-- Location: LCCOMB_X55_Y3_N18
\ClkDividerN|s_divCounter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[21]~67_combout\ = (\ClkDividerN|s_divCounter\(21) & (!\ClkDividerN|s_divCounter[20]~66\)) # (!\ClkDividerN|s_divCounter\(21) & ((\ClkDividerN|s_divCounter[20]~66\) # (GND)))
-- \ClkDividerN|s_divCounter[21]~68\ = CARRY((!\ClkDividerN|s_divCounter[20]~66\) # (!\ClkDividerN|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(21),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[20]~66\,
	combout => \ClkDividerN|s_divCounter[21]~67_combout\,
	cout => \ClkDividerN|s_divCounter[21]~68\);

-- Location: FF_X55_Y3_N19
\ClkDividerN|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[21]~67_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(21));

-- Location: LCCOMB_X55_Y3_N20
\ClkDividerN|s_divCounter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[22]~69_combout\ = (\ClkDividerN|s_divCounter\(22) & (\ClkDividerN|s_divCounter[21]~68\ $ (GND))) # (!\ClkDividerN|s_divCounter\(22) & (!\ClkDividerN|s_divCounter[21]~68\ & VCC))
-- \ClkDividerN|s_divCounter[22]~70\ = CARRY((\ClkDividerN|s_divCounter\(22) & !\ClkDividerN|s_divCounter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(22),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[21]~68\,
	combout => \ClkDividerN|s_divCounter[22]~69_combout\,
	cout => \ClkDividerN|s_divCounter[22]~70\);

-- Location: FF_X55_Y3_N21
\ClkDividerN|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[22]~69_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(22));

-- Location: LCCOMB_X55_Y3_N22
\ClkDividerN|s_divCounter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[23]~71_combout\ = (\ClkDividerN|s_divCounter\(23) & (!\ClkDividerN|s_divCounter[22]~70\)) # (!\ClkDividerN|s_divCounter\(23) & ((\ClkDividerN|s_divCounter[22]~70\) # (GND)))
-- \ClkDividerN|s_divCounter[23]~72\ = CARRY((!\ClkDividerN|s_divCounter[22]~70\) # (!\ClkDividerN|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(23),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[22]~70\,
	combout => \ClkDividerN|s_divCounter[23]~71_combout\,
	cout => \ClkDividerN|s_divCounter[23]~72\);

-- Location: FF_X55_Y3_N23
\ClkDividerN|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[23]~71_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(23));

-- Location: LCCOMB_X55_Y3_N24
\ClkDividerN|s_divCounter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[24]~73_combout\ = \ClkDividerN|s_divCounter[23]~72\ $ (!\ClkDividerN|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ClkDividerN|s_divCounter\(24),
	cin => \ClkDividerN|s_divCounter[23]~72\,
	combout => \ClkDividerN|s_divCounter[24]~73_combout\);

-- Location: FF_X55_Y3_N25
\ClkDividerN|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[24]~73_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(24));

-- Location: LCCOMB_X55_Y3_N26
\ClkDividerN|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~4_combout\ = ((!\ClkDividerN|s_divCounter\(17) & !\ClkDividerN|s_divCounter\(16))) # (!\ClkDividerN|s_divCounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(17),
	datac => \ClkDividerN|s_divCounter\(16),
	datad => \ClkDividerN|s_divCounter\(22),
	combout => \ClkDividerN|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y3_N30
\ClkDividerN|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~2_combout\ = (\ClkDividerN|s_divCounter\(18) & (\ClkDividerN|s_divCounter\(21) & (\ClkDividerN|s_divCounter\(19) & \ClkDividerN|s_divCounter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(18),
	datab => \ClkDividerN|s_divCounter\(21),
	datac => \ClkDividerN|s_divCounter\(19),
	datad => \ClkDividerN|s_divCounter\(20),
	combout => \ClkDividerN|clkOut~2_combout\);

-- Location: LCCOMB_X56_Y3_N18
\ClkDividerN|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~5_combout\ = ((!\ClkDividerN|s_divCounter\(23) & ((\ClkDividerN|LessThan0~4_combout\) # (!\ClkDividerN|clkOut~2_combout\)))) # (!\ClkDividerN|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(23),
	datab => \ClkDividerN|s_divCounter\(24),
	datac => \ClkDividerN|LessThan0~4_combout\,
	datad => \ClkDividerN|clkOut~2_combout\,
	combout => \ClkDividerN|LessThan0~5_combout\);

-- Location: LCCOMB_X56_Y4_N12
\ClkDividerN|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~4_combout\ = (\ClkDividerN|s_divCounter\(12) & (\ClkDividerN|s_divCounter\(11) & \ClkDividerN|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(12),
	datac => \ClkDividerN|s_divCounter\(11),
	datad => \ClkDividerN|s_divCounter\(13),
	combout => \ClkDividerN|clkOut~4_combout\);

-- Location: LCCOMB_X55_Y3_N28
\ClkDividerN|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~0_combout\ = (!\ClkDividerN|s_divCounter\(17) & (!\ClkDividerN|s_divCounter\(23) & !\ClkDividerN|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(17),
	datac => \ClkDividerN|s_divCounter\(23),
	datad => \ClkDividerN|s_divCounter\(15),
	combout => \ClkDividerN|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y4_N0
\ClkDividerN|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~3_combout\ = (\ClkDividerN|LessThan0~0_combout\ & ((!\ClkDividerN|s_divCounter\(14)) # (!\ClkDividerN|clkOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|clkOut~4_combout\,
	datab => \ClkDividerN|s_divCounter\(14),
	datad => \ClkDividerN|LessThan0~0_combout\,
	combout => \ClkDividerN|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y4_N6
\ClkDividerN|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~6_combout\ = (!\ClkDividerN|LessThan0~5_combout\ & (!\ClkDividerN|LessThan0~3_combout\ & !\ClkDividerN|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|LessThan0~5_combout\,
	datac => \ClkDividerN|LessThan0~3_combout\,
	datad => \ClkDividerN|LessThan0~2_combout\,
	combout => \ClkDividerN|LessThan0~6_combout\);

-- Location: FF_X55_Y4_N9
\ClkDividerN|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[0]~25_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(0));

-- Location: LCCOMB_X55_Y4_N10
\ClkDividerN|s_divCounter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[1]~27_combout\ = (\ClkDividerN|s_divCounter\(1) & (!\ClkDividerN|s_divCounter[0]~26\)) # (!\ClkDividerN|s_divCounter\(1) & ((\ClkDividerN|s_divCounter[0]~26\) # (GND)))
-- \ClkDividerN|s_divCounter[1]~28\ = CARRY((!\ClkDividerN|s_divCounter[0]~26\) # (!\ClkDividerN|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(1),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[0]~26\,
	combout => \ClkDividerN|s_divCounter[1]~27_combout\,
	cout => \ClkDividerN|s_divCounter[1]~28\);

-- Location: FF_X55_Y4_N11
\ClkDividerN|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[1]~27_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(1));

-- Location: LCCOMB_X55_Y4_N12
\ClkDividerN|s_divCounter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[2]~29_combout\ = (\ClkDividerN|s_divCounter\(2) & (\ClkDividerN|s_divCounter[1]~28\ $ (GND))) # (!\ClkDividerN|s_divCounter\(2) & (!\ClkDividerN|s_divCounter[1]~28\ & VCC))
-- \ClkDividerN|s_divCounter[2]~30\ = CARRY((\ClkDividerN|s_divCounter\(2) & !\ClkDividerN|s_divCounter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(2),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[1]~28\,
	combout => \ClkDividerN|s_divCounter[2]~29_combout\,
	cout => \ClkDividerN|s_divCounter[2]~30\);

-- Location: FF_X55_Y4_N13
\ClkDividerN|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[2]~29_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(2));

-- Location: LCCOMB_X55_Y4_N14
\ClkDividerN|s_divCounter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[3]~31_combout\ = (\ClkDividerN|s_divCounter\(3) & (!\ClkDividerN|s_divCounter[2]~30\)) # (!\ClkDividerN|s_divCounter\(3) & ((\ClkDividerN|s_divCounter[2]~30\) # (GND)))
-- \ClkDividerN|s_divCounter[3]~32\ = CARRY((!\ClkDividerN|s_divCounter[2]~30\) # (!\ClkDividerN|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(3),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[2]~30\,
	combout => \ClkDividerN|s_divCounter[3]~31_combout\,
	cout => \ClkDividerN|s_divCounter[3]~32\);

-- Location: FF_X55_Y4_N15
\ClkDividerN|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[3]~31_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(3));

-- Location: LCCOMB_X55_Y4_N16
\ClkDividerN|s_divCounter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[4]~33_combout\ = (\ClkDividerN|s_divCounter\(4) & (\ClkDividerN|s_divCounter[3]~32\ $ (GND))) # (!\ClkDividerN|s_divCounter\(4) & (!\ClkDividerN|s_divCounter[3]~32\ & VCC))
-- \ClkDividerN|s_divCounter[4]~34\ = CARRY((\ClkDividerN|s_divCounter\(4) & !\ClkDividerN|s_divCounter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(4),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[3]~32\,
	combout => \ClkDividerN|s_divCounter[4]~33_combout\,
	cout => \ClkDividerN|s_divCounter[4]~34\);

-- Location: FF_X55_Y4_N17
\ClkDividerN|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[4]~33_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(4));

-- Location: LCCOMB_X55_Y4_N18
\ClkDividerN|s_divCounter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[5]~35_combout\ = (\ClkDividerN|s_divCounter\(5) & (!\ClkDividerN|s_divCounter[4]~34\)) # (!\ClkDividerN|s_divCounter\(5) & ((\ClkDividerN|s_divCounter[4]~34\) # (GND)))
-- \ClkDividerN|s_divCounter[5]~36\ = CARRY((!\ClkDividerN|s_divCounter[4]~34\) # (!\ClkDividerN|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(5),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[4]~34\,
	combout => \ClkDividerN|s_divCounter[5]~35_combout\,
	cout => \ClkDividerN|s_divCounter[5]~36\);

-- Location: FF_X55_Y4_N19
\ClkDividerN|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[5]~35_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(5));

-- Location: LCCOMB_X55_Y4_N20
\ClkDividerN|s_divCounter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[6]~37_combout\ = (\ClkDividerN|s_divCounter\(6) & (\ClkDividerN|s_divCounter[5]~36\ $ (GND))) # (!\ClkDividerN|s_divCounter\(6) & (!\ClkDividerN|s_divCounter[5]~36\ & VCC))
-- \ClkDividerN|s_divCounter[6]~38\ = CARRY((\ClkDividerN|s_divCounter\(6) & !\ClkDividerN|s_divCounter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(6),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[5]~36\,
	combout => \ClkDividerN|s_divCounter[6]~37_combout\,
	cout => \ClkDividerN|s_divCounter[6]~38\);

-- Location: FF_X55_Y4_N21
\ClkDividerN|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[6]~37_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(6));

-- Location: LCCOMB_X55_Y4_N22
\ClkDividerN|s_divCounter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[7]~39_combout\ = (\ClkDividerN|s_divCounter\(7) & (!\ClkDividerN|s_divCounter[6]~38\)) # (!\ClkDividerN|s_divCounter\(7) & ((\ClkDividerN|s_divCounter[6]~38\) # (GND)))
-- \ClkDividerN|s_divCounter[7]~40\ = CARRY((!\ClkDividerN|s_divCounter[6]~38\) # (!\ClkDividerN|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(7),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[6]~38\,
	combout => \ClkDividerN|s_divCounter[7]~39_combout\,
	cout => \ClkDividerN|s_divCounter[7]~40\);

-- Location: FF_X55_Y4_N23
\ClkDividerN|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[7]~39_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(7));

-- Location: LCCOMB_X55_Y4_N24
\ClkDividerN|s_divCounter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[8]~41_combout\ = (\ClkDividerN|s_divCounter\(8) & (\ClkDividerN|s_divCounter[7]~40\ $ (GND))) # (!\ClkDividerN|s_divCounter\(8) & (!\ClkDividerN|s_divCounter[7]~40\ & VCC))
-- \ClkDividerN|s_divCounter[8]~42\ = CARRY((\ClkDividerN|s_divCounter\(8) & !\ClkDividerN|s_divCounter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(8),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[7]~40\,
	combout => \ClkDividerN|s_divCounter[8]~41_combout\,
	cout => \ClkDividerN|s_divCounter[8]~42\);

-- Location: FF_X55_Y4_N25
\ClkDividerN|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[8]~41_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(8));

-- Location: LCCOMB_X55_Y4_N26
\ClkDividerN|s_divCounter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|s_divCounter[9]~43_combout\ = (\ClkDividerN|s_divCounter\(9) & (!\ClkDividerN|s_divCounter[8]~42\)) # (!\ClkDividerN|s_divCounter\(9) & ((\ClkDividerN|s_divCounter[8]~42\) # (GND)))
-- \ClkDividerN|s_divCounter[9]~44\ = CARRY((!\ClkDividerN|s_divCounter[8]~42\) # (!\ClkDividerN|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(9),
	datad => VCC,
	cin => \ClkDividerN|s_divCounter[8]~42\,
	combout => \ClkDividerN|s_divCounter[9]~43_combout\,
	cout => \ClkDividerN|s_divCounter[9]~44\);

-- Location: FF_X55_Y4_N27
\ClkDividerN|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[9]~43_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(9));

-- Location: FF_X55_Y4_N29
\ClkDividerN|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|s_divCounter[10]~45_combout\,
	sclr => \ClkDividerN|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|s_divCounter\(10));

-- Location: LCCOMB_X55_Y4_N4
\ClkDividerN|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~0_combout\ = (\ClkDividerN|s_divCounter\(2) & (\ClkDividerN|s_divCounter\(3) & (\ClkDividerN|s_divCounter\(1) & \ClkDividerN|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(2),
	datab => \ClkDividerN|s_divCounter\(3),
	datac => \ClkDividerN|s_divCounter\(1),
	datad => \ClkDividerN|s_divCounter\(0),
	combout => \ClkDividerN|clkOut~0_combout\);

-- Location: LCCOMB_X56_Y4_N22
\ClkDividerN|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~1_combout\ = (!\ClkDividerN|s_divCounter\(6) & (!\ClkDividerN|s_divCounter\(7) & (!\ClkDividerN|s_divCounter\(9) & !\ClkDividerN|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(6),
	datab => \ClkDividerN|s_divCounter\(7),
	datac => \ClkDividerN|s_divCounter\(9),
	datad => \ClkDividerN|s_divCounter\(8),
	combout => \ClkDividerN|clkOut~1_combout\);

-- Location: LCCOMB_X55_Y4_N2
\ClkDividerN|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~1_combout\ = (\ClkDividerN|clkOut~1_combout\ & (((!\ClkDividerN|clkOut~0_combout\) # (!\ClkDividerN|s_divCounter\(4))) # (!\ClkDividerN|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(5),
	datab => \ClkDividerN|s_divCounter\(4),
	datac => \ClkDividerN|clkOut~0_combout\,
	datad => \ClkDividerN|clkOut~1_combout\,
	combout => \ClkDividerN|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y4_N0
\ClkDividerN|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|LessThan0~2_combout\ = (!\ClkDividerN|s_divCounter\(10) & (\ClkDividerN|LessThan0~0_combout\ & \ClkDividerN|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|s_divCounter\(10),
	datac => \ClkDividerN|LessThan0~0_combout\,
	datad => \ClkDividerN|LessThan0~1_combout\,
	combout => \ClkDividerN|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y4_N8
\ClkDividerN|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~5_combout\ = (!\ClkDividerN|s_divCounter\(16) & (!\ClkDividerN|s_divCounter\(14) & (\ClkDividerN|s_divCounter\(15) & \ClkDividerN|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(16),
	datab => \ClkDividerN|s_divCounter\(14),
	datac => \ClkDividerN|s_divCounter\(15),
	datad => \ClkDividerN|s_divCounter\(10),
	combout => \ClkDividerN|clkOut~5_combout\);

-- Location: LCCOMB_X56_Y3_N0
\ClkDividerN|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~6_combout\ = (\ClkDividerN|s_divCounter\(17) & (!\ClkDividerN|s_divCounter\(24) & (!\ClkDividerN|s_divCounter\(22) & \ClkDividerN|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(17),
	datab => \ClkDividerN|s_divCounter\(24),
	datac => \ClkDividerN|s_divCounter\(22),
	datad => \ClkDividerN|s_divCounter\(23),
	combout => \ClkDividerN|clkOut~6_combout\);

-- Location: LCCOMB_X56_Y4_N4
\ClkDividerN|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~7_combout\ = (\ClkDividerN|clkOut~4_combout\ & (!\ClkDividerN|s_divCounter\(5) & (\ClkDividerN|clkOut~5_combout\ & \ClkDividerN|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|clkOut~4_combout\,
	datab => \ClkDividerN|s_divCounter\(5),
	datac => \ClkDividerN|clkOut~5_combout\,
	datad => \ClkDividerN|clkOut~6_combout\,
	combout => \ClkDividerN|clkOut~7_combout\);

-- Location: LCCOMB_X56_Y4_N14
\ClkDividerN|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~3_combout\ = (\ClkDividerN|s_divCounter\(4) & (\ClkDividerN|clkOut~0_combout\ & (\ClkDividerN|clkOut~1_combout\ & \ClkDividerN|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|s_divCounter\(4),
	datab => \ClkDividerN|clkOut~0_combout\,
	datac => \ClkDividerN|clkOut~1_combout\,
	datad => \ClkDividerN|clkOut~2_combout\,
	combout => \ClkDividerN|clkOut~3_combout\);

-- Location: LCCOMB_X56_Y4_N2
\ClkDividerN|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~8_combout\ = (\ClkDividerN|clkOut~q\) # ((\ClkDividerN|clkOut~7_combout\ & \ClkDividerN|clkOut~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ClkDividerN|clkOut~7_combout\,
	datac => \ClkDividerN|clkOut~3_combout\,
	datad => \ClkDividerN|clkOut~q\,
	combout => \ClkDividerN|clkOut~8_combout\);

-- Location: LCCOMB_X56_Y4_N26
\ClkDividerN|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ClkDividerN|clkOut~9_combout\ = (\ClkDividerN|clkOut~8_combout\ & ((\ClkDividerN|LessThan0~2_combout\) # ((\ClkDividerN|LessThan0~3_combout\) # (\ClkDividerN|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ClkDividerN|LessThan0~2_combout\,
	datab => \ClkDividerN|LessThan0~3_combout\,
	datac => \ClkDividerN|clkOut~8_combout\,
	datad => \ClkDividerN|LessThan0~5_combout\,
	combout => \ClkDividerN|clkOut~9_combout\);

-- Location: FF_X56_Y4_N27
\ClkDividerN|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ClkDividerN|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkDividerN|clkOut~q\);

-- Location: CLKCTRL_G15
\ClkDividerN|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ClkDividerN|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ClkDividerN|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X72_Y69_N16
\system|aux~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~17_combout\ = (\SW[1]~input_o\ & (\system|aux\(16))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(16),
	datad => \SW[0]~input_o\,
	combout => \system|aux~17_combout\);

-- Location: FF_X72_Y69_N17
\system|aux[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(17));

-- Location: LCCOMB_X72_Y69_N26
\system|aux~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~16_combout\ = (\SW[1]~input_o\ & (\system|aux\(15))) # (!\SW[1]~input_o\ & ((\system|aux\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(15),
	datad => \system|aux\(17),
	combout => \system|aux~16_combout\);

-- Location: FF_X72_Y69_N27
\system|aux[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(16));

-- Location: LCCOMB_X72_Y69_N4
\system|aux~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~15_combout\ = (\SW[1]~input_o\ & ((\system|aux\(14)))) # (!\SW[1]~input_o\ & (\system|aux\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(16),
	datad => \system|aux\(14),
	combout => \system|aux~15_combout\);

-- Location: FF_X72_Y69_N5
\system|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(15));

-- Location: LCCOMB_X72_Y69_N6
\system|aux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~14_combout\ = (\SW[1]~input_o\ & ((\system|aux\(13)))) # (!\SW[1]~input_o\ & (\system|aux\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(15),
	datad => \system|aux\(13),
	combout => \system|aux~14_combout\);

-- Location: FF_X72_Y69_N7
\system|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(14));

-- Location: LCCOMB_X72_Y69_N28
\system|aux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~13_combout\ = (\SW[1]~input_o\ & (\system|aux\(12))) # (!\SW[1]~input_o\ & ((\system|aux\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(12),
	datad => \system|aux\(14),
	combout => \system|aux~13_combout\);

-- Location: FF_X72_Y69_N29
\system|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(13));

-- Location: LCCOMB_X72_Y69_N30
\system|aux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~12_combout\ = (\SW[1]~input_o\ & (\system|aux\(11))) # (!\SW[1]~input_o\ & ((\system|aux\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system|aux\(11),
	datac => \SW[1]~input_o\,
	datad => \system|aux\(13),
	combout => \system|aux~12_combout\);

-- Location: FF_X72_Y69_N31
\system|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(12));

-- Location: LCCOMB_X72_Y69_N24
\system|aux~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~11_combout\ = (\SW[1]~input_o\ & ((\system|aux\(10)))) # (!\SW[1]~input_o\ & (\system|aux\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(12),
	datad => \system|aux\(10),
	combout => \system|aux~11_combout\);

-- Location: FF_X72_Y69_N25
\system|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(11));

-- Location: LCCOMB_X72_Y69_N22
\system|aux~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~10_combout\ = (\SW[1]~input_o\ & (\system|aux\(9))) # (!\SW[1]~input_o\ & ((\system|aux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system|aux\(9),
	datac => \SW[1]~input_o\,
	datad => \system|aux\(11),
	combout => \system|aux~10_combout\);

-- Location: FF_X72_Y69_N23
\system|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(10));

-- Location: LCCOMB_X72_Y69_N0
\system|aux~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~9_combout\ = (\SW[1]~input_o\ & ((\system|aux\(8)))) # (!\SW[1]~input_o\ & (\system|aux\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(10),
	datad => \system|aux\(8),
	combout => \system|aux~9_combout\);

-- Location: FF_X72_Y69_N1
\system|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(9));

-- Location: LCCOMB_X72_Y69_N10
\system|aux~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~8_combout\ = (\SW[1]~input_o\ & (\system|aux\(7))) # (!\SW[1]~input_o\ & ((\system|aux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(7),
	datad => \system|aux\(9),
	combout => \system|aux~8_combout\);

-- Location: FF_X72_Y69_N11
\system|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(8));

-- Location: LCCOMB_X72_Y69_N8
\system|aux~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~7_combout\ = (\SW[1]~input_o\ & (\system|aux\(6))) # (!\SW[1]~input_o\ & ((\system|aux\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(6),
	datad => \system|aux\(8),
	combout => \system|aux~7_combout\);

-- Location: FF_X72_Y69_N9
\system|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(7));

-- Location: LCCOMB_X72_Y69_N14
\system|aux~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~6_combout\ = (\SW[1]~input_o\ & ((\system|aux\(5)))) # (!\SW[1]~input_o\ & (\system|aux\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(7),
	datad => \system|aux\(5),
	combout => \system|aux~6_combout\);

-- Location: FF_X72_Y69_N15
\system|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(6));

-- Location: LCCOMB_X72_Y69_N20
\system|aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~5_combout\ = (\SW[1]~input_o\ & ((\system|aux\(4)))) # (!\SW[1]~input_o\ & (\system|aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(6),
	datad => \system|aux\(4),
	combout => \system|aux~5_combout\);

-- Location: FF_X72_Y69_N21
\system|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(5));

-- Location: LCCOMB_X72_Y69_N18
\system|aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~4_combout\ = (\SW[1]~input_o\ & (\system|aux\(3))) # (!\SW[1]~input_o\ & ((\system|aux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system|aux\(3),
	datac => \SW[1]~input_o\,
	datad => \system|aux\(5),
	combout => \system|aux~4_combout\);

-- Location: FF_X72_Y69_N19
\system|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(4));

-- Location: LCCOMB_X72_Y69_N12
\system|aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~3_combout\ = (\SW[1]~input_o\ & ((\system|aux\(2)))) # (!\SW[1]~input_o\ & (\system|aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system|aux\(4),
	datac => \SW[1]~input_o\,
	datad => \system|aux\(2),
	combout => \system|aux~3_combout\);

-- Location: FF_X72_Y69_N13
\system|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(3));

-- Location: LCCOMB_X73_Y69_N4
\system|aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~2_combout\ = (\SW[1]~input_o\ & (\system|aux\(1))) # (!\SW[1]~input_o\ & ((\system|aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(1),
	datad => \system|aux\(3),
	combout => \system|aux~2_combout\);

-- Location: FF_X73_Y69_N5
\system|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(2));

-- Location: LCCOMB_X73_Y69_N30
\system|aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~1_combout\ = (\SW[1]~input_o\ & ((\system|aux\(0)))) # (!\SW[1]~input_o\ & (\system|aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(2),
	datad => \system|aux\(0),
	combout => \system|aux~1_combout\);

-- Location: FF_X73_Y69_N31
\system|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(1));

-- Location: LCCOMB_X73_Y69_N0
\system|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system|aux~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\system|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \system|aux\(1),
	datad => \SW[0]~input_o\,
	combout => \system|aux~0_combout\);

-- Location: FF_X73_Y69_N1
\system|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkDividerN|clkOut~clkctrl_outclk\,
	d => \system|aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system|aux\(0));

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


