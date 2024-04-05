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

-- DATE "03/16/2024 14:22:18"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Keydecode IS
    PORT (
	MR : IN std_logic;
	CLK : IN std_logic;
	KLine : IN std_logic_vector(3 DOWNTO 0);
	Kack : IN std_logic;
	KCol : BUFFER std_logic_vector(2 DOWNTO 0);
	Kout : BUFFER std_logic_vector(3 DOWNTO 0);
	Kval : BUFFER std_logic
	);
END Keydecode;

-- Design Ports Information
-- KCol[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KCol[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KCol[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kval	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KLine[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KLine[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KLine[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KLine[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kack	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Keydecode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MR : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_KLine : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kack : std_logic;
SIGNAL ww_KCol : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Kout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kval : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \KCol[0]~output_o\ : std_logic;
SIGNAL \KCol[1]~output_o\ : std_logic;
SIGNAL \KCol[2]~output_o\ : std_logic;
SIGNAL \Kout[0]~output_o\ : std_logic;
SIGNAL \Kout[1]~output_o\ : std_logic;
SIGNAL \Kout[2]~output_o\ : std_logic;
SIGNAL \Kout[3]~output_o\ : std_logic;
SIGNAL \Kval~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MR~input_o\ : std_logic;
SIGNAL \Kack~input_o\ : std_logic;
SIGNAL \KLine[2]~input_o\ : std_logic;
SIGNAL \KLine[0]~input_o\ : std_logic;
SIGNAL \key_scan|Dec|O[2]~0_combout\ : std_logic;
SIGNAL \key_scan|Tc_or_Mr|O~combout\ : std_logic;
SIGNAL \key_scan|Cont|MUX|O~3_combout\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U0|Q~q\ : std_logic;
SIGNAL \key_scan|MUX|R~0_combout\ : std_logic;
SIGNAL \KLine[1]~input_o\ : std_logic;
SIGNAL \KLine[3]~input_o\ : std_logic;
SIGNAL \key_scan|MUX|R~1_combout\ : std_logic;
SIGNAL \key_scan|MUX|R~2_combout\ : std_logic;
SIGNAL \key_control|Selector1~0_combout\ : std_logic;
SIGNAL \key_control|CurrentState.STATE_PRESS~q\ : std_logic;
SIGNAL \key_control|Selector2~0_combout\ : std_logic;
SIGNAL \key_control|CurrentState.STATE_WAIT~q\ : std_logic;
SIGNAL \key_control|NextState.STATE_ACK_PRESS~0_combout\ : std_logic;
SIGNAL \key_control|CurrentState.STATE_ACK_PRESS~q\ : std_logic;
SIGNAL \key_control|Selector0~0_combout\ : std_logic;
SIGNAL \key_control|CurrentState.STATE_INIT~q\ : std_logic;
SIGNAL \key_scan|Cont|Adder|U1|Co~0_combout\ : std_logic;
SIGNAL \key_scan|Cont|MUX|O~4_combout\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U1|Q~q\ : std_logic;
SIGNAL \key_scan|Cont|MUX|O~5_combout\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U2|Q~q\ : std_logic;
SIGNAL \key_scan|Reset_signal_Enbl|O~0_combout\ : std_logic;
SIGNAL \key_scan|Cont|MUX|O~2_combout\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U3|Q~q\ : std_logic;
SIGNAL \key_scan|Dec|O\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_MR~input_o\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U0|ALT_INV_Q~q\ : std_logic;
SIGNAL \key_scan|Dec|ALT_INV_O[2]~0_combout\ : std_logic;
SIGNAL \key_scan|Dec|ALT_INV_O\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \key_scan|Cont|Registor|U3|ALT_INV_Q~q\ : std_logic;
SIGNAL \key_scan|Cont|Registor|U2|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MR <= MR;
ww_CLK <= CLK;
ww_KLine <= KLine;
ww_Kack <= Kack;
KCol <= ww_KCol;
Kout <= ww_Kout;
Kval <= ww_Kval;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_MR~input_o\ <= NOT \MR~input_o\;
\key_scan|Cont|Registor|U1|ALT_INV_Q~q\ <= NOT \key_scan|Cont|Registor|U1|Q~q\;
\key_scan|Cont|Registor|U0|ALT_INV_Q~q\ <= NOT \key_scan|Cont|Registor|U0|Q~q\;
\key_scan|Dec|ALT_INV_O[2]~0_combout\ <= NOT \key_scan|Dec|O[2]~0_combout\;
\key_scan|Dec|ALT_INV_O\(1) <= NOT \key_scan|Dec|O\(1);
\key_scan|Cont|Registor|U3|ALT_INV_Q~q\ <= NOT \key_scan|Cont|Registor|U3|Q~q\;
\key_scan|Cont|Registor|U2|ALT_INV_Q~q\ <= NOT \key_scan|Cont|Registor|U2|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X38_Y0_N9
\KCol[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Dec|O\(0),
	devoe => ww_devoe,
	o => \KCol[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\KCol[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Dec|ALT_INV_O\(1),
	devoe => ww_devoe,
	o => \KCol[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\KCol[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Dec|ALT_INV_O[2]~0_combout\,
	devoe => ww_devoe,
	o => \KCol[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Kout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Cont|Registor|U0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Kout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Cont|Registor|U1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Kout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Cont|Registor|U2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Kout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_scan|Cont|Registor|U3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\Kval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_control|CurrentState.STATE_PRESS~q\,
	devoe => ww_devoe,
	o => \Kval~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\MR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MR,
	o => \MR~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\Kack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kack,
	o => \Kack~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\KLine[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KLine(2),
	o => \KLine[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KLine[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KLine(0),
	o => \KLine[0]~input_o\);

-- Location: LCCOMB_X46_Y4_N4
\key_scan|Dec|O[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Dec|O[2]~0_combout\ = (!\key_scan|Cont|Registor|U3|Q~q\ & \key_scan|Cont|Registor|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_scan|Cont|Registor|U3|Q~q\,
	datad => \key_scan|Cont|Registor|U2|Q~q\,
	combout => \key_scan|Dec|O[2]~0_combout\);

-- Location: LCCOMB_X46_Y4_N6
\key_scan|Tc_or_Mr|O\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Tc_or_Mr|O~combout\ = (\MR~input_o\) # ((!\key_scan|Cont|Registor|U1|Q~q\ & (\key_scan|Dec|O[2]~0_combout\ & \key_scan|Cont|Adder|U1|Co~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_scan|Cont|Registor|U1|Q~q\,
	datab => \MR~input_o\,
	datac => \key_scan|Dec|O[2]~0_combout\,
	datad => \key_scan|Cont|Adder|U1|Co~0_combout\,
	combout => \key_scan|Tc_or_Mr|O~combout\);

-- Location: LCCOMB_X46_Y4_N14
\key_scan|Cont|MUX|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Cont|MUX|O~3_combout\ = (\key_scan|Tc_or_Mr|O~combout\) # (\key_scan|Cont|Registor|U0|Q~q\ $ (((!\key_control|CurrentState.STATE_INIT~q\ & !\key_scan|MUX|R~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_control|CurrentState.STATE_INIT~q\,
	datab => \key_scan|MUX|R~2_combout\,
	datac => \key_scan|Cont|Registor|U0|Q~q\,
	datad => \key_scan|Tc_or_Mr|O~combout\,
	combout => \key_scan|Cont|MUX|O~3_combout\);

-- Location: FF_X46_Y4_N15
\key_scan|Cont|Registor|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_scan|Cont|MUX|O~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_scan|Cont|Registor|U0|Q~q\);

-- Location: LCCOMB_X46_Y4_N10
\key_scan|MUX|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|MUX|R~0_combout\ = (\key_scan|Cont|Registor|U0|Q~q\ & ((\key_scan|Cont|Registor|U1|Q~q\ & ((\KLine[0]~input_o\))) # (!\key_scan|Cont|Registor|U1|Q~q\ & (\KLine[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KLine[2]~input_o\,
	datab => \KLine[0]~input_o\,
	datac => \key_scan|Cont|Registor|U0|Q~q\,
	datad => \key_scan|Cont|Registor|U1|Q~q\,
	combout => \key_scan|MUX|R~0_combout\);

-- Location: IOIBUF_X51_Y0_N22
\KLine[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KLine(1),
	o => \KLine[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\KLine[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KLine(3),
	o => \KLine[3]~input_o\);

-- Location: LCCOMB_X46_Y4_N8
\key_scan|MUX|R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|MUX|R~1_combout\ = (!\key_scan|Cont|Registor|U0|Q~q\ & ((\key_scan|Cont|Registor|U1|Q~q\ & (\KLine[1]~input_o\)) # (!\key_scan|Cont|Registor|U1|Q~q\ & ((\KLine[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KLine[1]~input_o\,
	datab => \KLine[3]~input_o\,
	datac => \key_scan|Cont|Registor|U0|Q~q\,
	datad => \key_scan|Cont|Registor|U1|Q~q\,
	combout => \key_scan|MUX|R~1_combout\);

-- Location: LCCOMB_X46_Y4_N0
\key_scan|MUX|R~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|MUX|R~2_combout\ = (\key_scan|MUX|R~0_combout\) # (\key_scan|MUX|R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_scan|MUX|R~0_combout\,
	datad => \key_scan|MUX|R~1_combout\,
	combout => \key_scan|MUX|R~2_combout\);

-- Location: LCCOMB_X46_Y4_N22
\key_control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_control|Selector1~0_combout\ = (\key_control|CurrentState.STATE_INIT~q\ & (!\Kack~input_o\ & (\key_control|CurrentState.STATE_PRESS~q\))) # (!\key_control|CurrentState.STATE_INIT~q\ & ((\key_scan|MUX|R~2_combout\) # ((!\Kack~input_o\ & 
-- \key_control|CurrentState.STATE_PRESS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_control|CurrentState.STATE_INIT~q\,
	datab => \Kack~input_o\,
	datac => \key_control|CurrentState.STATE_PRESS~q\,
	datad => \key_scan|MUX|R~2_combout\,
	combout => \key_control|Selector1~0_combout\);

-- Location: FF_X46_Y4_N23
\key_control|CurrentState.STATE_PRESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_control|Selector1~0_combout\,
	clrn => \ALT_INV_MR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_control|CurrentState.STATE_PRESS~q\);

-- Location: LCCOMB_X46_Y4_N26
\key_control|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_control|Selector2~0_combout\ = (\Kack~input_o\ & (((\key_control|CurrentState.STATE_WAIT~q\ & \key_scan|MUX|R~2_combout\)))) # (!\Kack~input_o\ & ((\key_control|CurrentState.STATE_ACK_PRESS~q\) # ((\key_control|CurrentState.STATE_WAIT~q\ & 
-- \key_scan|MUX|R~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kack~input_o\,
	datab => \key_control|CurrentState.STATE_ACK_PRESS~q\,
	datac => \key_control|CurrentState.STATE_WAIT~q\,
	datad => \key_scan|MUX|R~2_combout\,
	combout => \key_control|Selector2~0_combout\);

-- Location: FF_X46_Y4_N27
\key_control|CurrentState.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_control|Selector2~0_combout\,
	clrn => \ALT_INV_MR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_control|CurrentState.STATE_WAIT~q\);

-- Location: LCCOMB_X47_Y4_N0
\key_control|NextState.STATE_ACK_PRESS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_control|NextState.STATE_ACK_PRESS~0_combout\ = (\Kack~input_o\ & (!\key_control|CurrentState.STATE_WAIT~q\ & \key_control|CurrentState.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Kack~input_o\,
	datac => \key_control|CurrentState.STATE_WAIT~q\,
	datad => \key_control|CurrentState.STATE_INIT~q\,
	combout => \key_control|NextState.STATE_ACK_PRESS~0_combout\);

-- Location: FF_X46_Y4_N25
\key_control|CurrentState.STATE_ACK_PRESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \key_control|NextState.STATE_ACK_PRESS~0_combout\,
	clrn => \ALT_INV_MR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_control|CurrentState.STATE_ACK_PRESS~q\);

-- Location: LCCOMB_X46_Y4_N12
\key_control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_control|Selector0~0_combout\ = (\key_control|CurrentState.STATE_PRESS~q\) # ((\key_control|CurrentState.STATE_ACK_PRESS~q\) # ((\key_scan|MUX|R~0_combout\) # (\key_scan|MUX|R~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_control|CurrentState.STATE_PRESS~q\,
	datab => \key_control|CurrentState.STATE_ACK_PRESS~q\,
	datac => \key_scan|MUX|R~0_combout\,
	datad => \key_scan|MUX|R~1_combout\,
	combout => \key_control|Selector0~0_combout\);

-- Location: FF_X46_Y4_N13
\key_control|CurrentState.STATE_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_control|Selector0~0_combout\,
	clrn => \ALT_INV_MR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_control|CurrentState.STATE_INIT~q\);

-- Location: LCCOMB_X46_Y4_N18
\key_scan|Cont|Adder|U1|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Cont|Adder|U1|Co~0_combout\ = (!\key_control|CurrentState.STATE_INIT~q\ & (!\key_scan|Cont|Registor|U0|Q~q\ & (!\key_scan|MUX|R~1_combout\ & !\key_scan|MUX|R~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_control|CurrentState.STATE_INIT~q\,
	datab => \key_scan|Cont|Registor|U0|Q~q\,
	datac => \key_scan|MUX|R~1_combout\,
	datad => \key_scan|MUX|R~0_combout\,
	combout => \key_scan|Cont|Adder|U1|Co~0_combout\);

-- Location: LCCOMB_X46_Y4_N28
\key_scan|Cont|MUX|O~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Cont|MUX|O~4_combout\ = (\MR~input_o\) # (\key_scan|Cont|Registor|U1|Q~q\ $ (\key_scan|Cont|Adder|U1|Co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MR~input_o\,
	datac => \key_scan|Cont|Registor|U1|Q~q\,
	datad => \key_scan|Cont|Adder|U1|Co~0_combout\,
	combout => \key_scan|Cont|MUX|O~4_combout\);

-- Location: FF_X46_Y4_N29
\key_scan|Cont|Registor|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_scan|Cont|MUX|O~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_scan|Cont|Registor|U1|Q~q\);

-- Location: LCCOMB_X46_Y4_N20
\key_scan|Cont|MUX|O~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Cont|MUX|O~5_combout\ = (\key_scan|Tc_or_Mr|O~combout\) # (\key_scan|Cont|Registor|U2|Q~q\ $ (((!\key_scan|Cont|Registor|U1|Q~q\ & \key_scan|Cont|Adder|U1|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_scan|Cont|Registor|U1|Q~q\,
	datab => \key_scan|Cont|Adder|U1|Co~0_combout\,
	datac => \key_scan|Cont|Registor|U2|Q~q\,
	datad => \key_scan|Tc_or_Mr|O~combout\,
	combout => \key_scan|Cont|MUX|O~5_combout\);

-- Location: FF_X46_Y4_N21
\key_scan|Cont|Registor|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_scan|Cont|MUX|O~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_scan|Cont|Registor|U2|Q~q\);

-- Location: LCCOMB_X46_Y4_N16
\key_scan|Reset_signal_Enbl|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Reset_signal_Enbl|O~0_combout\ = (!\key_scan|Cont|Registor|U1|Q~q\ & \key_scan|Cont|Adder|U1|Co~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_scan|Cont|Registor|U1|Q~q\,
	datad => \key_scan|Cont|Adder|U1|Co~0_combout\,
	combout => \key_scan|Reset_signal_Enbl|O~0_combout\);

-- Location: LCCOMB_X46_Y4_N30
\key_scan|Cont|MUX|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Cont|MUX|O~2_combout\ = (\key_scan|Tc_or_Mr|O~combout\) # (\key_scan|Cont|Registor|U3|Q~q\ $ (((!\key_scan|Cont|Registor|U2|Q~q\ & \key_scan|Reset_signal_Enbl|O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_scan|Cont|Registor|U2|Q~q\,
	datab => \key_scan|Reset_signal_Enbl|O~0_combout\,
	datac => \key_scan|Cont|Registor|U3|Q~q\,
	datad => \key_scan|Tc_or_Mr|O~combout\,
	combout => \key_scan|Cont|MUX|O~2_combout\);

-- Location: FF_X46_Y4_N31
\key_scan|Cont|Registor|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \key_scan|Cont|MUX|O~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_scan|Cont|Registor|U3|Q~q\);

-- Location: LCCOMB_X46_Y4_N24
\key_scan|Dec|O[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Dec|O\(0) = (!\key_scan|Cont|Registor|U2|Q~q\) # (!\key_scan|Cont|Registor|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_scan|Cont|Registor|U3|Q~q\,
	datad => \key_scan|Cont|Registor|U2|Q~q\,
	combout => \key_scan|Dec|O\(0));

-- Location: LCCOMB_X46_Y4_N2
\key_scan|Dec|O[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_scan|Dec|O\(1) = (\key_scan|Cont|Registor|U3|Q~q\ & !\key_scan|Cont|Registor|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_scan|Cont|Registor|U3|Q~q\,
	datad => \key_scan|Cont|Registor|U2|Q~q\,
	combout => \key_scan|Dec|O\(1));

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

ww_KCol(0) <= \KCol[0]~output_o\;

ww_KCol(1) <= \KCol[1]~output_o\;

ww_KCol(2) <= \KCol[2]~output_o\;

ww_Kout(0) <= \Kout[0]~output_o\;

ww_Kout(1) <= \Kout[1]~output_o\;

ww_Kout(2) <= \Kout[2]~output_o\;

ww_Kout(3) <= \Kout[3]~output_o\;

ww_Kval <= \Kval~output_o\;
END structure;


