LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX4_1 is
port(A : in STD_LOGIC_VECTOR(3 downto 0);
			  S : in STD_LOGIC_VECTOR(1 downto 0);
			  R : out STD_LOGIC);
end MUX4_1;

architecture arq_mux4_1 of mux4_1 is

begin
R <= (Not S(0) and not S(1) and A(0)) or (S(0) and not S(1) and A(1)) or (Not S(0) and S(1) and A(2)) or (S(0) and S(1) and A(3));
end arq_mux4_1;