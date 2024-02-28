	LIBRARY IEEE;
use IEEE.std_logic_1164.all;
entity MUX4_1 is
port(A : in STD_LOGIC_VECTOR(3 downto 0);
sel : in std_logic_vector(1 downto 0);
O : out STD_LOGIC
);
end MUX4_1;
architecture arq_MUX4_1 of MUX4_1 is
begin
O <= (Not sel(0) and Not sel(1) and A(0)) or (sel(0) and Not sel(1) and A(1)) or (Not sel(0) and sel(1) and A(2)) or ( sel(0) and sel(1) and A(3));
end arq_MUX4_1;