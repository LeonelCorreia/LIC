LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity semi_Adder is
	port(
	A: in STD_LOGIC;
	B: in STD_LOGIC;
	CBi: in STD_LOGIC;
	S : out STD_LOGIC;
	CBo : out STD_LOGIC);
end semi_Adder;
architecture arq_semi_Adder of semi_Adder is
begin

S <= A XOR B XOR CBi;

CBo <=  A AND B;

end arq_semi_Adder;