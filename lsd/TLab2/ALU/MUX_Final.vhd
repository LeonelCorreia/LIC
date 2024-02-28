LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX_Final is
	port(
	A: in STD_LOGIC_VECTOR(3 downto 0);
	B: in STD_LOGIC_VECTOR(3 downto 0);
	Sel: in STD_LOGIC;
	R: out STD_LOGIC_VECTOR(3 downto 0)
	);
end MUX_Final;
architecture arq_MUX_Final of MUX_Final is
begin

R(0) <= (Not sel and A(0)) or (sel and B(0));

R(1) <= (Not sel and A(1)) or (sel and B(1));

R(2) <= (Not sel and A(2)) or (sel and B(2));

R(3) <= (Not sel and A(3)) or (sel and B(3)
);
end arq_MUX_Final;