library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Decoder is
 port(
 S : in STD_LOGIC_VECTOR(1 downto 0);
 O : out STD_LOGIC_VECTOR(3 downto 0)
 );
end Decoder;
 
architecture arq_decoder of Decoder is
begin
 
O(0) <= not S(0) and not S(1);
O(1) <= S(0) and not S(1);
O(2) <= not S(0) and S(1);
O(3) <= S(0) and S(1);
 
end arq_decoder;