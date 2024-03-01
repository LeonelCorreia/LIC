LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Full_Adder is
	port( 
	A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	C0: in STD_LOGIC;
	C4: out STD_LOGIC;
	S: out STD_LOGIC_VECTOR (3 downto 0));
end Full_Adder;
architecture arq_Full_Adder of Full_Adder is
component semi_Adder
	port(
	
	A: in STD_LOGIC;
	B: in STD_LOGIC;
	CBi : in STD_LOGIC;
	S : out STD_LOGIC;
	CBo : out STD_LOGIC);
end component;
	
signal C1, C2, C3: STD_LOGIC;

begin

	Usemi_Adder_1: semi_Adder port map (	
	B => B(0),
	A => A(0),
	CBi => C0,
	CBo => C1,
	S => S(0)
		);		
	Usemi_Adder_2: semi_Adder port map (
	B => B(1),
	A => A(1),
	CBi => C1,
	CBo => C2,
	S => S(1)
		);
		
	Usemi_Adder_3: semi_Adder port map (
	B => B(2),
	A => A(2),
	CBi => C2,
	CBo => C3,
	S => S(2)
		);
		
	Usemi_Adder_4: semi_Adder port map (
	B => B(3),
	A => A(3),
	CBi => C3,
	CBo => C4,
	S => S(3)
		);
	
end arq_Full_Adder;