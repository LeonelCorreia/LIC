LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity keyscan is
port(		  MR : in STD_LOGIC;
			  Kscan : in STD_LOGIC;
			  CLK : in STD_LOGIC;
			  MuxIn : in STD_LOGIC_VECTOR(3 downto 0);
			  DecOut : out STD_LOGIC_VECTOR(2 downto 0);
			  Kout : out STD_LOGIC_VECTOR(3 downto 0);
			  Kpress : out STD_LOGIC);
end keyscan;

architecture structural of keyscan is

component MUX4_1
port(A : in STD_LOGIC_VECTOR(3 downto 0);
			  S : in STD_LOGIC_VECTOR(1 downto 0);
			  R : out STD_LOGIC);
end component;

component Decoder
port(
 S : in STD_LOGIC_VECTOR(1 downto 0);
 O : out STD_LOGIC_VECTOR(3 downto 0)
 );
end component;

component Countup
port ( CLK : in std_logic;
		 D : in std_logic_vector(3 downto 0);
		 Q : out std_logic_vector(3 downto 0);
		 CE : in std_logic;
		 MR : in std_logic;
		 TC : out std_logic);
end component;

signal muxS0 : std_logic;
signal muxS1 : std_logic;
signal decS0 : std_logic;
signal decS1 : std_logic;
signal decCol0 : std_logic;
signal decCol1 : std_logic;
signal decCol2 : std_logic;
signal clksignal : std_logic;
signal signalKpress : std_logic;



begin

MUX: MUX4_1 port map ( 
	A(0) => MuxIn(0),
	A(1) => MuxIn(1),
	A(2) => MuxIn(2),
	A(3) => MuxIn(3),
	S(0) => muxS0,
	S(1) => muxS1,
	R => signalKpress
);

Dec: Decoder port map (
	S(0) => decS0,
	S(1) => decS1,
	O(0) => decCol0,
	O(1) => decCol1,
	O(2) => decCol2
);

Cont : Countup port map (
	CLK => CLK,
	D => "0000",
	Q(0) => muxS0,
	Q(1) => muxS1,
	Q(2) => decS0,
	Q(3) => decS1,
	MR => MR,
	CE => Kscan
);
DecOut(0) <= Not decCol0;
DecOut(1) <= Not decCol1;
DecOut(2) <= Not decCol2;
Kout(0) <= decS0;
Kout(1) <= decS1;
Kout(2) <= muxS0;
Kout(3) <= muxS1;
Kpress <= Not signalKpress;

end architecture;
