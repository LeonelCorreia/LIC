LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity PEnc_4_2 is
	port(
	I0 : in STD_LOGIC;
	I1 : in STD_LOGIC;
	I2 : in STD_LOGIC;
	I3 : in STD_LOGIC;
	O : out std_logic_vector(1 downto 0);
	V : out STD_LOGIC);
end PEnc_4_2;
architecture arq_PEnc_4_2 of PEnc_4_2 is
begin


O(0) <= I3 or (not I2 and I1);


O(1) <= I3 or I2;

V <= I3 or I2 or I1 or I0;

end arq_PEnc_4_2;