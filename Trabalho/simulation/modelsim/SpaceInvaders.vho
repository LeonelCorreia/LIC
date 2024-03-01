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

-- DATE "03/01/2024 11:30:56"

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

ENTITY 	keyscan IS
    PORT (
	MR : IN std_logic;
	Kscan : IN std_logic;
	CLK : IN std_logic;
	MuxIn : IN std_logic_vector(3 DOWNTO 0);
	DecOut : BUFFER std_logic_vector(2 DOWNTO 0);
	Kout : BUFFER std_logic_vector(3 DOWNTO 0);
	Kpress : BUFFER std_logic
	);
END keyscan;

-- Design Ports Information
-- DecOut[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DecOut[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DecOut[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kout[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kpress	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxIn[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxIn[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxIn[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxIn[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kscan	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MR	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF keyscan IS
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
SIGNAL ww_Kscan : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MuxIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DecOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Kout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kpress : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DecOut[0]~output_o\ : std_logic;
SIGNAL \DecOut[1]~output_o\ : std_logic;
SIGNAL \DecOut[2]~output_o\ : std_logic;
SIGNAL \Kout[0]~output_o\ : std_logic;
SIGNAL \Kout[1]~output_o\ : std_logic;
SIGNAL \Kout[2]~output_o\ : std_logic;
SIGNAL \Kout[3]~output_o\ : std_logic;
SIGNAL \Kpress~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MR~input_o\ : std_logic;
SIGNAL \Kscan~input_o\ : std_logic;
SIGNAL \Cont|MUX|O~2_combout\ : std_logic;
SIGNAL \Cont|Registor|U0|Q~q\ : std_logic;
SIGNAL \Cont|MUX|O~3_combout\ : std_logic;
SIGNAL \Cont|Registor|U1|Q~q\ : std_logic;
SIGNAL \Cont|Adder|U2|Co~0_combout\ : std_logic;
SIGNAL \Cont|MUX|O~0_combout\ : std_logic;
SIGNAL \Cont|Registor|U2|Q~q\ : std_logic;
SIGNAL \Cont|MUX|O~1_combout\ : std_logic;
SIGNAL \Cont|Registor|U3|Q~q\ : std_logic;
SIGNAL \MuxIn[3]~input_o\ : std_logic;
SIGNAL \MuxIn[1]~input_o\ : std_logic;
SIGNAL \MUX|R~0_combout\ : std_logic;
SIGNAL \MuxIn[2]~input_o\ : std_logic;
SIGNAL \MuxIn[0]~input_o\ : std_logic;
SIGNAL \MUX|R~1_combout\ : std_logic;
SIGNAL \Dec|O\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MUX|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \Cont|Registor|U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \Cont|Registor|U0|ALT_INV_Q~q\ : std_logic;
SIGNAL \Dec|ALT_INV_O\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \Cont|Registor|U3|ALT_INV_Q~q\ : std_logic;
SIGNAL \Cont|Registor|U2|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MR <= MR;
ww_Kscan <= Kscan;
ww_CLK <= CLK;
ww_MuxIn <= MuxIn;
DecOut <= ww_DecOut;
Kout <= ww_Kout;
Kpress <= ww_Kpress;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\MUX|ALT_INV_R~1_combout\ <= NOT \MUX|R~1_combout\;
\Cont|Registor|U1|ALT_INV_Q~q\ <= NOT \Cont|Registor|U1|Q~q\;
\Cont|Registor|U0|ALT_INV_Q~q\ <= NOT \Cont|Registor|U0|Q~q\;
\Dec|ALT_INV_O\(2) <= NOT \Dec|O\(2);
\Dec|ALT_INV_O\(1) <= NOT \Dec|O\(1);
\Cont|Registor|U3|ALT_INV_Q~q\ <= NOT \Cont|Registor|U3|Q~q\;
\Cont|Registor|U2|ALT_INV_Q~q\ <= NOT \Cont|Registor|U2|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X16_Y0_N23
\DecOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec|O\(0),
	devoe => ww_devoe,
	o => \DecOut[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\DecOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec|ALT_INV_O\(1),
	devoe => ww_devoe,
	o => \DecOut[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\DecOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dec|ALT_INV_O\(2),
	devoe => ww_devoe,
	o => \DecOut[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\Kout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont|Registor|U2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Kout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont|Registor|U3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Kout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont|Registor|U0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Kout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont|Registor|U1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Kout[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\Kpress~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX|ALT_INV_R~1_combout\,
	devoe => ww_devoe,
	o => \Kpress~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X20_Y0_N1
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

-- Location: IOIBUF_X20_Y0_N15
\Kscan~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kscan,
	o => \Kscan~input_o\);

-- Location: LCCOMB_X19_Y1_N26
\Cont|MUX|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|MUX|O~2_combout\ = (\MR~input_o\) # (\Cont|Registor|U0|Q~q\ $ (\Kscan~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MR~input_o\,
	datac => \Cont|Registor|U0|Q~q\,
	datad => \Kscan~input_o\,
	combout => \Cont|MUX|O~2_combout\);

-- Location: FF_X19_Y1_N27
\Cont|Registor|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Cont|MUX|O~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont|Registor|U0|Q~q\);

-- Location: LCCOMB_X19_Y1_N24
\Cont|MUX|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|MUX|O~3_combout\ = (\MR~input_o\) # (\Cont|Registor|U1|Q~q\ $ (((\Kscan~input_o\ & !\Cont|Registor|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kscan~input_o\,
	datab => \MR~input_o\,
	datac => \Cont|Registor|U1|Q~q\,
	datad => \Cont|Registor|U0|Q~q\,
	combout => \Cont|MUX|O~3_combout\);

-- Location: FF_X19_Y1_N25
\Cont|Registor|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Cont|MUX|O~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont|Registor|U1|Q~q\);

-- Location: LCCOMB_X19_Y1_N6
\Cont|Adder|U2|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|Adder|U2|Co~0_combout\ = (\Kscan~input_o\ & (!\Cont|Registor|U0|Q~q\ & !\Cont|Registor|U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kscan~input_o\,
	datac => \Cont|Registor|U0|Q~q\,
	datad => \Cont|Registor|U1|Q~q\,
	combout => \Cont|Adder|U2|Co~0_combout\);

-- Location: LCCOMB_X19_Y1_N12
\Cont|MUX|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|MUX|O~0_combout\ = (\MR~input_o\) # (\Cont|Registor|U2|Q~q\ $ (\Cont|Adder|U2|Co~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MR~input_o\,
	datac => \Cont|Registor|U2|Q~q\,
	datad => \Cont|Adder|U2|Co~0_combout\,
	combout => \Cont|MUX|O~0_combout\);

-- Location: FF_X19_Y1_N13
\Cont|Registor|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Cont|MUX|O~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont|Registor|U2|Q~q\);

-- Location: LCCOMB_X19_Y1_N30
\Cont|MUX|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cont|MUX|O~1_combout\ = (\MR~input_o\) # (\Cont|Registor|U3|Q~q\ $ (((!\Cont|Registor|U2|Q~q\ & \Cont|Adder|U2|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont|Registor|U2|Q~q\,
	datab => \MR~input_o\,
	datac => \Cont|Registor|U3|Q~q\,
	datad => \Cont|Adder|U2|Co~0_combout\,
	combout => \Cont|MUX|O~1_combout\);

-- Location: FF_X19_Y1_N31
\Cont|Registor|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Cont|MUX|O~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont|Registor|U3|Q~q\);

-- Location: LCCOMB_X19_Y1_N28
\Dec|O[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dec|O\(0) = (!\Cont|Registor|U2|Q~q\) # (!\Cont|Registor|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont|Registor|U3|Q~q\,
	datad => \Cont|Registor|U2|Q~q\,
	combout => \Dec|O\(0));

-- Location: LCCOMB_X19_Y1_N2
\Dec|O[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dec|O\(1) = (!\Cont|Registor|U3|Q~q\ & \Cont|Registor|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont|Registor|U3|Q~q\,
	datad => \Cont|Registor|U2|Q~q\,
	combout => \Dec|O\(1));

-- Location: LCCOMB_X19_Y1_N20
\Dec|O[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dec|O\(2) = (\Cont|Registor|U3|Q~q\ & !\Cont|Registor|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont|Registor|U3|Q~q\,
	datad => \Cont|Registor|U2|Q~q\,
	combout => \Dec|O\(2));

-- Location: IOIBUF_X20_Y0_N8
\MuxIn[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MuxIn(3),
	o => \MuxIn[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N29
\MuxIn[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MuxIn(1),
	o => \MuxIn[1]~input_o\);

-- Location: LCCOMB_X19_Y1_N22
\MUX|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX|R~0_combout\ = (\Cont|Registor|U1|Q~q\ & (((\MuxIn[1]~input_o\) # (\Cont|Registor|U0|Q~q\)))) # (!\Cont|Registor|U1|Q~q\ & (\MuxIn[3]~input_o\ & ((!\Cont|Registor|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxIn[3]~input_o\,
	datab => \Cont|Registor|U1|Q~q\,
	datac => \MuxIn[1]~input_o\,
	datad => \Cont|Registor|U0|Q~q\,
	combout => \MUX|R~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\MuxIn[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MuxIn(2),
	o => \MuxIn[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\MuxIn[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MuxIn(0),
	o => \MuxIn[0]~input_o\);

-- Location: LCCOMB_X19_Y1_N16
\MUX|R~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MUX|R~1_combout\ = (\MUX|R~0_combout\ & (((\MuxIn[0]~input_o\) # (!\Cont|Registor|U0|Q~q\)))) # (!\MUX|R~0_combout\ & (\MuxIn[2]~input_o\ & ((\Cont|Registor|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX|R~0_combout\,
	datab => \MuxIn[2]~input_o\,
	datac => \MuxIn[0]~input_o\,
	datad => \Cont|Registor|U0|Q~q\,
	combout => \MUX|R~1_combout\);

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

ww_DecOut(0) <= \DecOut[0]~output_o\;

ww_DecOut(1) <= \DecOut[1]~output_o\;

ww_DecOut(2) <= \DecOut[2]~output_o\;

ww_Kout(0) <= \Kout[0]~output_o\;

ww_Kout(1) <= \Kout[1]~output_o\;

ww_Kout(2) <= \Kout[2]~output_o\;

ww_Kout(3) <= \Kout[3]~output_o\;

ww_Kpress <= \Kpress~output_o\;
END structure;


