	LIBRARY IEEE;
use IEEE.std_logic_1164.all;
entity Porta_ASR is
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end Porta_ASR;
architecture arq_Porta_ASR of Porta_ASR is

component Mux4_1
  	port(
	A : in STD_LOGIC_VECTOR(3 downto 0);
	sel : in std_logic_vector(1 downto 0);
	O : out STD_LOGIC);
end component;

begin
	
	UMux_4_1_1: Mux4_1 port map(
		A => A,
		sel(0) => B(0),
		sel(1) => B(1),
		O => O(0)
	);
	UMux_4_1_2: Mux4_1 port map(
		A(0) => A(1),
		A(1) => A(2),
		A(2) => A(3),
		A(3) => A(3),
		sel(0) => B(0),
		sel(1) => B(1),
		O => O(1)
	);
	UMux_4_1_3: Mux4_1 port map(
		A(0) => A(2),
		A(1) => A(3),
		A(2) => A(3),
		A(3) => A(3),
		sel(0) => B(0),
		sel(1) => B(1),
		O => O(2)
	);
	UMux_4_1_4: Mux4_1 port map(
		A(0) => A(3),
		A(1) => A(3),
		A(2) => A(3),
		A(3) => A(3),
		sel(0) => B(0),
		sel(1) => B(1),
		O => O(3)
	);
	end arq_Porta_ASR;