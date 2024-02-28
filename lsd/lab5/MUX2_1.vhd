LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX2_1 is
	port(
	A: in STD_LOGIC;
	B: in STD_LOGIC;
	sel: in STD_LOGIC;
	R: out STD_LOGIC);
end MUX2_1;
architecture arq_MUX2_1 of MUX2_1 is
begin

R <= (not sel and A) or (sel and B);

end arq_MUX2_1;