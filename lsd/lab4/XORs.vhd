	LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity XORs is
	port(
	I0 : in STD_LOGIC;
	I1 : in STD_LOGIC;
	S : out STD_LOGIC);
end XORs; 	
architecture arq_XORs of XORs is
begin 

S <= I0 XOR I1;

end arq_XORs;