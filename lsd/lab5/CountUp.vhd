LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity CountUp is

	port(
	D: in STD_LOGIC_VECTOR (3 DOWNTO 0);
	CLK: in STD_LOGIC;
	CE: in STD_LOGIC;
	PL: in STD_LOGIC;
	Q: out STD_LOGIC_VECTOR (3 DOWNTO 0);
	TC: out STD_LOGIC
	);
	
end CountUp;
architecture arq_CountUp of CountUp is

component Reg
	port(
		D: in STD_LOGIC_VECTOR (3 DOWNTO 0);
		CLK: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
end component;
component Full_Adder
	port( 
		A: in STD_LOGIC_VECTOR (3 downto 0);
		B: in STD_LOGIC_VECTOR (3 downto 0);
		C0: in STD_LOGIC;
		C4: out STD_LOGIC;
		S: out STD_LOGIC_VECTOR (3 downto 0)
	);
end component;
component MUX2_1
	port(
		A: in STD_LOGIC;
		B: in STD_LOGIC;
		sel: in STD_LOGIC;
		R: out STD_LOGIC
	);
end component;
signal signalReg: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal signalAdder: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal signalMUX2_1: STD_LOGIC_VECTOR (3 DOWNTO 0);

begin
		
	UFull_Adder: Full_Adder port map(
		A(0) => '0',
		A(1) => '0',
		A(2) => '0',
		B => signalReg,
		C0 => '0',
		S => signalAdder
		);
		
	UMux2_1_0: MUX2_1 port map(
		A => signalAdder(0),
		B => D(0),
		sel => PL,
		R => signalMUX2_1(0)
	);
	UMux2_1_1: MUX2_1 port map(
		A => signalAdder(1),
		B => D(1),
		sel => PL,
		R => signalMUX2_1(1)
	);
	
	UMux2_1_2: MUX2_1 port map(
		A => signalAdder(2),
		B => D(2),
		sel => PL,
		R => signalMUX2_1(2)
	);
	
	UMux2_1_3: MUX2_1 port map(
		A => signalAdder(3),
		B => D(3),
		sel => PL,
		R => signalMUX2_1(3)
	);
	
	UReg: Reg port map (
		CLK => CLK,
		D => signalMUX2_1,
		Q => signalReg
		);
	Q <= signalReg;
	TC <= signalReg(0) and signalReg(1) and signalReg(2) and signalReg(3);
end arq_CountUp;