LIBRARY IEEE;
use IEEE.std_logic_1164.all;
entity PEnc_8_3 is

 	port(
	I0,I1,I2,I3,I4,I5,I6,I7:in STD_LOGIC;
	O:out STD_LOGIC_VECTOR(2 downto 0);
	V:out std_logic);
end PEnc_8_3;

architecture ARQ_PEnc_8_3 of PEnc_8_3 is
component PEnc_4_2
  port(
	I0 : in STD_LOGIC;
	I1 : in STD_LOGIC;
	I2 : in STD_LOGIC;
	I3 : in STD_LOGIC;
	O : out std_logic_vector(1 downto 0);
	V : out STD_LOGIC);
end component;

component Mux_4_2
	port(
	PEnc1 : in STD_LOGIC_VECTOR(1 downto 0);
	PEnc2 : in STD_LOGIC_VECTOR(1 downto 0);
	sel : in std_logic;
	R : out STD_LOGIC_VECTOR(1 downto 0));
end component;

signal o1, o2 : std_logic_vector(1 downto 0);
signal v1, v2 : std_logic ;
signal falso : std_logic := '0';
signal saidaPenc3 : std_logic;
signal nInteressa: std_logic;

begin

	UPEnc_4_2_1: PEnc_4_2 port map (
	I0 => I0,
	I1 => I1,
	I2 => I2,
	I3 => I3,
	O(0) => o1(0),
	O(1) => o1(1),
	V => v1
         );
		
	UPEnc_4_2_2: PEnc_4_2 port map (
	I0 => I4,
	I1 => I5,
	I2 => I6,
	I3 => I7,
	O(0) => o2(0),
	O(1) => o2(1),
	V => v2
		);
	

	UPEnc_4_2_3: PEnc_4_2 port map (
	I0 => v1,
	I1 => v2,
	I2 => falso,
	I3 => falso,
	O(0) => saidaPenc3,
	O(1) => nInteressa,
	V => V
		);
	
	UMux_4_2 : Mux_4_2 port map(
	PEnc1 => o1,
	PEnc2 => o2,
	sel => saidaPenc3,
	R(0) => O(0), 
	R(1) => O(1)
	);	

	O(2) <= saidaPenc3;
end ARQ_PEnc_8_3;