LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Contador is

	port(
	D: in STD_LOGIC_VECTOR (3 DOWNTO 0);
	CLK: in STD_LOGIC;
	CE: in STD_LOGIC;
	PL: in STD_LOGIC;
	clear: in STD_LOGIC;
	Q: out STD_LOGIC_VECTOR (3 DOWNTO 0);
	R: out STD_LOGIC_VECTOR(7 DOWNTO 0);
	TC: out STD_LOGIC
	);
	
end Contador;
architecture arq_Contador of Contador is

component CountUp
	port(
		D: in STD_LOGIC_VECTOR (3 DOWNTO 0);
		CLK: in STD_LOGIC;
		CE: in STD_LOGIC;
		PL: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (3 DOWNTO 0);
		TC: out STD_LOGIC
	);
end component;

component decoderHex
	port (
		A: in std_logic_vector(3 downto 0);		
		clear : in std_logic;
		HEX0 : out std_logic_vector(7 downto 0)
	);	
end component;

component clkDIV

	port (
		clk_in: in std_logic;
		clk_out: out std_logic
	);
end component;

signal signalClkDiv: STD_LOGIC;
signal signalCountUp: STD_LOGIC_VECTOR(3 downto 0);
	
begin

	UclkDIV: clkDIV port map(
		clk_in => CLK,
		clk_out => signalClkDiv
	);
	
	UCountUp: CountUp port map(
		D => D,
		CLK => signalClkDiv,
		CE => CE,
		PL => PL,
		Q => signalCountUp,
		TC => TC
	);
	
	UdecoderHEX: decoderHEX port map(
		A => signalCountUp,
		clear => clear,
		HEX0 => R
	);	
	
	Q <= signalCountUp;
	
end arq_Contador;