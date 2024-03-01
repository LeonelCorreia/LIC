library ieee;
use ieee.std_logic_1164.all;

entity MUX2_1_4 is
 port(
 I0, I1: in std_logic_vector (3 downto 0);
 S: in std_logic;
 O : out std_logic_vector (3 downto 0)
 );		
end MUX2_1_4;

architecture logicFunction of MUX2_1_4 is
begin
	O(0) <= (not S and I0(0)) or (S and I1	(0));
	O(1) <= (not S and I0(1)) or (S and I1(1));
	O(2) <= (not S and I0(2)) or (S and I1(2));
	O(3) <= (not S and I0(3)) or (S and I1(3));
end logicFunction;