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

-- DATE "05/09/2023 11:05:08"

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
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
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

ENTITY 	Chronometer IS
    PORT (
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8)
	);
END Chronometer;

-- Design Ports Information
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Chronometer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider_50|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[0]~6_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[3]~13\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[4]~14_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[4]~15\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[5]~16_combout\ : std_logic;
SIGNAL \clk_divider_50|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_divider_50|LessThan0~1_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[0]~7\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[1]~8_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[1]~9\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[2]~10_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[2]~11\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter[3]~12_combout\ : std_logic;
SIGNAL \clk_divider_50|LessThan1~0_combout\ : std_logic;
SIGNAL \clk_divider_50|clkOut~q\ : std_logic;
SIGNAL \clk_divider_50|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \pulse_generator|s_counter[0]~20_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[11]~43\ : std_logic;
SIGNAL \pulse_generator|s_counter[12]~44_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[12]~45\ : std_logic;
SIGNAL \pulse_generator|s_counter[13]~46_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[13]~47\ : std_logic;
SIGNAL \pulse_generator|s_counter[14]~48_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[14]~49\ : std_logic;
SIGNAL \pulse_generator|s_counter[15]~50_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[15]~51\ : std_logic;
SIGNAL \pulse_generator|s_counter[16]~52_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[16]~53\ : std_logic;
SIGNAL \pulse_generator|s_counter[17]~54_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[17]~55\ : std_logic;
SIGNAL \pulse_generator|s_counter[18]~56_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[18]~57\ : std_logic;
SIGNAL \pulse_generator|s_counter[19]~58_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~3_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~4_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~5_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~6_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~1_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~2_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~7_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[0]~21\ : std_logic;
SIGNAL \pulse_generator|s_counter[1]~22_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[1]~23\ : std_logic;
SIGNAL \pulse_generator|s_counter[2]~24_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[2]~25\ : std_logic;
SIGNAL \pulse_generator|s_counter[3]~26_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[3]~27\ : std_logic;
SIGNAL \pulse_generator|s_counter[4]~28_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[4]~29\ : std_logic;
SIGNAL \pulse_generator|s_counter[5]~30_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[5]~31\ : std_logic;
SIGNAL \pulse_generator|s_counter[6]~32_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[6]~33\ : std_logic;
SIGNAL \pulse_generator|s_counter[7]~34_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[7]~35\ : std_logic;
SIGNAL \pulse_generator|s_counter[8]~36_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[8]~37\ : std_logic;
SIGNAL \pulse_generator|s_counter[9]~38_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[9]~39\ : std_logic;
SIGNAL \pulse_generator|s_counter[10]~40_combout\ : std_logic;
SIGNAL \pulse_generator|s_counter[10]~41\ : std_logic;
SIGNAL \pulse_generator|s_counter[11]~42_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan0~0_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~1_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~2_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~0_combout\ : std_logic;
SIGNAL \pulse_generator|LessThan1~3_combout\ : std_logic;
SIGNAL \clk_divider_50|s_divCounter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pulse_generator|s_counter\ : std_logic_vector(19 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX2 <= ww_HEX2;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk_divider_50|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider_50|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse_generator|LessThan1~3_combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

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

-- Location: LCCOMB_X114_Y37_N12
\clk_divider_50|s_divCounter[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[0]~6_combout\ = \clk_divider_50|s_divCounter\(0) $ (VCC)
-- \clk_divider_50|s_divCounter[0]~7\ = CARRY(\clk_divider_50|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(0),
	datad => VCC,
	combout => \clk_divider_50|s_divCounter[0]~6_combout\,
	cout => \clk_divider_50|s_divCounter[0]~7\);

-- Location: LCCOMB_X114_Y37_N18
\clk_divider_50|s_divCounter[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[3]~12_combout\ = (\clk_divider_50|s_divCounter\(3) & (!\clk_divider_50|s_divCounter[2]~11\)) # (!\clk_divider_50|s_divCounter\(3) & ((\clk_divider_50|s_divCounter[2]~11\) # (GND)))
-- \clk_divider_50|s_divCounter[3]~13\ = CARRY((!\clk_divider_50|s_divCounter[2]~11\) # (!\clk_divider_50|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(3),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[2]~11\,
	combout => \clk_divider_50|s_divCounter[3]~12_combout\,
	cout => \clk_divider_50|s_divCounter[3]~13\);

-- Location: LCCOMB_X114_Y37_N20
\clk_divider_50|s_divCounter[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[4]~14_combout\ = (\clk_divider_50|s_divCounter\(4) & (\clk_divider_50|s_divCounter[3]~13\ $ (GND))) # (!\clk_divider_50|s_divCounter\(4) & (!\clk_divider_50|s_divCounter[3]~13\ & VCC))
-- \clk_divider_50|s_divCounter[4]~15\ = CARRY((\clk_divider_50|s_divCounter\(4) & !\clk_divider_50|s_divCounter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(4),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[3]~13\,
	combout => \clk_divider_50|s_divCounter[4]~14_combout\,
	cout => \clk_divider_50|s_divCounter[4]~15\);

-- Location: FF_X114_Y37_N21
\clk_divider_50|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[4]~14_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(4));

-- Location: LCCOMB_X114_Y37_N22
\clk_divider_50|s_divCounter[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[5]~16_combout\ = \clk_divider_50|s_divCounter\(5) $ (\clk_divider_50|s_divCounter[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(5),
	cin => \clk_divider_50|s_divCounter[4]~15\,
	combout => \clk_divider_50|s_divCounter[5]~16_combout\);

-- Location: FF_X114_Y37_N23
\clk_divider_50|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[5]~16_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(5));

-- Location: LCCOMB_X114_Y37_N2
\clk_divider_50|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|LessThan0~0_combout\ = (!\clk_divider_50|s_divCounter\(0) & (!\clk_divider_50|s_divCounter\(2) & (!\clk_divider_50|s_divCounter\(1) & !\clk_divider_50|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(0),
	datab => \clk_divider_50|s_divCounter\(2),
	datac => \clk_divider_50|s_divCounter\(1),
	datad => \clk_divider_50|s_divCounter\(3),
	combout => \clk_divider_50|LessThan0~0_combout\);

-- Location: LCCOMB_X114_Y37_N10
\clk_divider_50|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|LessThan0~1_combout\ = (\clk_divider_50|s_divCounter\(4) & (\clk_divider_50|s_divCounter\(5) & !\clk_divider_50|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(4),
	datac => \clk_divider_50|s_divCounter\(5),
	datad => \clk_divider_50|LessThan0~0_combout\,
	combout => \clk_divider_50|LessThan0~1_combout\);

-- Location: FF_X114_Y37_N13
\clk_divider_50|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[0]~6_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(0));

-- Location: LCCOMB_X114_Y37_N14
\clk_divider_50|s_divCounter[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[1]~8_combout\ = (\clk_divider_50|s_divCounter\(1) & (!\clk_divider_50|s_divCounter[0]~7\)) # (!\clk_divider_50|s_divCounter\(1) & ((\clk_divider_50|s_divCounter[0]~7\) # (GND)))
-- \clk_divider_50|s_divCounter[1]~9\ = CARRY((!\clk_divider_50|s_divCounter[0]~7\) # (!\clk_divider_50|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(1),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[0]~7\,
	combout => \clk_divider_50|s_divCounter[1]~8_combout\,
	cout => \clk_divider_50|s_divCounter[1]~9\);

-- Location: FF_X114_Y37_N15
\clk_divider_50|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[1]~8_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(1));

-- Location: LCCOMB_X114_Y37_N16
\clk_divider_50|s_divCounter[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|s_divCounter[2]~10_combout\ = (\clk_divider_50|s_divCounter\(2) & (\clk_divider_50|s_divCounter[1]~9\ $ (GND))) # (!\clk_divider_50|s_divCounter\(2) & (!\clk_divider_50|s_divCounter[1]~9\ & VCC))
-- \clk_divider_50|s_divCounter[2]~11\ = CARRY((\clk_divider_50|s_divCounter\(2) & !\clk_divider_50|s_divCounter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider_50|s_divCounter\(2),
	datad => VCC,
	cin => \clk_divider_50|s_divCounter[1]~9\,
	combout => \clk_divider_50|s_divCounter[2]~10_combout\,
	cout => \clk_divider_50|s_divCounter[2]~11\);

-- Location: FF_X114_Y37_N17
\clk_divider_50|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[2]~10_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(2));

-- Location: FF_X114_Y37_N19
\clk_divider_50|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|s_divCounter[3]~12_combout\,
	sclr => \clk_divider_50|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|s_divCounter\(3));

-- Location: LCCOMB_X114_Y37_N26
\clk_divider_50|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider_50|LessThan1~0_combout\ = (\clk_divider_50|s_divCounter\(5)) # ((\clk_divider_50|s_divCounter\(3) & \clk_divider_50|s_divCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider_50|s_divCounter\(3),
	datac => \clk_divider_50|s_divCounter\(5),
	datad => \clk_divider_50|s_divCounter\(4),
	combout => \clk_divider_50|LessThan1~0_combout\);

-- Location: FF_X114_Y37_N27
\clk_divider_50|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_divider_50|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider_50|clkOut~q\);

-- Location: CLKCTRL_G6
\clk_divider_50|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider_50|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider_50|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y70_N12
\pulse_generator|s_counter[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[0]~20_combout\ = \pulse_generator|s_counter\(0) $ (VCC)
-- \pulse_generator|s_counter[0]~21\ = CARRY(\pulse_generator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(0),
	datad => VCC,
	combout => \pulse_generator|s_counter[0]~20_combout\,
	cout => \pulse_generator|s_counter[0]~21\);

-- Location: LCCOMB_X67_Y69_N2
\pulse_generator|s_counter[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[11]~42_combout\ = (\pulse_generator|s_counter\(11) & (!\pulse_generator|s_counter[10]~41\)) # (!\pulse_generator|s_counter\(11) & ((\pulse_generator|s_counter[10]~41\) # (GND)))
-- \pulse_generator|s_counter[11]~43\ = CARRY((!\pulse_generator|s_counter[10]~41\) # (!\pulse_generator|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(11),
	datad => VCC,
	cin => \pulse_generator|s_counter[10]~41\,
	combout => \pulse_generator|s_counter[11]~42_combout\,
	cout => \pulse_generator|s_counter[11]~43\);

-- Location: LCCOMB_X67_Y69_N4
\pulse_generator|s_counter[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[12]~44_combout\ = (\pulse_generator|s_counter\(12) & (\pulse_generator|s_counter[11]~43\ $ (GND))) # (!\pulse_generator|s_counter\(12) & (!\pulse_generator|s_counter[11]~43\ & VCC))
-- \pulse_generator|s_counter[12]~45\ = CARRY((\pulse_generator|s_counter\(12) & !\pulse_generator|s_counter[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(12),
	datad => VCC,
	cin => \pulse_generator|s_counter[11]~43\,
	combout => \pulse_generator|s_counter[12]~44_combout\,
	cout => \pulse_generator|s_counter[12]~45\);

-- Location: FF_X67_Y69_N5
\pulse_generator|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[12]~44_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(12));

-- Location: LCCOMB_X67_Y69_N6
\pulse_generator|s_counter[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[13]~46_combout\ = (\pulse_generator|s_counter\(13) & (!\pulse_generator|s_counter[12]~45\)) # (!\pulse_generator|s_counter\(13) & ((\pulse_generator|s_counter[12]~45\) # (GND)))
-- \pulse_generator|s_counter[13]~47\ = CARRY((!\pulse_generator|s_counter[12]~45\) # (!\pulse_generator|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(13),
	datad => VCC,
	cin => \pulse_generator|s_counter[12]~45\,
	combout => \pulse_generator|s_counter[13]~46_combout\,
	cout => \pulse_generator|s_counter[13]~47\);

-- Location: FF_X67_Y69_N7
\pulse_generator|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[13]~46_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(13));

-- Location: LCCOMB_X67_Y69_N8
\pulse_generator|s_counter[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[14]~48_combout\ = (\pulse_generator|s_counter\(14) & (\pulse_generator|s_counter[13]~47\ $ (GND))) # (!\pulse_generator|s_counter\(14) & (!\pulse_generator|s_counter[13]~47\ & VCC))
-- \pulse_generator|s_counter[14]~49\ = CARRY((\pulse_generator|s_counter\(14) & !\pulse_generator|s_counter[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(14),
	datad => VCC,
	cin => \pulse_generator|s_counter[13]~47\,
	combout => \pulse_generator|s_counter[14]~48_combout\,
	cout => \pulse_generator|s_counter[14]~49\);

-- Location: FF_X67_Y69_N9
\pulse_generator|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[14]~48_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(14));

-- Location: LCCOMB_X67_Y69_N10
\pulse_generator|s_counter[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[15]~50_combout\ = (\pulse_generator|s_counter\(15) & (!\pulse_generator|s_counter[14]~49\)) # (!\pulse_generator|s_counter\(15) & ((\pulse_generator|s_counter[14]~49\) # (GND)))
-- \pulse_generator|s_counter[15]~51\ = CARRY((!\pulse_generator|s_counter[14]~49\) # (!\pulse_generator|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(15),
	datad => VCC,
	cin => \pulse_generator|s_counter[14]~49\,
	combout => \pulse_generator|s_counter[15]~50_combout\,
	cout => \pulse_generator|s_counter[15]~51\);

-- Location: FF_X68_Y70_N29
\pulse_generator|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	asdata => \pulse_generator|s_counter[15]~50_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(15));

-- Location: LCCOMB_X67_Y69_N12
\pulse_generator|s_counter[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[16]~52_combout\ = (\pulse_generator|s_counter\(16) & (\pulse_generator|s_counter[15]~51\ $ (GND))) # (!\pulse_generator|s_counter\(16) & (!\pulse_generator|s_counter[15]~51\ & VCC))
-- \pulse_generator|s_counter[16]~53\ = CARRY((\pulse_generator|s_counter\(16) & !\pulse_generator|s_counter[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datad => VCC,
	cin => \pulse_generator|s_counter[15]~51\,
	combout => \pulse_generator|s_counter[16]~52_combout\,
	cout => \pulse_generator|s_counter[16]~53\);

-- Location: FF_X67_Y69_N13
\pulse_generator|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[16]~52_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(16));

-- Location: LCCOMB_X67_Y69_N14
\pulse_generator|s_counter[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[17]~54_combout\ = (\pulse_generator|s_counter\(17) & (!\pulse_generator|s_counter[16]~53\)) # (!\pulse_generator|s_counter\(17) & ((\pulse_generator|s_counter[16]~53\) # (GND)))
-- \pulse_generator|s_counter[17]~55\ = CARRY((!\pulse_generator|s_counter[16]~53\) # (!\pulse_generator|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(17),
	datad => VCC,
	cin => \pulse_generator|s_counter[16]~53\,
	combout => \pulse_generator|s_counter[17]~54_combout\,
	cout => \pulse_generator|s_counter[17]~55\);

-- Location: FF_X67_Y69_N15
\pulse_generator|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[17]~54_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(17));

-- Location: LCCOMB_X67_Y69_N16
\pulse_generator|s_counter[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[18]~56_combout\ = (\pulse_generator|s_counter\(18) & (\pulse_generator|s_counter[17]~55\ $ (GND))) # (!\pulse_generator|s_counter\(18) & (!\pulse_generator|s_counter[17]~55\ & VCC))
-- \pulse_generator|s_counter[18]~57\ = CARRY((\pulse_generator|s_counter\(18) & !\pulse_generator|s_counter[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(18),
	datad => VCC,
	cin => \pulse_generator|s_counter[17]~55\,
	combout => \pulse_generator|s_counter[18]~56_combout\,
	cout => \pulse_generator|s_counter[18]~57\);

-- Location: FF_X67_Y69_N17
\pulse_generator|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[18]~56_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(18));

-- Location: LCCOMB_X67_Y69_N18
\pulse_generator|s_counter[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[19]~58_combout\ = \pulse_generator|s_counter\(19) $ (\pulse_generator|s_counter[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(19),
	cin => \pulse_generator|s_counter[18]~57\,
	combout => \pulse_generator|s_counter[19]~58_combout\);

-- Location: FF_X67_Y69_N19
\pulse_generator|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[19]~58_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(19));

-- Location: LCCOMB_X67_Y70_N10
\pulse_generator|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~3_combout\ = (!\pulse_generator|s_counter\(6) & (!\pulse_generator|s_counter\(7) & !\pulse_generator|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(6),
	datac => \pulse_generator|s_counter\(7),
	datad => \pulse_generator|s_counter\(8),
	combout => \pulse_generator|LessThan0~3_combout\);

-- Location: LCCOMB_X67_Y70_N4
\pulse_generator|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~4_combout\ = (((!\pulse_generator|s_counter\(2)) # (!\pulse_generator|s_counter\(5))) # (!\pulse_generator|s_counter\(1))) # (!\pulse_generator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(0),
	datab => \pulse_generator|s_counter\(1),
	datac => \pulse_generator|s_counter\(5),
	datad => \pulse_generator|s_counter\(2),
	combout => \pulse_generator|LessThan0~4_combout\);

-- Location: LCCOMB_X67_Y70_N2
\pulse_generator|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~5_combout\ = (\pulse_generator|s_counter\(15)) # ((\pulse_generator|s_counter\(3) & (\pulse_generator|s_counter\(4) & !\pulse_generator|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(3),
	datab => \pulse_generator|s_counter\(4),
	datac => \pulse_generator|LessThan0~4_combout\,
	datad => \pulse_generator|s_counter\(15),
	combout => \pulse_generator|LessThan0~5_combout\);

-- Location: LCCOMB_X67_Y70_N8
\pulse_generator|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~6_combout\ = (\pulse_generator|LessThan0~3_combout\ & (!\pulse_generator|LessThan0~5_combout\ & (!\pulse_generator|s_counter\(13) & \pulse_generator|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan0~3_combout\,
	datab => \pulse_generator|LessThan0~5_combout\,
	datac => \pulse_generator|s_counter\(13),
	datad => \pulse_generator|LessThan0~0_combout\,
	combout => \pulse_generator|LessThan0~6_combout\);

-- Location: LCCOMB_X67_Y69_N26
\pulse_generator|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~1_combout\ = (\pulse_generator|s_counter\(14) & ((\pulse_generator|s_counter\(13)) # ((\pulse_generator|s_counter\(9)) # (!\pulse_generator|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(13),
	datab => \pulse_generator|s_counter\(14),
	datac => \pulse_generator|LessThan0~0_combout\,
	datad => \pulse_generator|s_counter\(9),
	combout => \pulse_generator|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y70_N0
\pulse_generator|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~2_combout\ = (((!\pulse_generator|s_counter\(15) & !\pulse_generator|LessThan0~1_combout\)) # (!\pulse_generator|s_counter\(17))) # (!\pulse_generator|s_counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datab => \pulse_generator|s_counter\(15),
	datac => \pulse_generator|s_counter\(17),
	datad => \pulse_generator|LessThan0~1_combout\,
	combout => \pulse_generator|LessThan0~2_combout\);

-- Location: LCCOMB_X67_Y70_N6
\pulse_generator|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~7_combout\ = (\pulse_generator|s_counter\(19) & (\pulse_generator|s_counter\(18) & (!\pulse_generator|LessThan0~6_combout\ & !\pulse_generator|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(19),
	datab => \pulse_generator|s_counter\(18),
	datac => \pulse_generator|LessThan0~6_combout\,
	datad => \pulse_generator|LessThan0~2_combout\,
	combout => \pulse_generator|LessThan0~7_combout\);

-- Location: FF_X67_Y70_N13
\pulse_generator|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[0]~20_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(0));

-- Location: LCCOMB_X67_Y70_N14
\pulse_generator|s_counter[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[1]~22_combout\ = (\pulse_generator|s_counter\(1) & (!\pulse_generator|s_counter[0]~21\)) # (!\pulse_generator|s_counter\(1) & ((\pulse_generator|s_counter[0]~21\) # (GND)))
-- \pulse_generator|s_counter[1]~23\ = CARRY((!\pulse_generator|s_counter[0]~21\) # (!\pulse_generator|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(1),
	datad => VCC,
	cin => \pulse_generator|s_counter[0]~21\,
	combout => \pulse_generator|s_counter[1]~22_combout\,
	cout => \pulse_generator|s_counter[1]~23\);

-- Location: FF_X67_Y70_N15
\pulse_generator|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[1]~22_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(1));

-- Location: LCCOMB_X67_Y70_N16
\pulse_generator|s_counter[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[2]~24_combout\ = (\pulse_generator|s_counter\(2) & (\pulse_generator|s_counter[1]~23\ $ (GND))) # (!\pulse_generator|s_counter\(2) & (!\pulse_generator|s_counter[1]~23\ & VCC))
-- \pulse_generator|s_counter[2]~25\ = CARRY((\pulse_generator|s_counter\(2) & !\pulse_generator|s_counter[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(2),
	datad => VCC,
	cin => \pulse_generator|s_counter[1]~23\,
	combout => \pulse_generator|s_counter[2]~24_combout\,
	cout => \pulse_generator|s_counter[2]~25\);

-- Location: FF_X67_Y70_N17
\pulse_generator|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[2]~24_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(2));

-- Location: LCCOMB_X67_Y70_N18
\pulse_generator|s_counter[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[3]~26_combout\ = (\pulse_generator|s_counter\(3) & (!\pulse_generator|s_counter[2]~25\)) # (!\pulse_generator|s_counter\(3) & ((\pulse_generator|s_counter[2]~25\) # (GND)))
-- \pulse_generator|s_counter[3]~27\ = CARRY((!\pulse_generator|s_counter[2]~25\) # (!\pulse_generator|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(3),
	datad => VCC,
	cin => \pulse_generator|s_counter[2]~25\,
	combout => \pulse_generator|s_counter[3]~26_combout\,
	cout => \pulse_generator|s_counter[3]~27\);

-- Location: FF_X67_Y70_N19
\pulse_generator|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[3]~26_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(3));

-- Location: LCCOMB_X67_Y70_N20
\pulse_generator|s_counter[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[4]~28_combout\ = (\pulse_generator|s_counter\(4) & (\pulse_generator|s_counter[3]~27\ $ (GND))) # (!\pulse_generator|s_counter\(4) & (!\pulse_generator|s_counter[3]~27\ & VCC))
-- \pulse_generator|s_counter[4]~29\ = CARRY((\pulse_generator|s_counter\(4) & !\pulse_generator|s_counter[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(4),
	datad => VCC,
	cin => \pulse_generator|s_counter[3]~27\,
	combout => \pulse_generator|s_counter[4]~28_combout\,
	cout => \pulse_generator|s_counter[4]~29\);

-- Location: FF_X67_Y70_N21
\pulse_generator|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[4]~28_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(4));

-- Location: LCCOMB_X67_Y70_N22
\pulse_generator|s_counter[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[5]~30_combout\ = (\pulse_generator|s_counter\(5) & (!\pulse_generator|s_counter[4]~29\)) # (!\pulse_generator|s_counter\(5) & ((\pulse_generator|s_counter[4]~29\) # (GND)))
-- \pulse_generator|s_counter[5]~31\ = CARRY((!\pulse_generator|s_counter[4]~29\) # (!\pulse_generator|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(5),
	datad => VCC,
	cin => \pulse_generator|s_counter[4]~29\,
	combout => \pulse_generator|s_counter[5]~30_combout\,
	cout => \pulse_generator|s_counter[5]~31\);

-- Location: FF_X67_Y70_N23
\pulse_generator|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[5]~30_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(5));

-- Location: LCCOMB_X67_Y70_N24
\pulse_generator|s_counter[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[6]~32_combout\ = (\pulse_generator|s_counter\(6) & (\pulse_generator|s_counter[5]~31\ $ (GND))) # (!\pulse_generator|s_counter\(6) & (!\pulse_generator|s_counter[5]~31\ & VCC))
-- \pulse_generator|s_counter[6]~33\ = CARRY((\pulse_generator|s_counter\(6) & !\pulse_generator|s_counter[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(6),
	datad => VCC,
	cin => \pulse_generator|s_counter[5]~31\,
	combout => \pulse_generator|s_counter[6]~32_combout\,
	cout => \pulse_generator|s_counter[6]~33\);

-- Location: FF_X67_Y70_N25
\pulse_generator|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[6]~32_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(6));

-- Location: LCCOMB_X67_Y70_N26
\pulse_generator|s_counter[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[7]~34_combout\ = (\pulse_generator|s_counter\(7) & (!\pulse_generator|s_counter[6]~33\)) # (!\pulse_generator|s_counter\(7) & ((\pulse_generator|s_counter[6]~33\) # (GND)))
-- \pulse_generator|s_counter[7]~35\ = CARRY((!\pulse_generator|s_counter[6]~33\) # (!\pulse_generator|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(7),
	datad => VCC,
	cin => \pulse_generator|s_counter[6]~33\,
	combout => \pulse_generator|s_counter[7]~34_combout\,
	cout => \pulse_generator|s_counter[7]~35\);

-- Location: FF_X67_Y70_N27
\pulse_generator|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[7]~34_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(7));

-- Location: LCCOMB_X67_Y70_N28
\pulse_generator|s_counter[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[8]~36_combout\ = (\pulse_generator|s_counter\(8) & (\pulse_generator|s_counter[7]~35\ $ (GND))) # (!\pulse_generator|s_counter\(8) & (!\pulse_generator|s_counter[7]~35\ & VCC))
-- \pulse_generator|s_counter[8]~37\ = CARRY((\pulse_generator|s_counter\(8) & !\pulse_generator|s_counter[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(8),
	datad => VCC,
	cin => \pulse_generator|s_counter[7]~35\,
	combout => \pulse_generator|s_counter[8]~36_combout\,
	cout => \pulse_generator|s_counter[8]~37\);

-- Location: FF_X67_Y70_N29
\pulse_generator|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[8]~36_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(8));

-- Location: LCCOMB_X67_Y70_N30
\pulse_generator|s_counter[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[9]~38_combout\ = (\pulse_generator|s_counter\(9) & (!\pulse_generator|s_counter[8]~37\)) # (!\pulse_generator|s_counter\(9) & ((\pulse_generator|s_counter[8]~37\) # (GND)))
-- \pulse_generator|s_counter[9]~39\ = CARRY((!\pulse_generator|s_counter[8]~37\) # (!\pulse_generator|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(9),
	datad => VCC,
	cin => \pulse_generator|s_counter[8]~37\,
	combout => \pulse_generator|s_counter[9]~38_combout\,
	cout => \pulse_generator|s_counter[9]~39\);

-- Location: FF_X67_Y70_N31
\pulse_generator|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[9]~38_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(9));

-- Location: LCCOMB_X67_Y69_N0
\pulse_generator|s_counter[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|s_counter[10]~40_combout\ = (\pulse_generator|s_counter\(10) & (\pulse_generator|s_counter[9]~39\ $ (GND))) # (!\pulse_generator|s_counter\(10) & (!\pulse_generator|s_counter[9]~39\ & VCC))
-- \pulse_generator|s_counter[10]~41\ = CARRY((\pulse_generator|s_counter\(10) & !\pulse_generator|s_counter[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(10),
	datad => VCC,
	cin => \pulse_generator|s_counter[9]~39\,
	combout => \pulse_generator|s_counter[10]~40_combout\,
	cout => \pulse_generator|s_counter[10]~41\);

-- Location: FF_X67_Y69_N1
\pulse_generator|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[10]~40_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(10));

-- Location: FF_X67_Y69_N3
\pulse_generator|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider_50|clkOut~clkctrl_outclk\,
	d => \pulse_generator|s_counter[11]~42_combout\,
	sclr => \pulse_generator|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_generator|s_counter\(11));

-- Location: LCCOMB_X67_Y69_N30
\pulse_generator|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan0~0_combout\ = (!\pulse_generator|s_counter\(11) & (!\pulse_generator|s_counter\(12) & !\pulse_generator|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_generator|s_counter\(11),
	datac => \pulse_generator|s_counter\(12),
	datad => \pulse_generator|s_counter\(10),
	combout => \pulse_generator|LessThan0~0_combout\);

-- Location: LCCOMB_X67_Y69_N20
\pulse_generator|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~1_combout\ = ((!\pulse_generator|s_counter\(5) & (!\pulse_generator|s_counter\(7) & !\pulse_generator|s_counter\(6)))) # (!\pulse_generator|s_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(5),
	datab => \pulse_generator|s_counter\(7),
	datac => \pulse_generator|s_counter\(6),
	datad => \pulse_generator|s_counter\(8),
	combout => \pulse_generator|LessThan1~1_combout\);

-- Location: LCCOMB_X67_Y69_N22
\pulse_generator|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~2_combout\ = (\pulse_generator|s_counter\(13) & (((\pulse_generator|s_counter\(9)) # (!\pulse_generator|LessThan1~1_combout\)) # (!\pulse_generator|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan0~0_combout\,
	datab => \pulse_generator|LessThan1~1_combout\,
	datac => \pulse_generator|s_counter\(9),
	datad => \pulse_generator|s_counter\(13),
	combout => \pulse_generator|LessThan1~2_combout\);

-- Location: LCCOMB_X67_Y69_N24
\pulse_generator|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~0_combout\ = (\pulse_generator|s_counter\(16) & (\pulse_generator|s_counter\(17) & (\pulse_generator|s_counter\(15) & \pulse_generator|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|s_counter\(16),
	datab => \pulse_generator|s_counter\(17),
	datac => \pulse_generator|s_counter\(15),
	datad => \pulse_generator|s_counter\(18),
	combout => \pulse_generator|LessThan1~0_combout\);

-- Location: LCCOMB_X67_Y69_N28
\pulse_generator|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_generator|LessThan1~3_combout\ = (!\pulse_generator|s_counter\(19) & (((!\pulse_generator|LessThan1~2_combout\ & !\pulse_generator|s_counter\(14))) # (!\pulse_generator|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_generator|LessThan1~2_combout\,
	datab => \pulse_generator|s_counter\(14),
	datac => \pulse_generator|s_counter\(19),
	datad => \pulse_generator|LessThan1~0_combout\,
	combout => \pulse_generator|LessThan1~3_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


