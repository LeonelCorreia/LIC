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

-- DATE "12/16/2022 12:26:49"

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

ENTITY 	Contador IS
    PORT (
	D : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	CE : IN std_logic;
	PL : IN std_logic;
	clear : IN std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	R : BUFFER std_logic_vector(7 DOWNTO 0);
	TC : BUFFER std_logic
	);
END Contador;

-- Design Ports Information
-- CE	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TC	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PL	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_PL : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UclkDIV|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CE~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \TC~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \UclkDIV|Add0~0_combout\ : std_logic;
SIGNAL \UclkDIV|count[0]~20_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~1\ : std_logic;
SIGNAL \UclkDIV|Add0~2_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~3\ : std_logic;
SIGNAL \UclkDIV|Add0~4_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~5\ : std_logic;
SIGNAL \UclkDIV|Add0~6_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~7\ : std_logic;
SIGNAL \UclkDIV|Add0~8_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~9\ : std_logic;
SIGNAL \UclkDIV|Add0~10_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~11\ : std_logic;
SIGNAL \UclkDIV|Add0~12_combout\ : std_logic;
SIGNAL \UclkDIV|count~8_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~13\ : std_logic;
SIGNAL \UclkDIV|Add0~14_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~15\ : std_logic;
SIGNAL \UclkDIV|Add0~16_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~17\ : std_logic;
SIGNAL \UclkDIV|Add0~18_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~19\ : std_logic;
SIGNAL \UclkDIV|Add0~20_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~21\ : std_logic;
SIGNAL \UclkDIV|Add0~22_combout\ : std_logic;
SIGNAL \UclkDIV|count~9_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~23\ : std_logic;
SIGNAL \UclkDIV|Add0~25\ : std_logic;
SIGNAL \UclkDIV|Add0~26_combout\ : std_logic;
SIGNAL \UclkDIV|count~11_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~27\ : std_logic;
SIGNAL \UclkDIV|Add0~28_combout\ : std_logic;
SIGNAL \UclkDIV|count~12_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~29\ : std_logic;
SIGNAL \UclkDIV|Add0~30_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~31\ : std_logic;
SIGNAL \UclkDIV|Add0~32_combout\ : std_logic;
SIGNAL \UclkDIV|count~13_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~33\ : std_logic;
SIGNAL \UclkDIV|Add0~34_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~35\ : std_logic;
SIGNAL \UclkDIV|Add0~36_combout\ : std_logic;
SIGNAL \UclkDIV|count~14_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~37\ : std_logic;
SIGNAL \UclkDIV|Add0~38_combout\ : std_logic;
SIGNAL \UclkDIV|count~15_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~5_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~39\ : std_logic;
SIGNAL \UclkDIV|Add0~40_combout\ : std_logic;
SIGNAL \UclkDIV|count~16_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~41\ : std_logic;
SIGNAL \UclkDIV|Add0~42_combout\ : std_logic;
SIGNAL \UclkDIV|count~17_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~43\ : std_logic;
SIGNAL \UclkDIV|Add0~44_combout\ : std_logic;
SIGNAL \UclkDIV|count~18_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~45\ : std_logic;
SIGNAL \UclkDIV|Add0~46_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~6_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~47\ : std_logic;
SIGNAL \UclkDIV|Add0~48_combout\ : std_logic;
SIGNAL \UclkDIV|count~19_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~49\ : std_logic;
SIGNAL \UclkDIV|Add0~50_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~51\ : std_logic;
SIGNAL \UclkDIV|Add0~52_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~53\ : std_logic;
SIGNAL \UclkDIV|Add0~54_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~55\ : std_logic;
SIGNAL \UclkDIV|Add0~56_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~57\ : std_logic;
SIGNAL \UclkDIV|Add0~58_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~59\ : std_logic;
SIGNAL \UclkDIV|Add0~60_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~61\ : std_logic;
SIGNAL \UclkDIV|Add0~62_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~8_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~7_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~9_combout\ : std_logic;
SIGNAL \UclkDIV|Add0~24_combout\ : std_logic;
SIGNAL \UclkDIV|count~10_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~3_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~1_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~0_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~2_combout\ : std_logic;
SIGNAL \UclkDIV|Equal0~4_combout\ : std_logic;
SIGNAL \UclkDIV|tmp~0_combout\ : std_logic;
SIGNAL \UclkDIV|tmp~feeder_combout\ : std_logic;
SIGNAL \UclkDIV|tmp~q\ : std_logic;
SIGNAL \UclkDIV|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_0|Q~0_combout\ : std_logic;
SIGNAL \PL~input_o\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_0|Q~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_1|Q~0_combout\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_1|Q~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_2|Q~0_combout\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_2|Q~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_3|Q~0_combout\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_3|Q~q\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[0]~0_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[0]~1_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[1]~2_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[1]~3_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[2]~4_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[2]~5_combout\ : std_logic;
SIGNAL \UdecoderHEX|U0|dOut[3]~0_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[3]~6_combout\ : std_logic;
SIGNAL \UdecoderHEX|U0|dOut[4]~1_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[4]~7_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[5]~8_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[5]~9_combout\ : std_logic;
SIGNAL \UdecoderHEX|U0|dOut[6]~2_combout\ : std_logic;
SIGNAL \UdecoderHEX|HEX0[6]~10_combout\ : std_logic;
SIGNAL \UCountUp|TC~combout\ : std_logic;
SIGNAL \UclkDIV|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UCountUp|UReg|UFFD_3|ALT_INV_Q~q\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_2|ALT_INV_Q~q\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_1|ALT_INV_Q~q\ : std_logic;
SIGNAL \UCountUp|UReg|UFFD_0|ALT_INV_Q~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_D <= D;
ww_CLK <= CLK;
ww_CE <= CE;
ww_PL <= PL;
ww_clear <= clear;
Q <= ww_Q;
R <= ww_R;
TC <= ww_TC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\UclkDIV|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UclkDIV|tmp~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\UCountUp|UReg|UFFD_3|ALT_INV_Q~q\ <= NOT \UCountUp|UReg|UFFD_3|Q~q\;
\UCountUp|UReg|UFFD_2|ALT_INV_Q~q\ <= NOT \UCountUp|UReg|UFFD_2|Q~q\;
\UCountUp|UReg|UFFD_1|ALT_INV_Q~q\ <= NOT \UCountUp|UReg|UFFD_1|Q~q\;
\UCountUp|UReg|UFFD_0|ALT_INV_Q~q\ <= NOT \UCountUp|UReg|UFFD_0|Q~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X46_Y54_N2
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCountUp|UReg|UFFD_0|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCountUp|UReg|UFFD_1|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCountUp|UReg|UFFD_2|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCountUp|UReg|UFFD_3|ALT_INV_Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[0]~1_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[1]~3_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[2]~5_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[3]~6_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\R[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[4]~7_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\R[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[5]~9_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\R[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UdecoderHEX|HEX0[6]~10_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\R[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\TC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCountUp|TC~combout\,
	devoe => ww_devoe,
	o => \TC~output_o\);

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

-- Location: LCCOMB_X46_Y53_N0
\UclkDIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~0_combout\ = \UclkDIV|count\(0) $ (GND)
-- \UclkDIV|Add0~1\ = CARRY(!\UclkDIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(0),
	datad => VCC,
	combout => \UclkDIV|Add0~0_combout\,
	cout => \UclkDIV|Add0~1\);

-- Location: LCCOMB_X45_Y53_N20
\UclkDIV|count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count[0]~20_combout\ = !\UclkDIV|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UclkDIV|Add0~0_combout\,
	combout => \UclkDIV|count[0]~20_combout\);

-- Location: FF_X46_Y53_N1
\UclkDIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \UclkDIV|count[0]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(0));

-- Location: LCCOMB_X46_Y53_N2
\UclkDIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~2_combout\ = (\UclkDIV|count\(1) & (!\UclkDIV|Add0~1\)) # (!\UclkDIV|count\(1) & ((\UclkDIV|Add0~1\) # (GND)))
-- \UclkDIV|Add0~3\ = CARRY((!\UclkDIV|Add0~1\) # (!\UclkDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(1),
	datad => VCC,
	cin => \UclkDIV|Add0~1\,
	combout => \UclkDIV|Add0~2_combout\,
	cout => \UclkDIV|Add0~3\);

-- Location: FF_X46_Y53_N3
\UclkDIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(1));

-- Location: LCCOMB_X46_Y53_N4
\UclkDIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~4_combout\ = (\UclkDIV|count\(2) & (\UclkDIV|Add0~3\ $ (GND))) # (!\UclkDIV|count\(2) & (!\UclkDIV|Add0~3\ & VCC))
-- \UclkDIV|Add0~5\ = CARRY((\UclkDIV|count\(2) & !\UclkDIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(2),
	datad => VCC,
	cin => \UclkDIV|Add0~3\,
	combout => \UclkDIV|Add0~4_combout\,
	cout => \UclkDIV|Add0~5\);

-- Location: FF_X46_Y53_N5
\UclkDIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(2));

-- Location: LCCOMB_X46_Y53_N6
\UclkDIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~6_combout\ = (\UclkDIV|count\(3) & (!\UclkDIV|Add0~5\)) # (!\UclkDIV|count\(3) & ((\UclkDIV|Add0~5\) # (GND)))
-- \UclkDIV|Add0~7\ = CARRY((!\UclkDIV|Add0~5\) # (!\UclkDIV|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(3),
	datad => VCC,
	cin => \UclkDIV|Add0~5\,
	combout => \UclkDIV|Add0~6_combout\,
	cout => \UclkDIV|Add0~7\);

-- Location: FF_X46_Y53_N7
\UclkDIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(3));

-- Location: LCCOMB_X46_Y53_N8
\UclkDIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~8_combout\ = (\UclkDIV|count\(4) & (\UclkDIV|Add0~7\ $ (GND))) # (!\UclkDIV|count\(4) & (!\UclkDIV|Add0~7\ & VCC))
-- \UclkDIV|Add0~9\ = CARRY((\UclkDIV|count\(4) & !\UclkDIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(4),
	datad => VCC,
	cin => \UclkDIV|Add0~7\,
	combout => \UclkDIV|Add0~8_combout\,
	cout => \UclkDIV|Add0~9\);

-- Location: FF_X46_Y53_N9
\UclkDIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(4));

-- Location: LCCOMB_X46_Y53_N10
\UclkDIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~10_combout\ = (\UclkDIV|count\(5) & (!\UclkDIV|Add0~9\)) # (!\UclkDIV|count\(5) & ((\UclkDIV|Add0~9\) # (GND)))
-- \UclkDIV|Add0~11\ = CARRY((!\UclkDIV|Add0~9\) # (!\UclkDIV|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(5),
	datad => VCC,
	cin => \UclkDIV|Add0~9\,
	combout => \UclkDIV|Add0~10_combout\,
	cout => \UclkDIV|Add0~11\);

-- Location: FF_X46_Y53_N11
\UclkDIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(5));

-- Location: LCCOMB_X46_Y53_N12
\UclkDIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~12_combout\ = (\UclkDIV|count\(6) & (\UclkDIV|Add0~11\ $ (GND))) # (!\UclkDIV|count\(6) & (!\UclkDIV|Add0~11\ & VCC))
-- \UclkDIV|Add0~13\ = CARRY((\UclkDIV|count\(6) & !\UclkDIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(6),
	datad => VCC,
	cin => \UclkDIV|Add0~11\,
	combout => \UclkDIV|Add0~12_combout\,
	cout => \UclkDIV|Add0~13\);

-- Location: LCCOMB_X45_Y53_N0
\UclkDIV|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~8_combout\ = (\UclkDIV|Add0~12_combout\ & ((!\UclkDIV|Equal0~9_combout\) # (!\UclkDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~4_combout\,
	datac => \UclkDIV|Add0~12_combout\,
	datad => \UclkDIV|Equal0~9_combout\,
	combout => \UclkDIV|count~8_combout\);

-- Location: FF_X45_Y53_N1
\UclkDIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(6));

-- Location: LCCOMB_X46_Y53_N14
\UclkDIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~14_combout\ = (\UclkDIV|count\(7) & (!\UclkDIV|Add0~13\)) # (!\UclkDIV|count\(7) & ((\UclkDIV|Add0~13\) # (GND)))
-- \UclkDIV|Add0~15\ = CARRY((!\UclkDIV|Add0~13\) # (!\UclkDIV|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(7),
	datad => VCC,
	cin => \UclkDIV|Add0~13\,
	combout => \UclkDIV|Add0~14_combout\,
	cout => \UclkDIV|Add0~15\);

-- Location: FF_X46_Y53_N15
\UclkDIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(7));

-- Location: LCCOMB_X46_Y53_N16
\UclkDIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~16_combout\ = (\UclkDIV|count\(8) & (\UclkDIV|Add0~15\ $ (GND))) # (!\UclkDIV|count\(8) & (!\UclkDIV|Add0~15\ & VCC))
-- \UclkDIV|Add0~17\ = CARRY((\UclkDIV|count\(8) & !\UclkDIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(8),
	datad => VCC,
	cin => \UclkDIV|Add0~15\,
	combout => \UclkDIV|Add0~16_combout\,
	cout => \UclkDIV|Add0~17\);

-- Location: FF_X46_Y53_N17
\UclkDIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(8));

-- Location: LCCOMB_X46_Y53_N18
\UclkDIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~18_combout\ = (\UclkDIV|count\(9) & (!\UclkDIV|Add0~17\)) # (!\UclkDIV|count\(9) & ((\UclkDIV|Add0~17\) # (GND)))
-- \UclkDIV|Add0~19\ = CARRY((!\UclkDIV|Add0~17\) # (!\UclkDIV|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(9),
	datad => VCC,
	cin => \UclkDIV|Add0~17\,
	combout => \UclkDIV|Add0~18_combout\,
	cout => \UclkDIV|Add0~19\);

-- Location: FF_X46_Y53_N19
\UclkDIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(9));

-- Location: LCCOMB_X46_Y53_N20
\UclkDIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~20_combout\ = (\UclkDIV|count\(10) & (\UclkDIV|Add0~19\ $ (GND))) # (!\UclkDIV|count\(10) & (!\UclkDIV|Add0~19\ & VCC))
-- \UclkDIV|Add0~21\ = CARRY((\UclkDIV|count\(10) & !\UclkDIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(10),
	datad => VCC,
	cin => \UclkDIV|Add0~19\,
	combout => \UclkDIV|Add0~20_combout\,
	cout => \UclkDIV|Add0~21\);

-- Location: FF_X46_Y53_N21
\UclkDIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(10));

-- Location: LCCOMB_X46_Y53_N22
\UclkDIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~22_combout\ = (\UclkDIV|count\(11) & (!\UclkDIV|Add0~21\)) # (!\UclkDIV|count\(11) & ((\UclkDIV|Add0~21\) # (GND)))
-- \UclkDIV|Add0~23\ = CARRY((!\UclkDIV|Add0~21\) # (!\UclkDIV|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(11),
	datad => VCC,
	cin => \UclkDIV|Add0~21\,
	combout => \UclkDIV|Add0~22_combout\,
	cout => \UclkDIV|Add0~23\);

-- Location: LCCOMB_X45_Y53_N26
\UclkDIV|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~9_combout\ = (\UclkDIV|Add0~22_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~22_combout\,
	combout => \UclkDIV|count~9_combout\);

-- Location: FF_X45_Y53_N27
\UclkDIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(11));

-- Location: LCCOMB_X46_Y53_N24
\UclkDIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~24_combout\ = (\UclkDIV|count\(12) & (\UclkDIV|Add0~23\ $ (GND))) # (!\UclkDIV|count\(12) & (!\UclkDIV|Add0~23\ & VCC))
-- \UclkDIV|Add0~25\ = CARRY((\UclkDIV|count\(12) & !\UclkDIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(12),
	datad => VCC,
	cin => \UclkDIV|Add0~23\,
	combout => \UclkDIV|Add0~24_combout\,
	cout => \UclkDIV|Add0~25\);

-- Location: LCCOMB_X46_Y53_N26
\UclkDIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~26_combout\ = (\UclkDIV|count\(13) & (!\UclkDIV|Add0~25\)) # (!\UclkDIV|count\(13) & ((\UclkDIV|Add0~25\) # (GND)))
-- \UclkDIV|Add0~27\ = CARRY((!\UclkDIV|Add0~25\) # (!\UclkDIV|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(13),
	datad => VCC,
	cin => \UclkDIV|Add0~25\,
	combout => \UclkDIV|Add0~26_combout\,
	cout => \UclkDIV|Add0~27\);

-- Location: LCCOMB_X45_Y53_N16
\UclkDIV|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~11_combout\ = (\UclkDIV|Add0~26_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~26_combout\,
	combout => \UclkDIV|count~11_combout\);

-- Location: FF_X45_Y53_N17
\UclkDIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(13));

-- Location: LCCOMB_X46_Y53_N28
\UclkDIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~28_combout\ = (\UclkDIV|count\(14) & (\UclkDIV|Add0~27\ $ (GND))) # (!\UclkDIV|count\(14) & (!\UclkDIV|Add0~27\ & VCC))
-- \UclkDIV|Add0~29\ = CARRY((\UclkDIV|count\(14) & !\UclkDIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(14),
	datad => VCC,
	cin => \UclkDIV|Add0~27\,
	combout => \UclkDIV|Add0~28_combout\,
	cout => \UclkDIV|Add0~29\);

-- Location: LCCOMB_X45_Y53_N14
\UclkDIV|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~12_combout\ = (\UclkDIV|Add0~28_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~28_combout\,
	combout => \UclkDIV|count~12_combout\);

-- Location: FF_X45_Y53_N15
\UclkDIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(14));

-- Location: LCCOMB_X46_Y53_N30
\UclkDIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~30_combout\ = (\UclkDIV|count\(15) & (!\UclkDIV|Add0~29\)) # (!\UclkDIV|count\(15) & ((\UclkDIV|Add0~29\) # (GND)))
-- \UclkDIV|Add0~31\ = CARRY((!\UclkDIV|Add0~29\) # (!\UclkDIV|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(15),
	datad => VCC,
	cin => \UclkDIV|Add0~29\,
	combout => \UclkDIV|Add0~30_combout\,
	cout => \UclkDIV|Add0~31\);

-- Location: FF_X46_Y53_N31
\UclkDIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(15));

-- Location: LCCOMB_X46_Y52_N0
\UclkDIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~32_combout\ = (\UclkDIV|count\(16) & (\UclkDIV|Add0~31\ $ (GND))) # (!\UclkDIV|count\(16) & (!\UclkDIV|Add0~31\ & VCC))
-- \UclkDIV|Add0~33\ = CARRY((\UclkDIV|count\(16) & !\UclkDIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(16),
	datad => VCC,
	cin => \UclkDIV|Add0~31\,
	combout => \UclkDIV|Add0~32_combout\,
	cout => \UclkDIV|Add0~33\);

-- Location: LCCOMB_X45_Y52_N12
\UclkDIV|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~13_combout\ = (\UclkDIV|Add0~32_combout\ & ((!\UclkDIV|Equal0~9_combout\) # (!\UclkDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~4_combout\,
	datac => \UclkDIV|Add0~32_combout\,
	datad => \UclkDIV|Equal0~9_combout\,
	combout => \UclkDIV|count~13_combout\);

-- Location: FF_X45_Y52_N13
\UclkDIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(16));

-- Location: LCCOMB_X46_Y52_N2
\UclkDIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~34_combout\ = (\UclkDIV|count\(17) & (!\UclkDIV|Add0~33\)) # (!\UclkDIV|count\(17) & ((\UclkDIV|Add0~33\) # (GND)))
-- \UclkDIV|Add0~35\ = CARRY((!\UclkDIV|Add0~33\) # (!\UclkDIV|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(17),
	datad => VCC,
	cin => \UclkDIV|Add0~33\,
	combout => \UclkDIV|Add0~34_combout\,
	cout => \UclkDIV|Add0~35\);

-- Location: FF_X46_Y52_N3
\UclkDIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(17));

-- Location: LCCOMB_X46_Y52_N4
\UclkDIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~36_combout\ = (\UclkDIV|count\(18) & (\UclkDIV|Add0~35\ $ (GND))) # (!\UclkDIV|count\(18) & (!\UclkDIV|Add0~35\ & VCC))
-- \UclkDIV|Add0~37\ = CARRY((\UclkDIV|count\(18) & !\UclkDIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(18),
	datad => VCC,
	cin => \UclkDIV|Add0~35\,
	combout => \UclkDIV|Add0~36_combout\,
	cout => \UclkDIV|Add0~37\);

-- Location: LCCOMB_X45_Y52_N18
\UclkDIV|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~14_combout\ = (\UclkDIV|Add0~36_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~36_combout\,
	combout => \UclkDIV|count~14_combout\);

-- Location: FF_X45_Y52_N19
\UclkDIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(18));

-- Location: LCCOMB_X46_Y52_N6
\UclkDIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~38_combout\ = (\UclkDIV|count\(19) & (!\UclkDIV|Add0~37\)) # (!\UclkDIV|count\(19) & ((\UclkDIV|Add0~37\) # (GND)))
-- \UclkDIV|Add0~39\ = CARRY((!\UclkDIV|Add0~37\) # (!\UclkDIV|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(19),
	datad => VCC,
	cin => \UclkDIV|Add0~37\,
	combout => \UclkDIV|Add0~38_combout\,
	cout => \UclkDIV|Add0~39\);

-- Location: LCCOMB_X45_Y52_N6
\UclkDIV|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~15_combout\ = (\UclkDIV|Add0~38_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~38_combout\,
	combout => \UclkDIV|count~15_combout\);

-- Location: FF_X45_Y52_N7
\UclkDIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(19));

-- Location: LCCOMB_X45_Y52_N10
\UclkDIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~5_combout\ = (\UclkDIV|count\(16) & (\UclkDIV|count\(18) & (\UclkDIV|count\(19) & !\UclkDIV|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(16),
	datab => \UclkDIV|count\(18),
	datac => \UclkDIV|count\(19),
	datad => \UclkDIV|count\(17),
	combout => \UclkDIV|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y52_N8
\UclkDIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~40_combout\ = (\UclkDIV|count\(20) & (\UclkDIV|Add0~39\ $ (GND))) # (!\UclkDIV|count\(20) & (!\UclkDIV|Add0~39\ & VCC))
-- \UclkDIV|Add0~41\ = CARRY((\UclkDIV|count\(20) & !\UclkDIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(20),
	datad => VCC,
	cin => \UclkDIV|Add0~39\,
	combout => \UclkDIV|Add0~40_combout\,
	cout => \UclkDIV|Add0~41\);

-- Location: LCCOMB_X45_Y52_N26
\UclkDIV|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~16_combout\ = (\UclkDIV|Add0~40_combout\ & ((!\UclkDIV|Equal0~9_combout\) # (!\UclkDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~4_combout\,
	datac => \UclkDIV|Add0~40_combout\,
	datad => \UclkDIV|Equal0~9_combout\,
	combout => \UclkDIV|count~16_combout\);

-- Location: FF_X45_Y52_N27
\UclkDIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(20));

-- Location: LCCOMB_X46_Y52_N10
\UclkDIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~42_combout\ = (\UclkDIV|count\(21) & (!\UclkDIV|Add0~41\)) # (!\UclkDIV|count\(21) & ((\UclkDIV|Add0~41\) # (GND)))
-- \UclkDIV|Add0~43\ = CARRY((!\UclkDIV|Add0~41\) # (!\UclkDIV|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(21),
	datad => VCC,
	cin => \UclkDIV|Add0~41\,
	combout => \UclkDIV|Add0~42_combout\,
	cout => \UclkDIV|Add0~43\);

-- Location: LCCOMB_X45_Y52_N28
\UclkDIV|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~17_combout\ = (\UclkDIV|Add0~42_combout\ & ((!\UclkDIV|Equal0~9_combout\) # (!\UclkDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~4_combout\,
	datac => \UclkDIV|Add0~42_combout\,
	datad => \UclkDIV|Equal0~9_combout\,
	combout => \UclkDIV|count~17_combout\);

-- Location: FF_X45_Y52_N29
\UclkDIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(21));

-- Location: LCCOMB_X46_Y52_N12
\UclkDIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~44_combout\ = (\UclkDIV|count\(22) & (\UclkDIV|Add0~43\ $ (GND))) # (!\UclkDIV|count\(22) & (!\UclkDIV|Add0~43\ & VCC))
-- \UclkDIV|Add0~45\ = CARRY((\UclkDIV|count\(22) & !\UclkDIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(22),
	datad => VCC,
	cin => \UclkDIV|Add0~43\,
	combout => \UclkDIV|Add0~44_combout\,
	cout => \UclkDIV|Add0~45\);

-- Location: LCCOMB_X45_Y52_N14
\UclkDIV|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~18_combout\ = (\UclkDIV|Add0~44_combout\ & ((!\UclkDIV|Equal0~9_combout\) # (!\UclkDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~4_combout\,
	datac => \UclkDIV|Add0~44_combout\,
	datad => \UclkDIV|Equal0~9_combout\,
	combout => \UclkDIV|count~18_combout\);

-- Location: FF_X45_Y52_N15
\UclkDIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(22));

-- Location: LCCOMB_X46_Y52_N14
\UclkDIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~46_combout\ = (\UclkDIV|count\(23) & (!\UclkDIV|Add0~45\)) # (!\UclkDIV|count\(23) & ((\UclkDIV|Add0~45\) # (GND)))
-- \UclkDIV|Add0~47\ = CARRY((!\UclkDIV|Add0~45\) # (!\UclkDIV|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(23),
	datad => VCC,
	cin => \UclkDIV|Add0~45\,
	combout => \UclkDIV|Add0~46_combout\,
	cout => \UclkDIV|Add0~47\);

-- Location: FF_X46_Y52_N15
\UclkDIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(23));

-- Location: LCCOMB_X45_Y52_N4
\UclkDIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~6_combout\ = (\UclkDIV|count\(20) & (\UclkDIV|count\(22) & (!\UclkDIV|count\(23) & \UclkDIV|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(20),
	datab => \UclkDIV|count\(22),
	datac => \UclkDIV|count\(23),
	datad => \UclkDIV|count\(21),
	combout => \UclkDIV|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y52_N16
\UclkDIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~48_combout\ = (\UclkDIV|count\(24) & (\UclkDIV|Add0~47\ $ (GND))) # (!\UclkDIV|count\(24) & (!\UclkDIV|Add0~47\ & VCC))
-- \UclkDIV|Add0~49\ = CARRY((\UclkDIV|count\(24) & !\UclkDIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(24),
	datad => VCC,
	cin => \UclkDIV|Add0~47\,
	combout => \UclkDIV|Add0~48_combout\,
	cout => \UclkDIV|Add0~49\);

-- Location: LCCOMB_X45_Y52_N24
\UclkDIV|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~19_combout\ = (\UclkDIV|Add0~48_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~48_combout\,
	combout => \UclkDIV|count~19_combout\);

-- Location: FF_X45_Y52_N25
\UclkDIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(24));

-- Location: LCCOMB_X46_Y52_N18
\UclkDIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~50_combout\ = (\UclkDIV|count\(25) & (!\UclkDIV|Add0~49\)) # (!\UclkDIV|count\(25) & ((\UclkDIV|Add0~49\) # (GND)))
-- \UclkDIV|Add0~51\ = CARRY((!\UclkDIV|Add0~49\) # (!\UclkDIV|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(25),
	datad => VCC,
	cin => \UclkDIV|Add0~49\,
	combout => \UclkDIV|Add0~50_combout\,
	cout => \UclkDIV|Add0~51\);

-- Location: FF_X46_Y52_N19
\UclkDIV|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(25));

-- Location: LCCOMB_X46_Y52_N20
\UclkDIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~52_combout\ = (\UclkDIV|count\(26) & (\UclkDIV|Add0~51\ $ (GND))) # (!\UclkDIV|count\(26) & (!\UclkDIV|Add0~51\ & VCC))
-- \UclkDIV|Add0~53\ = CARRY((\UclkDIV|count\(26) & !\UclkDIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(26),
	datad => VCC,
	cin => \UclkDIV|Add0~51\,
	combout => \UclkDIV|Add0~52_combout\,
	cout => \UclkDIV|Add0~53\);

-- Location: FF_X46_Y52_N21
\UclkDIV|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(26));

-- Location: LCCOMB_X46_Y52_N22
\UclkDIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~54_combout\ = (\UclkDIV|count\(27) & (!\UclkDIV|Add0~53\)) # (!\UclkDIV|count\(27) & ((\UclkDIV|Add0~53\) # (GND)))
-- \UclkDIV|Add0~55\ = CARRY((!\UclkDIV|Add0~53\) # (!\UclkDIV|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(27),
	datad => VCC,
	cin => \UclkDIV|Add0~53\,
	combout => \UclkDIV|Add0~54_combout\,
	cout => \UclkDIV|Add0~55\);

-- Location: FF_X46_Y52_N23
\UclkDIV|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(27));

-- Location: LCCOMB_X46_Y52_N24
\UclkDIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~56_combout\ = (\UclkDIV|count\(28) & (\UclkDIV|Add0~55\ $ (GND))) # (!\UclkDIV|count\(28) & (!\UclkDIV|Add0~55\ & VCC))
-- \UclkDIV|Add0~57\ = CARRY((\UclkDIV|count\(28) & !\UclkDIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(28),
	datad => VCC,
	cin => \UclkDIV|Add0~55\,
	combout => \UclkDIV|Add0~56_combout\,
	cout => \UclkDIV|Add0~57\);

-- Location: FF_X46_Y52_N25
\UclkDIV|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(28));

-- Location: LCCOMB_X46_Y52_N26
\UclkDIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~58_combout\ = (\UclkDIV|count\(29) & (!\UclkDIV|Add0~57\)) # (!\UclkDIV|count\(29) & ((\UclkDIV|Add0~57\) # (GND)))
-- \UclkDIV|Add0~59\ = CARRY((!\UclkDIV|Add0~57\) # (!\UclkDIV|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(29),
	datad => VCC,
	cin => \UclkDIV|Add0~57\,
	combout => \UclkDIV|Add0~58_combout\,
	cout => \UclkDIV|Add0~59\);

-- Location: FF_X46_Y52_N27
\UclkDIV|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(29));

-- Location: LCCOMB_X46_Y52_N28
\UclkDIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~60_combout\ = (\UclkDIV|count\(30) & (\UclkDIV|Add0~59\ $ (GND))) # (!\UclkDIV|count\(30) & (!\UclkDIV|Add0~59\ & VCC))
-- \UclkDIV|Add0~61\ = CARRY((\UclkDIV|count\(30) & !\UclkDIV|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UclkDIV|count\(30),
	datad => VCC,
	cin => \UclkDIV|Add0~59\,
	combout => \UclkDIV|Add0~60_combout\,
	cout => \UclkDIV|Add0~61\);

-- Location: FF_X46_Y52_N29
\UclkDIV|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(30));

-- Location: LCCOMB_X46_Y52_N30
\UclkDIV|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Add0~62_combout\ = \UclkDIV|count\(31) $ (\UclkDIV|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(31),
	cin => \UclkDIV|Add0~61\,
	combout => \UclkDIV|Add0~62_combout\);

-- Location: FF_X46_Y52_N31
\UclkDIV|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(31));

-- Location: LCCOMB_X45_Y52_N22
\UclkDIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~8_combout\ = (!\UclkDIV|count\(31) & (!\UclkDIV|count\(29) & (!\UclkDIV|count\(28) & !\UclkDIV|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(31),
	datab => \UclkDIV|count\(29),
	datac => \UclkDIV|count\(28),
	datad => \UclkDIV|count\(30),
	combout => \UclkDIV|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y52_N20
\UclkDIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~7_combout\ = (!\UclkDIV|count\(26) & (\UclkDIV|count\(24) & (!\UclkDIV|count\(27) & !\UclkDIV|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(26),
	datab => \UclkDIV|count\(24),
	datac => \UclkDIV|count\(27),
	datad => \UclkDIV|count\(25),
	combout => \UclkDIV|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y52_N16
\UclkDIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~9_combout\ = (\UclkDIV|Equal0~5_combout\ & (\UclkDIV|Equal0~6_combout\ & (\UclkDIV|Equal0~8_combout\ & \UclkDIV|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~5_combout\,
	datab => \UclkDIV|Equal0~6_combout\,
	datac => \UclkDIV|Equal0~8_combout\,
	datad => \UclkDIV|Equal0~7_combout\,
	combout => \UclkDIV|Equal0~9_combout\);

-- Location: LCCOMB_X45_Y53_N18
\UclkDIV|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|count~10_combout\ = (\UclkDIV|Add0~24_combout\ & ((!\UclkDIV|Equal0~4_combout\) # (!\UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~9_combout\,
	datac => \UclkDIV|Equal0~4_combout\,
	datad => \UclkDIV|Add0~24_combout\,
	combout => \UclkDIV|count~10_combout\);

-- Location: FF_X45_Y53_N19
\UclkDIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|count\(12));

-- Location: LCCOMB_X45_Y53_N12
\UclkDIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~3_combout\ = (\UclkDIV|count\(12) & (\UclkDIV|count\(14) & (!\UclkDIV|count\(15) & \UclkDIV|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(12),
	datab => \UclkDIV|count\(14),
	datac => \UclkDIV|count\(15),
	datad => \UclkDIV|count\(13),
	combout => \UclkDIV|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y53_N24
\UclkDIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~1_combout\ = (!\UclkDIV|count\(2) & (!\UclkDIV|count\(4) & (!\UclkDIV|count\(1) & !\UclkDIV|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(2),
	datab => \UclkDIV|count\(4),
	datac => \UclkDIV|count\(1),
	datad => \UclkDIV|count\(3),
	combout => \UclkDIV|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y53_N22
\UclkDIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~0_combout\ = (\UclkDIV|count\(6) & (!\UclkDIV|count\(5) & (!\UclkDIV|count\(7) & !\UclkDIV|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(6),
	datab => \UclkDIV|count\(5),
	datac => \UclkDIV|count\(7),
	datad => \UclkDIV|count\(8),
	combout => \UclkDIV|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y53_N28
\UclkDIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~2_combout\ = (\UclkDIV|count\(11) & (\UclkDIV|count\(0) & (!\UclkDIV|count\(10) & !\UclkDIV|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|count\(11),
	datab => \UclkDIV|count\(0),
	datac => \UclkDIV|count\(10),
	datad => \UclkDIV|count\(9),
	combout => \UclkDIV|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y53_N30
\UclkDIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|Equal0~4_combout\ = (\UclkDIV|Equal0~3_combout\ & (\UclkDIV|Equal0~1_combout\ & (\UclkDIV|Equal0~0_combout\ & \UclkDIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~3_combout\,
	datab => \UclkDIV|Equal0~1_combout\,
	datac => \UclkDIV|Equal0~0_combout\,
	datad => \UclkDIV|Equal0~2_combout\,
	combout => \UclkDIV|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y52_N30
\UclkDIV|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|tmp~0_combout\ = \UclkDIV|tmp~q\ $ (((\UclkDIV|Equal0~4_combout\ & \UclkDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UclkDIV|Equal0~4_combout\,
	datac => \UclkDIV|tmp~q\,
	datad => \UclkDIV|Equal0~9_combout\,
	combout => \UclkDIV|tmp~0_combout\);

-- Location: LCCOMB_X45_Y52_N2
\UclkDIV|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UclkDIV|tmp~feeder_combout\ = \UclkDIV|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UclkDIV|tmp~0_combout\,
	combout => \UclkDIV|tmp~feeder_combout\);

-- Location: FF_X45_Y52_N3
\UclkDIV|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \UclkDIV|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UclkDIV|tmp~q\);

-- Location: CLKCTRL_G12
\UclkDIV|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UclkDIV|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UclkDIV|tmp~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X54_Y53_N24
\UCountUp|UReg|UFFD_0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCountUp|UReg|UFFD_0|Q~0_combout\ = !\D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[0]~input_o\,
	combout => \UCountUp|UReg|UFFD_0|Q~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\PL~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PL,
	o => \PL~input_o\);

-- Location: FF_X54_Y53_N25
\UCountUp|UReg|UFFD_0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UclkDIV|tmp~clkctrl_outclk\,
	d => \UCountUp|UReg|UFFD_0|Q~0_combout\,
	ena => \PL~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCountUp|UReg|UFFD_0|Q~q\);

-- Location: IOIBUF_X51_Y54_N22
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X54_Y53_N10
\UCountUp|UReg|UFFD_1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCountUp|UReg|UFFD_1|Q~0_combout\ = !\D[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~input_o\,
	combout => \UCountUp|UReg|UFFD_1|Q~0_combout\);

-- Location: FF_X54_Y53_N11
\UCountUp|UReg|UFFD_1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UclkDIV|tmp~clkctrl_outclk\,
	d => \UCountUp|UReg|UFFD_1|Q~0_combout\,
	ena => \PL~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCountUp|UReg|UFFD_1|Q~q\);

-- Location: IOIBUF_X51_Y54_N1
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X54_Y53_N28
\UCountUp|UReg|UFFD_2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCountUp|UReg|UFFD_2|Q~0_combout\ = !\D[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[2]~input_o\,
	combout => \UCountUp|UReg|UFFD_2|Q~0_combout\);

-- Location: FF_X54_Y53_N29
\UCountUp|UReg|UFFD_2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UclkDIV|tmp~clkctrl_outclk\,
	d => \UCountUp|UReg|UFFD_2|Q~0_combout\,
	ena => \PL~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCountUp|UReg|UFFD_2|Q~q\);

-- Location: IOIBUF_X54_Y54_N29
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X54_Y53_N6
\UCountUp|UReg|UFFD_3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCountUp|UReg|UFFD_3|Q~0_combout\ = !\D[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[3]~input_o\,
	combout => \UCountUp|UReg|UFFD_3|Q~0_combout\);

-- Location: FF_X54_Y53_N7
\UCountUp|UReg|UFFD_3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UclkDIV|tmp~clkctrl_outclk\,
	d => \UCountUp|UReg|UFFD_3|Q~0_combout\,
	ena => \PL~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCountUp|UReg|UFFD_3|Q~q\);

-- Location: LCCOMB_X59_Y53_N8
\UdecoderHEX|HEX0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[0]~0_combout\ = (\UCountUp|UReg|UFFD_2|Q~q\ & (!\UCountUp|UReg|UFFD_0|Q~q\ & (\UCountUp|UReg|UFFD_1|Q~q\ $ (!\UCountUp|UReg|UFFD_3|Q~q\)))) # (!\UCountUp|UReg|UFFD_2|Q~q\ & (\UCountUp|UReg|UFFD_1|Q~q\ & (\UCountUp|UReg|UFFD_3|Q~q\ $ 
-- (!\UCountUp|UReg|UFFD_0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|HEX0[0]~0_combout\);

-- Location: IOIBUF_X60_Y54_N15
\clear~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: LCCOMB_X59_Y53_N6
\UdecoderHEX|HEX0[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[0]~1_combout\ = (\UdecoderHEX|HEX0[0]~0_combout\) # (\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UdecoderHEX|HEX0[0]~0_combout\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[0]~1_combout\);

-- Location: LCCOMB_X59_Y53_N28
\UdecoderHEX|HEX0[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[1]~2_combout\ = (\UCountUp|UReg|UFFD_1|Q~q\ & (!\UCountUp|UReg|UFFD_2|Q~q\ & (\UCountUp|UReg|UFFD_3|Q~q\ $ (\UCountUp|UReg|UFFD_0|Q~q\)))) # (!\UCountUp|UReg|UFFD_1|Q~q\ & ((\UCountUp|UReg|UFFD_0|Q~q\ & (!\UCountUp|UReg|UFFD_2|Q~q\)) # 
-- (!\UCountUp|UReg|UFFD_0|Q~q\ & ((!\UCountUp|UReg|UFFD_3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|HEX0[1]~2_combout\);

-- Location: LCCOMB_X59_Y53_N14
\UdecoderHEX|HEX0[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[1]~3_combout\ = (\UdecoderHEX|HEX0[1]~2_combout\) # (\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UdecoderHEX|HEX0[1]~2_combout\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[1]~3_combout\);

-- Location: LCCOMB_X59_Y53_N0
\UdecoderHEX|HEX0[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[2]~4_combout\ = (\UCountUp|UReg|UFFD_1|Q~q\ & (!\UCountUp|UReg|UFFD_3|Q~q\ & !\UCountUp|UReg|UFFD_0|Q~q\)) # (!\UCountUp|UReg|UFFD_1|Q~q\ & (\UCountUp|UReg|UFFD_3|Q~q\ & \UCountUp|UReg|UFFD_0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|HEX0[2]~4_combout\);

-- Location: LCCOMB_X59_Y53_N2
\UdecoderHEX|HEX0[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[2]~5_combout\ = (\clear~input_o\) # ((\UdecoderHEX|HEX0[2]~4_combout\ & (\UCountUp|UReg|UFFD_2|Q~q\ & \UCountUp|UReg|UFFD_3|Q~q\)) # (!\UdecoderHEX|HEX0[2]~4_combout\ & (!\UCountUp|UReg|UFFD_2|Q~q\ & !\UCountUp|UReg|UFFD_3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UdecoderHEX|HEX0[2]~4_combout\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[2]~5_combout\);

-- Location: LCCOMB_X59_Y53_N20
\UdecoderHEX|U0|dOut[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|U0|dOut[3]~0_combout\ = (\UCountUp|UReg|UFFD_0|Q~q\ & ((\UCountUp|UReg|UFFD_1|Q~q\ & (!\UCountUp|UReg|UFFD_2|Q~q\ & \UCountUp|UReg|UFFD_3|Q~q\)) # (!\UCountUp|UReg|UFFD_1|Q~q\ & (\UCountUp|UReg|UFFD_2|Q~q\ & !\UCountUp|UReg|UFFD_3|Q~q\)))) # 
-- (!\UCountUp|UReg|UFFD_0|Q~q\ & (\UCountUp|UReg|UFFD_1|Q~q\ $ ((!\UCountUp|UReg|UFFD_2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|U0|dOut[3]~0_combout\);

-- Location: LCCOMB_X59_Y53_N18
\UdecoderHEX|HEX0[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[3]~6_combout\ = (\UdecoderHEX|U0|dOut[3]~0_combout\) # (\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UdecoderHEX|U0|dOut[3]~0_combout\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[3]~6_combout\);

-- Location: LCCOMB_X59_Y53_N24
\UdecoderHEX|U0|dOut[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|U0|dOut[4]~1_combout\ = (\UCountUp|UReg|UFFD_1|Q~q\ & ((\UCountUp|UReg|UFFD_2|Q~q\ & ((!\UCountUp|UReg|UFFD_0|Q~q\))) # (!\UCountUp|UReg|UFFD_2|Q~q\ & (\UCountUp|UReg|UFFD_3|Q~q\)))) # (!\UCountUp|UReg|UFFD_1|Q~q\ & 
-- (((\UCountUp|UReg|UFFD_3|Q~q\ & !\UCountUp|UReg|UFFD_0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|U0|dOut[4]~1_combout\);

-- Location: LCCOMB_X59_Y53_N22
\UdecoderHEX|HEX0[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[4]~7_combout\ = (\UdecoderHEX|U0|dOut[4]~1_combout\) # (\clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UdecoderHEX|U0|dOut[4]~1_combout\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[4]~7_combout\);

-- Location: LCCOMB_X59_Y53_N12
\UdecoderHEX|HEX0[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[5]~8_combout\ = (\UCountUp|UReg|UFFD_1|Q~q\ & (!\UCountUp|UReg|UFFD_2|Q~q\ & !\UCountUp|UReg|UFFD_0|Q~q\)) # (!\UCountUp|UReg|UFFD_1|Q~q\ & (\UCountUp|UReg|UFFD_2|Q~q\ & \UCountUp|UReg|UFFD_0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|HEX0[5]~8_combout\);

-- Location: LCCOMB_X59_Y53_N10
\UdecoderHEX|HEX0[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[5]~9_combout\ = (\clear~input_o\) # ((\UdecoderHEX|HEX0[5]~8_combout\ & (\UCountUp|UReg|UFFD_0|Q~q\ $ (!\UCountUp|UReg|UFFD_3|Q~q\))) # (!\UdecoderHEX|HEX0[5]~8_combout\ & (!\UCountUp|UReg|UFFD_0|Q~q\ & \UCountUp|UReg|UFFD_3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UdecoderHEX|HEX0[5]~8_combout\,
	datab => \UCountUp|UReg|UFFD_0|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[5]~9_combout\);

-- Location: LCCOMB_X59_Y53_N16
\UdecoderHEX|U0|dOut[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|U0|dOut[6]~2_combout\ = (\UCountUp|UReg|UFFD_0|Q~q\ & ((\UCountUp|UReg|UFFD_2|Q~q\ $ (\UCountUp|UReg|UFFD_3|Q~q\)) # (!\UCountUp|UReg|UFFD_1|Q~q\))) # (!\UCountUp|UReg|UFFD_0|Q~q\ & ((\UCountUp|UReg|UFFD_1|Q~q\ $ (\UCountUp|UReg|UFFD_2|Q~q\)) 
-- # (!\UCountUp|UReg|UFFD_3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UdecoderHEX|U0|dOut[6]~2_combout\);

-- Location: LCCOMB_X59_Y53_N30
\UdecoderHEX|HEX0[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UdecoderHEX|HEX0[6]~10_combout\ = (\clear~input_o\) # (!\UdecoderHEX|U0|dOut[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UdecoderHEX|U0|dOut[6]~2_combout\,
	datad => \clear~input_o\,
	combout => \UdecoderHEX|HEX0[6]~10_combout\);

-- Location: LCCOMB_X59_Y53_N4
\UCountUp|TC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCountUp|TC~combout\ = (!\UCountUp|UReg|UFFD_1|Q~q\ & (!\UCountUp|UReg|UFFD_2|Q~q\ & (!\UCountUp|UReg|UFFD_3|Q~q\ & !\UCountUp|UReg|UFFD_0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCountUp|UReg|UFFD_1|Q~q\,
	datab => \UCountUp|UReg|UFFD_2|Q~q\,
	datac => \UCountUp|UReg|UFFD_3|Q~q\,
	datad => \UCountUp|UReg|UFFD_0|Q~q\,
	combout => \UCountUp|TC~combout\);

-- Location: IOIBUF_X49_Y54_N1
\CE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CE,
	o => \CE~input_o\);

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

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_TC <= \TC~output_o\;
END structure;


