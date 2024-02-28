-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/23/2022 12:59:03"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	W : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	CBi : IN std_logic;
	Op : IN std_logic_vector(2 DOWNTO 0);
	BE : BUFFER std_logic;
	GE : BUFFER std_logic;
	Z : BUFFER std_logic;
	OV : BUFFER std_logic;
	CBo : BUFFER std_logic;
	F : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- BE	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GE	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OV	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CBo	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CBi	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_W : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CBi : std_logic;
SIGNAL ww_Op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_BE : std_logic;
SIGNAL ww_GE : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_OV : std_logic;
SIGNAL ww_CBo : std_logic;
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \BE~output_o\ : std_logic;
SIGNAL \GE~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \OV~output_o\ : std_logic;
SIGNAL \CBo~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \W[3]~input_o\ : std_logic;
SIGNAL \Op[0]~input_o\ : std_logic;
SIGNAL \Op[1]~input_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \Op[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \W[1]~input_o\ : std_logic;
SIGNAL \UMUX_Final|R[2]~19_combout\ : std_logic;
SIGNAL \UMUX_Final|R[2]~13_combout\ : std_logic;
SIGNAL \UMUX_Final|R[2]~14_combout\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \UMUX_Final|R[2]~15_combout\ : std_logic;
SIGNAL \W[2]~input_o\ : std_logic;
SIGNAL \UMUX_Final|R[2]~16_combout\ : std_logic;
SIGNAL \UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ : std_logic;
SIGNAL \UMUX_Final|R[3]~20_combout\ : std_logic;
SIGNAL \UMUX_Final|R[3]~18_combout\ : std_logic;
SIGNAL \UMUX_Final|R[3]~21_combout\ : std_logic;
SIGNAL \UMUX_Final|R[1]~8_combout\ : std_logic;
SIGNAL \W[0]~input_o\ : std_logic;
SIGNAL \UMUX_Final|R[1]~6_combout\ : std_logic;
SIGNAL \UUnidAritmet|UAdder_Subtractor|UXORs_3|S~combout\ : std_logic;
SIGNAL \UMUX_Final|R[1]~7_combout\ : std_logic;
SIGNAL \UMUX_Final|R[1]~9_combout\ : std_logic;
SIGNAL \UMUX_Final|R[0]~10_combout\ : std_logic;
SIGNAL \CBi~input_o\ : std_logic;
SIGNAL \UMUX_Final|R[0]~11_combout\ : std_logic;
SIGNAL \UMUX_Final|R[0]~12_combout\ : std_logic;
SIGNAL \UFlags2|oBE~0_combout\ : std_logic;
SIGNAL \UFlags2|oBE~combout\ : std_logic;
SIGNAL \UMUX_Final|R[3]~17_combout\ : std_logic;
SIGNAL \UMUX_Anulador|R~0_combout\ : std_logic;
SIGNAL \UUnidAritmet|UFlags|OV~0_combout\ : std_logic;
SIGNAL \UFlags2|oGE~0_combout\ : std_logic;
SIGNAL \UFlags2|oCB~1_combout\ : std_logic;
SIGNAL \UFlags2|oCB~0_combout\ : std_logic;
SIGNAL \UFlags2|oCB~2_combout\ : std_logic;
SIGNAL \UFlags2|ALT_INV_oGE~0_combout\ : std_logic;
SIGNAL \UFlags2|ALT_INV_oBE~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_W <= W;
ww_Y <= Y;
ww_CBi <= CBi;
ww_Op <= Op;
BE <= ww_BE;
GE <= ww_GE;
Z <= ww_Z;
OV <= ww_OV;
CBo <= ww_CBo;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\UFlags2|ALT_INV_oGE~0_combout\ <= NOT \UFlags2|oGE~0_combout\;
\UFlags2|ALT_INV_oBE~0_combout\ <= NOT \UFlags2|oBE~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y34_N2
\BE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UFlags2|oBE~combout\,
	devoe => ww_devoe,
	o => \BE~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\GE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UFlags2|ALT_INV_oGE~0_combout\,
	devoe => ww_devoe,
	o => \GE~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UFlags2|ALT_INV_oBE~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\OV~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UUnidAritmet|UFlags|OV~0_combout\,
	devoe => ww_devoe,
	o => \OV~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\CBo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UFlags2|oCB~2_combout\,
	devoe => ww_devoe,
	o => \CBo~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UMUX_Final|R[0]~12_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UMUX_Final|R[1]~9_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UMUX_Final|R[2]~16_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UMUX_Final|R[3]~21_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOIBUF_X0_Y30_N15
\W[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(3),
	o => \W[3]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\Op[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(0),
	o => \Op[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\Op[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(1),
	o => \Op[1]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\Y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y33_N0
\UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\ = (\W[3]~input_o\ & (((\Op[1]~input_o\ & \Y[3]~input_o\)))) # (!\W[3]~input_o\ & (\Op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Op[1]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\);

-- Location: IOIBUF_X0_Y37_N1
\Y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\Op[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(2),
	o => \Op[2]~input_o\);

-- Location: IOIBUF_X0_Y37_N8
\Y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\W[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(1),
	o => \W[1]~input_o\);

-- Location: LCCOMB_X1_Y33_N6
\UMUX_Final|R[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[2]~19_combout\ = (\W[1]~input_o\ & (((\Op[1]~input_o\ & \Y[1]~input_o\)))) # (!\W[1]~input_o\ & (\Op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Op[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \UMUX_Final|R[2]~19_combout\);

-- Location: LCCOMB_X1_Y33_N2
\UMUX_Final|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[2]~13_combout\ = (\Op[2]~input_o\ & (((\Y[2]~input_o\)))) # (!\Op[2]~input_o\ & (\UMUX_Final|R[2]~19_combout\ $ (((\Op[1]~input_o\ & \Y[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[2]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \UMUX_Final|R[2]~19_combout\,
	combout => \UMUX_Final|R[2]~13_combout\);

-- Location: LCCOMB_X1_Y33_N28
\UMUX_Final|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[2]~14_combout\ = (\Op[2]~input_o\ & (\Y[1]~input_o\ & !\UMUX_Final|R[2]~13_combout\)) # (!\Op[2]~input_o\ & ((\UMUX_Final|R[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[1]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \UMUX_Final|R[2]~13_combout\,
	combout => \UMUX_Final|R[2]~14_combout\);

-- Location: IOIBUF_X0_Y30_N22
\Y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X1_Y33_N22
\UMUX_Final|R[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[2]~15_combout\ = (\Op[2]~input_o\ & (\Y[0]~input_o\ & ((!\UMUX_Final|R[2]~13_combout\) # (!\Y[1]~input_o\)))) # (!\Op[2]~input_o\ & (((\UMUX_Final|R[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \UMUX_Final|R[2]~13_combout\,
	combout => \UMUX_Final|R[2]~15_combout\);

-- Location: IOIBUF_X0_Y36_N15
\W[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(2),
	o => \W[2]~input_o\);

-- Location: LCCOMB_X1_Y33_N8
\UMUX_Final|R[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[2]~16_combout\ = (\UMUX_Final|R[2]~14_combout\ & (((!\W[2]~input_o\) # (!\UMUX_Final|R[2]~15_combout\)))) # (!\UMUX_Final|R[2]~14_combout\ & ((\UMUX_Final|R[2]~15_combout\ & (\W[3]~input_o\)) # (!\UMUX_Final|R[2]~15_combout\ & 
-- ((\W[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \UMUX_Final|R[2]~14_combout\,
	datac => \UMUX_Final|R[2]~15_combout\,
	datad => \W[2]~input_o\,
	combout => \UMUX_Final|R[2]~16_combout\);

-- Location: LCCOMB_X1_Y33_N12
\UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ = (\W[2]~input_o\ & (\Op[0]~input_o\ $ (((\Op[1]~input_o\ & \Y[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \W[2]~input_o\,
	combout => \UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\);

-- Location: LCCOMB_X1_Y33_N16
\UMUX_Final|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[3]~20_combout\ = \W[3]~input_o\ $ (\UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ $ (((\Y[3]~input_o\ & \Op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \Op[1]~input_o\,
	datad => \UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\,
	combout => \UMUX_Final|R[3]~20_combout\);

-- Location: LCCOMB_X1_Y33_N24
\UMUX_Final|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[3]~18_combout\ = (\Y[3]~input_o\ & (((\W[3]~input_o\)))) # (!\Y[3]~input_o\ & ((\Y[1]~input_o\ & ((!\Y[0]~input_o\) # (!\W[3]~input_o\))) # (!\Y[1]~input_o\ & (\W[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \W[3]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \UMUX_Final|R[3]~18_combout\);

-- Location: LCCOMB_X1_Y33_N10
\UMUX_Final|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[3]~21_combout\ = (\Op[2]~input_o\ & (((\UMUX_Final|R[3]~18_combout\)))) # (!\Op[2]~input_o\ & (\UMUX_Final|R[3]~20_combout\ $ ((\Op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[2]~input_o\,
	datab => \UMUX_Final|R[3]~20_combout\,
	datac => \Op[0]~input_o\,
	datad => \UMUX_Final|R[3]~18_combout\,
	combout => \UMUX_Final|R[3]~21_combout\);

-- Location: LCCOMB_X1_Y34_N30
\UMUX_Final|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[1]~8_combout\ = (\Y[0]~input_o\ & (\Op[2]~input_o\ & !\Y[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Op[2]~input_o\,
	datac => \Y[1]~input_o\,
	combout => \UMUX_Final|R[1]~8_combout\);

-- Location: IOIBUF_X0_Y37_N15
\W[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(0),
	o => \W[0]~input_o\);

-- Location: LCCOMB_X1_Y34_N10
\UMUX_Final|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[1]~6_combout\ = (\W[0]~input_o\ & (\Op[0]~input_o\ $ (((\Y[0]~input_o\ & \Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Op[1]~input_o\,
	datad => \W[0]~input_o\,
	combout => \UMUX_Final|R[1]~6_combout\);

-- Location: LCCOMB_X1_Y34_N24
\UUnidAritmet|UAdder_Subtractor|UXORs_3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UUnidAritmet|UAdder_Subtractor|UXORs_3|S~combout\ = \Op[0]~input_o\ $ (((\Y[1]~input_o\ & \Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Op[1]~input_o\,
	combout => \UUnidAritmet|UAdder_Subtractor|UXORs_3|S~combout\);

-- Location: LCCOMB_X1_Y34_N4
\UMUX_Final|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[1]~7_combout\ = \W[1]~input_o\ $ (((!\Op[2]~input_o\ & (\UMUX_Final|R[1]~6_combout\ $ (\UUnidAritmet|UAdder_Subtractor|UXORs_3|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UMUX_Final|R[1]~6_combout\,
	datab => \Op[2]~input_o\,
	datac => \W[1]~input_o\,
	datad => \UUnidAritmet|UAdder_Subtractor|UXORs_3|S~combout\,
	combout => \UMUX_Final|R[1]~7_combout\);

-- Location: LCCOMB_X1_Y34_N8
\UMUX_Final|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[1]~9_combout\ = (\UMUX_Final|R[1]~8_combout\ & (\W[2]~input_o\)) # (!\UMUX_Final|R[1]~8_combout\ & ((\UMUX_Final|R[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UMUX_Final|R[1]~8_combout\,
	datab => \W[2]~input_o\,
	datac => \UMUX_Final|R[1]~7_combout\,
	combout => \UMUX_Final|R[1]~9_combout\);

-- Location: LCCOMB_X1_Y34_N26
\UMUX_Final|R[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[0]~10_combout\ = (\Op[2]~input_o\ & ((\Y[1]~input_o\ & ((!\Y[0]~input_o\))) # (!\Y[1]~input_o\ & (\W[1]~input_o\ & \Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \W[1]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \UMUX_Final|R[0]~10_combout\);

-- Location: IOIBUF_X0_Y35_N8
\CBi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CBi,
	o => \CBi~input_o\);

-- Location: LCCOMB_X1_Y34_N20
\UMUX_Final|R[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[0]~11_combout\ = (!\Op[2]~input_o\ & (\CBi~input_o\ $ (((\Y[0]~input_o\ & \Op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Op[2]~input_o\,
	datac => \Op[1]~input_o\,
	datad => \CBi~input_o\,
	combout => \UMUX_Final|R[0]~11_combout\);

-- Location: LCCOMB_X1_Y34_N6
\UMUX_Final|R[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[0]~12_combout\ = (\UMUX_Final|R[0]~10_combout\) # ((!\UMUX_Final|R[1]~8_combout\ & (\UMUX_Final|R[0]~11_combout\ $ (\W[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UMUX_Final|R[0]~10_combout\,
	datab => \UMUX_Final|R[0]~11_combout\,
	datac => \UMUX_Final|R[1]~8_combout\,
	datad => \W[0]~input_o\,
	combout => \UMUX_Final|R[0]~12_combout\);

-- Location: LCCOMB_X1_Y34_N16
\UFlags2|oBE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags2|oBE~0_combout\ = (\UMUX_Final|R[2]~16_combout\) # ((\UMUX_Final|R[3]~21_combout\) # ((\UMUX_Final|R[1]~9_combout\) # (\UMUX_Final|R[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UMUX_Final|R[2]~16_combout\,
	datab => \UMUX_Final|R[3]~21_combout\,
	datac => \UMUX_Final|R[1]~9_combout\,
	datad => \UMUX_Final|R[0]~12_combout\,
	combout => \UFlags2|oBE~0_combout\);

-- Location: LCCOMB_X1_Y34_N18
\UFlags2|oBE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags2|oBE~combout\ = (\UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\) # (!\UFlags2|oBE~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\,
	datad => \UFlags2|oBE~0_combout\,
	combout => \UFlags2|oBE~combout\);

-- Location: LCCOMB_X1_Y33_N30
\UMUX_Final|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Final|R[3]~17_combout\ = (!\Op[2]~input_o\ & (\Op[0]~input_o\ $ (\UMUX_Final|R[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[2]~input_o\,
	datac => \Op[0]~input_o\,
	datad => \UMUX_Final|R[3]~20_combout\,
	combout => \UMUX_Final|R[3]~17_combout\);

-- Location: LCCOMB_X1_Y33_N26
\UMUX_Anulador|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMUX_Anulador|R~0_combout\ = (\Y[3]~input_o\ & \Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datac => \Op[1]~input_o\,
	combout => \UMUX_Anulador|R~0_combout\);

-- Location: LCCOMB_X1_Y33_N18
\UUnidAritmet|UFlags|OV~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UUnidAritmet|UFlags|OV~0_combout\ = \UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ $ (((\W[3]~input_o\ & (\UMUX_Anulador|R~0_combout\)) # (!\W[3]~input_o\ & ((\Op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UMUX_Anulador|R~0_combout\,
	datab => \Op[0]~input_o\,
	datac => \W[3]~input_o\,
	datad => \UUnidAritmet|UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\,
	combout => \UUnidAritmet|UFlags|OV~0_combout\);

-- Location: LCCOMB_X1_Y33_N20
\UFlags2|oGE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags2|oGE~0_combout\ = \UUnidAritmet|UFlags|OV~0_combout\ $ (((\UMUX_Final|R[3]~17_combout\) # ((\Op[2]~input_o\ & \UMUX_Final|R[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[2]~input_o\,
	datab => \UMUX_Final|R[3]~18_combout\,
	datac => \UMUX_Final|R[3]~17_combout\,
	datad => \UUnidAritmet|UFlags|OV~0_combout\,
	combout => \UFlags2|oGE~0_combout\);

-- Location: LCCOMB_X1_Y34_N22
\UFlags2|oCB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags2|oCB~1_combout\ = (\Y[1]~input_o\ & ((\Y[0]~input_o\ & ((\W[2]~input_o\))) # (!\Y[0]~input_o\ & (\W[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \W[1]~input_o\,
	datac => \Y[1]~input_o\,
	datad => \W[2]~input_o\,
	combout => \UFlags2|oCB~1_combout\);

-- Location: LCCOMB_X1_Y34_N28
\UFlags2|oCB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags2|oCB~0_combout\ = (\Y[0]~input_o\ & (!\Y[1]~input_o\ & \W[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datac => \Y[1]~input_o\,
	datad => \W[0]~input_o\,
	combout => \UFlags2|oCB~0_combout\);

-- Location: LCCOMB_X1_Y34_N0
\UFlags2|oCB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags2|oCB~2_combout\ = (\Op[2]~input_o\ & (((\UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\)))) # (!\Op[2]~input_o\ & ((\UFlags2|oCB~1_combout\) # ((\UFlags2|oCB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UFlags2|oCB~1_combout\,
	datab => \UUnidAritmet|UAdder_Subtractor|UXORs_6|S~0_combout\,
	datac => \Op[2]~input_o\,
	datad => \UFlags2|oCB~0_combout\,
	combout => \UFlags2|oCB~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_BE <= \BE~output_o\;

ww_GE <= \GE~output_o\;

ww_Z <= \Z~output_o\;

ww_OV <= \OV~output_o\;

ww_CBo <= \CBo~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;
END structure;


