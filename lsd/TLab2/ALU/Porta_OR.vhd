	LIBRARY IEEE;
use IEEE.std_logic_1164.all;
entity Porta_OR is
port(A : in STD_LOGIC_VECTOR(3 downto 0);
B : in STD_LOGIC_VECTOR(3 downto 0);
O : out STD_LOGIC_VECTOR(3 downto 0)
);
end Porta_OR;
architecture arq_Porta_OR of Porta_OR is
begin
O <= A OR not B;
end arq_Porta_OR;