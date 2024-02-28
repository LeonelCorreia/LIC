LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity UnidAritmet is
	port( 
	A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	OPau: in STD_LOGIC;
	iCBi: in STD_LOGIC;
	CBo: out STD_LOGIC;
	OV: out STD_LOGIC;
	R: out STD_LOGIC_VECTOR(3 downto 0));
end UnidAritmet;
architecture arq_UnidAritmet of UnidAritmet is 
component Adder_Subtractor
	port(
	A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	OPau: in STD_LOGIC;
	CBi: in STD_LOGIC;
	PassB3: out STD_LOGIC;
	CBo: out STD_LOGIC;
	S: out STD_LOGIC_VECTOR (3 downto 0)
	);
end component;

component XORs 
	port(
	I0 : in STD_LOGIC;
	I1 : in STD_LOGIC;
	S : out STD_LOGIC);
end component;	

component Flags
	port(
	A3 : in STD_LOGIC;
	B3 : in STD_LOGIC;
	iCBo : in STD_LOGIC;
	R3 : in STD_LOGIC;
	OV: out STD_LOGIC;
	oCBo: out STD_LOGIC);
end component;

signal A3, B3, R3: STD_LOGIC;
signal CBo1_2: STD_LOGIC;
signal Saida: STD_LOGIC_VECTOR (3 downto 0);

begin

	A3 <= A(3);
	R3 <= Saida(3);
	
UAdder_Subtractor: Adder_Subtractor port map(
	A => A,
	B => B,
	OPau => OPau,
	CBi => iCBi,
	PassB3 => B3,
	CBo => CBo1_2,
	S => Saida
	);
UFlags: Flags port map(
	A3 => A3,
	B3 => B3,
	iCBo => CBo1_2,
	R3 => R3,
	OV => OV,
	oCBo => CBo
	);
	
	R <= Saida;
	end arq_UnidAritmet;