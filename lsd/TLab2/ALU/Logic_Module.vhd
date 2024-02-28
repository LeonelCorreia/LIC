	LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Logic_Module is

port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
Op: in STD_LOGIC_VECTOR(1 downto 0);
R : out STD_LOGIC_VECTOR(3 downto 0);
CY: out STD_LOGIC
);
end Logic_Module;

architecture arq_Logic_Module of Logic_Module is

component Porta_OR
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end component;
component Porta_XNOR 
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end component;
component Porta_LSR
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end component;
component Porta_ASR
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end component;
component MUX4_1
port(A : in STD_LOGIC_VECTOR(3 downto 0);
sel : in std_logic_vector(1 downto 0);
O : out STD_LOGIC
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

signal R_OR: STD_LOGIC_VECTOR(3 downto 0);
signal R_XNOR: STD_LOGIC_VECTOR(3 downto 0);
signal R_LSR: STD_LOGIC_VECTOR(3 downto 0);
signal R_ASR: STD_LOGIC_VECTOR(3 downto 0);
signal signalCY: STD_LOGIC_VECTOR (3 downto 0);

begin
	UPorta_OR: Porta_OR port map(
		A => A,
		B => B,
		O => R_OR
	);
	UPorta_XNOR: Porta_XNOR port map(
		A => A,
		B => B,
		O => R_XNOR
	);
	UPorta_LSR: Porta_LSR port map(
		A => A,
		B => B,
		O => R_LSR
	);
	UPorta_ASR: Porta_ASR port map(
		A => A,
		B => B,
		O => R_ASR
	);
	UMUX4_1_1: MUX4_1 port map(
		A(0) => R_LSR(0),
		A(1) => R_ASR(0),
		A(2) => R_OR(0),
		A(3) => R_XNOR(0),		
		sel(0) => B(0),
		sel(1) => B(1),
		O => R(0)
	);
	UMUX4_1_2: MUX4_1 port map(
		A(0) => R_LSR(1),
		A(1) => R_ASR(1),
		A(2) => R_OR(1),
		A(3) => R_XNOR(1),		
		sel(0) => B(0),
		sel(1) => B(1),
		O => R(1)
	);
	UMUX4_1_3: MUX4_1 port map(
		A(0) => R_LSR(2),
		A(1) => R_ASR(2),
		A(2) => R_OR(2),
		A(3) => R_XNOR(2),		
		sel(0) => B(0),
		sel(1) => B(1),
		O => R(2)
	);
	UMUX4_1_4: MUX4_1 port map(
		A(0) => R_LSR(3),
		A(1) => R_ASR(3),
		A(2) => R_OR(3),
		A(3) => R_XNOR(3),		
		sel(0) => B(0),
		sel(1) => B(1),
		O => R(3)
	);
	UMUX4_1_CY_1: MUX4_1 port map(
		A(0) => '0',
		A(1) => '0',
		A(2) => A(0),
		A(3) => B(0),
		sel(0) => '0',		
		sel(1) => Op(1),
		O => signalCY(0)
	);
		UMUX4_1_CY_2: MUX4_1 port map(
		A(0) => '0',
		A(1) => '0',
		A(2) => A(1),
		A(3) => B(1),
		sel(0) => '0',
		sel(1) => Op(1),
		O => signalCY(1)
	);
		UMUX4_1_CY_3: MUX4_1 port map(
		A(0) => '0',
		A(1) => '0',
		A(2) => A(2),
		A(3) => B(2),
		sel(0) => '0',
		sel(1) => Op(1),
		O => signalCY(2)
	);
		UMUX4_1_CY_4: MUX_Final port map(
		A(0) => '0',
		A(1) => '0',
		A(2) => A(3),
		A(3) => B(3),
		sel(0) => '0',
		sel(1) => Op(1),
		O => signalCY(3)
	);
	UMUX4_1_9: MUX4_1 port map(
		A(0) => signalCY(0),
		A(1) => signalCY(1),
		A(2) => signalCY(2),
		A(3) => signalCY(3),		
		sel(0) => B(0),
		sel(1) => B(1),
		O => CY
	);
end arq_Logic_Module;