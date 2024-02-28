LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Adder_Subtractor is
	port( 
	A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	OPau: in STD_LOGIC;
	CBi: in STD_LOGIC;
	PassB3: out STD_LOGIC;
	CBo: out STD_LOGIC;
	S: out STD_LOGIC_VECTOR(3 downto 0));
end Adder_Subtractor;

architecture arq_Adder_Subtractor of Adder_Subtractor is

component Full_Adder
	port( 
	A: in STD_LOGIC_VECTOR (3 downto 0);
	B: in STD_LOGIC_VECTOR (3 downto 0);
	C0: in STD_LOGIC;
	C4: out STD_LOGIC;
	S: out STD_LOGIC_VECTOR (3 downto 0));

end component;

component XORs
	port(
	I0 : in STD_LOGIC;
	I1 : in STD_LOGIC;
	S : out STD_LOGIC);

end component;

signal Bxor: STD_LOGIC_VECTOR (3 downto 0);
signal C4f: STD_LOGIC;
signal C0i: STD_LOGIC;

begin
		UXORs_1: XORs port map(
	I0 => OPau,
	I1 => CBi,
	S => C0i
		);
	UXORs_2: XORs port map(
	I0 => OPau,
	I1 => B(0),
	S => Bxor(0)
		);
	UXORs_3: XORs port map(
	I0 => OPau,
	I1 => B(1),
	S => Bxor(1)
		);
	UXORs_4: XORs port map(
	I0 => OPau,
	I1 => B(2),
	S => Bxor(2)
		);
	UXORs_5: XORs port map(
	I0 => OPau,
	I1 => B(3),
	S => Bxor(3)
		);
	UXORs_6: XORs port map(
	I0 => OPau,
	I1 => C4f,
	S => CBo
		);
	UFull_Adder: Full_Adder port map(
	A(0) => A(0),
	A(1) => A(1),
	A(2) => A(2),
	A(3) => A(3),
	B(0) => Bxor(0),
	B(1) => Bxor(1),
	B(2) => Bxor(2),
	B(3) => Bxor(3),
	C0 => C0i,
	C4 => C4f,
	S(0) => S(0),
	S(1) => S(1),
	S(2) => S(2),
	S(3) => S(3)
		);

	PassB3 <= Bxor(3);

end arq_Adder_Subtractor;