LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
	port(
	W: in STD_LOGIC_VECTOR(3 downto 0);
	Y: in STD_LOGIC_VECTOR(3 downto 0);
	CBi: in STD_LOGIC;
	Op: in STD_LOGIC_VECTOR(2 downto 0);
	BE: out STD_LOGIC;
	GE: out STD_LOGIC;
	Z: out STD_LOGIC;
	OV: out STD_LOGIC;
	CBo: out STD_LOGIC;
	F: out STD_LOGIC_VECTOR(3 downto 0)
	);
end ALU;
architecture arq_ALU of ALU is

component UnidAritmet
	port( 
	A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	OPau: in STD_LOGIC;
	iCBi: in STD_LOGIC;
	CBo: out STD_LOGIC;
	OV: out STD_LOGIC;
	R: out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;
component Logic_Module
port(
	A : in STD_LOGIC_VECTOR(3 downto 0);
	B : in STD_LOGIC_VECTOR(3 downto 0);
	Op: in STD_LOGIC_VECTOR(1 downto 0);
	R : out STD_LOGIC_VECTOR(3 downto 0);
	CY: out STD_LOGIC
	);
end component;
component Flags2
	port(
	iOV : in STD_LOGIC;
	iCB : in STD_LOGIC;
	Op : in STD_LOGIC;
	R : in STD_LOGIC_VECTOR(3 downto 0);
	CY: in STD_LOGIC;
	oOV: out STD_LOGIC;
	oCB: out STD_LOGIC;
	oBE: out STD_LOGIC;
	oGE: out STD_LOGIC;
	oZ: out STD_LOGIC
	);
end component;
component MUX_Final
	port(
	A: in STD_LOGIC_VECTOR(3 downto 0);
	B: in STD_LOGIC_VECTOR(3 downto 0);
	Sel: in STD_LOGIC;
	R: out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal R_MUX_Anulador0 : STD_LOGIC;
signal R_MUX_Anulador1 : STD_LOGIC;
signal R_MUX_Anulador2 : STD_LOGIC;
signal R_MUX_Anulador3 : STD_LOGIC;
signal R_OV : STD_LOGIC;
signal R_CBo : STD_LOGIC;
signal R_UA0 : STD_LOGIC;
signal R_UA1 : STD_LOGIC;
signal R_UA2 : STD_LOGIC;
signal R_UA3 : STD_LOGIC;
signal R_LM0 : STD_LOGIC;
signal R_LM1 : STD_LOGIC;
signal R_LM2 : STD_LOGIC;signal R_LM3 : STD_LOGIC;
signal signalCY : STD_LOGIC;
signal R_MUX_Final0: STD_LOGIC;
signal R_MUX_Final1: STD_LOGIC;
signal R_MUX_Final2: STD_LOGIC;
signal R_MUX_Final3: STD_LOGIC;

begin
	UMUX_Anulador: MUX_Final port map(
		A(0) => '0',
		A(1) => '0',
		A(2) => '0',
		A(3) => '0',
		B => Y,
		sel => Op(1),
		R(0) => R_MUX_Anulador0,
		R(1) => R_MUX_Anulador1,
		R(2) => R_MUX_Anulador2,
		R(3) => R_MUX_Anulador3

	);
	UUnidAritmet: UnidAritmet port map(
		A => W,
		B(0) => R_MUX_Anulador0,
		B(1) => R_MUX_Anulador1,
		B(2) => R_MUX_Anulador2,
		B(3) => R_MUX_Anulador3,
		OPau => Op(0),
		iCBi => CBi,
		CBo => R_CBo,
		OV => R_OV,
		R(0) => R_UA0,
		R(1) => R_UA1,
		R(2) => R_UA2,
		R(3) => R_UA3
	);
	ULogic_Module: Logic_Module port map(
		A => W,
		B => Y,
		Op(0) => Op(0),
		Op(1) => Op(1),
		R(0) => R_LM0,
		R(1) => R_LM1,
		R(2) => R_LM2,
		R(3) => R_LM3,
		CY => signalCY
	);
	UMUX_Final: MUX_Final port map(
		A(0) => R_UA0,
		A(1) => R_UA1,
		A(2) => R_UA2,
		A(3) => R_UA3,
		B(0) => R_LM0,
		B(1) => R_LM1,
		B(2) => R_LM2,
		B(3) => R_LM3,
		Sel => Op(2),
		R(0) => R_MUX_Final0,
		R(1) => R_MUX_Final1,
		R(2) => R_MUX_Final2,
		R(3) => R_MUX_Final3
	);	
	UFlags2: Flags2 port map(
		iOV => R_OV,
		iCB => R_CBo,
		Op => Op(2),
		R(0) => R_MUX_Final0,
		R(1) => R_MUX_Final1,		R(2) => R_MUX_Final2,
		R(3) => R_MUX_Final3,
		CY => signalCY,
		oOV => OV,
		oCB => CBo,
		oBE => BE,
		oGE => GE,
		oZ => Z
	);	
	F(0) <= R_MUX_Final0;
	F(1) <= R_MUX_Final1;
	F(2) <= R_MUX_Final2;
	F(3) <= R_MUX_Final3;
end arq_ALU;