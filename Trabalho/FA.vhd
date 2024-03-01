library ieee;
use ieee.std_logic_1164.all;

entity FA is
	port
	(
	A  : in std_logic;
	B  : in std_logic;
	Ci : in std_logic;
	S  : out std_logic;
	Co : out std_logic
	);
end FA;

architecture structural of FA is

begin

 S <= A XOR B XOR Ci ;
 Co <= (A AND B) OR (Ci AND A) OR (Ci AND B) ;

end structural;