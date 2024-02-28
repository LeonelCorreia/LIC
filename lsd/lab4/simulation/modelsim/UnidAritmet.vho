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

-- DATE "11/16/2022 14:00:02"

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

ENTITY 	UnidAritmet IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	OPau : IN std_logic;
	CBi : IN std_logic;
	CBo : BUFFER std_logic;
	OV : BUFFER std_logic;
	R : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END UnidAritmet;

-- Design Ports Information
-- CBo	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OV	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPau	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CBi	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UnidAritmet IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OPau : std_logic;
SIGNAL ww_CBi : std_logic;
SIGNAL ww_CBo : std_logic;
SIGNAL ww_OV : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \CBo~output_o\ : std_logic;
SIGNAL \OV~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \OPau~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \UAdder_Subtractor|UXORs_6|S~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ : std_logic;
SIGNAL \UFlags|OV~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \CBi~input_o\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_1|S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~0_combout\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~combout\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~0_combout\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~combout\ : std_logic;
SIGNAL \UAdder_Subtractor|UFull_Adder|Usemi_Adder_4|S~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_OPau <= OPau;
ww_CBi <= CBi;
CBo <= ww_CBo;
OV <= ww_OV;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: IOOBUF_X56_Y54_N30
\CBo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UAdder_Subtractor|UXORs_6|S~0_combout\,
	devoe => ww_devoe,
	o => \CBo~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\OV~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UFlags|OV~0_combout\,
	devoe => ww_devoe,
	o => \OV~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_1|S~0_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_4|S~combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOIBUF_X54_Y54_N29
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\OPau~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPau,
	o => \OPau~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X54_Y53_N16
\UAdder_Subtractor|UXORs_6|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UXORs_6|S~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\))) # (!\A[3]~input_o\ & (\OPau~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \OPau~input_o\,
	datad => \B[3]~input_o\,
	combout => \UAdder_Subtractor|UXORs_6|S~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X54_Y53_N26
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ = (\A[2]~input_o\ & (\OPau~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \OPau~input_o\,
	datad => \B[2]~input_o\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\);

-- Location: LCCOMB_X54_Y53_N20
\UFlags|OV~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UFlags|OV~0_combout\ = \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ $ (((\A[3]~input_o\ & ((\B[3]~input_o\))) # (!\A[3]~input_o\ & (\OPau~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\,
	datab => \A[3]~input_o\,
	datac => \OPau~input_o\,
	datad => \B[3]~input_o\,
	combout => \UFlags|OV~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: LCCOMB_X54_Y53_N30
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_1|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_1|S~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\CBi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \CBi~input_o\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_1|S~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X54_Y53_N24
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~0_combout\ = \B[1]~input_o\ $ (((\A[0]~input_o\ & ((\B[0]~input_o\))) # (!\A[0]~input_o\ & (\OPau~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \OPau~input_o\,
	datad => \B[0]~input_o\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~0_combout\);

-- Location: LCCOMB_X54_Y53_N10
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~combout\ = \A[1]~input_o\ $ (\UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~0_combout\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_2|S~combout\);

-- Location: LCCOMB_X54_Y53_N12
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~0_combout\ = \B[2]~input_o\ $ (((\A[1]~input_o\ & (\B[1]~input_o\)) # (!\A[1]~input_o\ & ((\OPau~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \OPau~input_o\,
	datad => \B[2]~input_o\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~0_combout\);

-- Location: LCCOMB_X54_Y53_N22
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~combout\ = \A[2]~input_o\ $ (\UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~0_combout\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|S~combout\);

-- Location: LCCOMB_X54_Y53_N8
\UAdder_Subtractor|UFull_Adder|Usemi_Adder_4|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UAdder_Subtractor|UFull_Adder|Usemi_Adder_4|S~combout\ = \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\ $ (\A[3]~input_o\ $ (\OPau~input_o\ $ (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_3|CBo~combout\,
	datab => \A[3]~input_o\,
	datac => \OPau~input_o\,
	datad => \B[3]~input_o\,
	combout => \UAdder_Subtractor|UFull_Adder|Usemi_Adder_4|S~combout\);

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

ww_CBo <= \CBo~output_o\;

ww_OV <= \OV~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;
END structure;


