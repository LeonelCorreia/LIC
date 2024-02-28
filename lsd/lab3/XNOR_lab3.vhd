	LIBRARY IEEE;
use IEEE.std_logic_1164.all;
entity XNORL4 is
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end XNORL4;
architecture arq_xnorl4 of XNORL4 is
begin
O(0) <= A(0) xnor B(0);
O(1) <= A(1) xnor B(1);
O(2) <= A(2) xnor B(2);
O(3) <= A(3) xnor B(3);
end arq_xnorl4;