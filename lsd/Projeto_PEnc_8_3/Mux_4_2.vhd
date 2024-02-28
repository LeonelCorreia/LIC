LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Mux_4_2 is
	port(
	PEnc1 : in STD_LOGIC_VECTOR(1 downto 0);
	PEnc2 : in STD_LOGIC_VECTOR(1 downto 0);
	sel : in std_logic;
	R : out STD_LOGIC_VECTOR(1 downto 0));

end Mux_4_2;
architecture arq_Mux_4_2 of Mux_4_2 is

begin

R(1) <= (Not sel and PEnc2(0)) or (sel and PEnc2(1));

R(0) <= (Not sel and PEnc1(0)) or (sel and PEnc1(1));


end arq_Mux_4_2;