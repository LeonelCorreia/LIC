Library IEEE;
use IEEE.std_logic_1164.all;

entity ShiftReg is

	port(
	
		Data: in STD_LOGIC;
		clk: in STD_LOGIC;
		Reset: in STD_LOGIC;
		En: in STD_LOGIC;
		
		D: out STD_LOGIC_VECTOR(4 downto 0)
	
	);

end ShiftReg;


architecture arq_shiftreg of ShiftReg is

	component FlipFlopD
	
		port(
	
			Clock: in STD_LOGIC;
			Reset: in STD_LOGIC;
			Set: in STD_LOGIC;
			D: in STD_LOGIC;
			Enable: in STD_LOGIC;
		
			Q: out STD_LOGIC
	);
	
	end component;

	signal s0, s1, s2, s3, s4: STD_LOGIC;


	begin

		UFlipFlopD0: FlipFlopD port map(
		
			Clock => clk,
			Reset => Reset,
			Set => '0',
			D => Data,
			Enable => En,
			Q => s4
		);
		
		UFlipFlopD1: FlipFlopD port map(
		
			Clock => clk,
			Reset => Reset,
			Set => '0',
			D => s4,
			Enable => En,
			Q => s3
		);
		
		UFlipFlopD2: FlipFlopD port map(
		
			Clock => clk,
			Reset => Reset,
			Set => '0',
			D => s3,
			Enable => En,
			Q => s2
		);
		
		UFlipFlopD3: FlipFlopD port map(
		
			Clock => clk,
			Reset => Reset,
			Set => '0',
			D => s2,
			Enable => En,
			Q => s1
		);
		
			UFlipFlopD4: FlipFlopD port map(

			Clock => clk,
			Reset => Reset,
			Set => '0',
			D => s1,
			Enable => En,
			Q => s0
		);
		
	D(0) <= s0;
	D(1) <= s1;
	D(2) <= s2;
	D(3) <= s3;
	D(4) <= s4;
		
end arq_shiftreg;