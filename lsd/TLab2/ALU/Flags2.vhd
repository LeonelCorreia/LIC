LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Flags2 is
	port(
	iOV : in STD_LOGIC;
	iCB : in STD_LOGIC;
	Op : in STD_LOGIC;
	R : in STD_LOGIC_VECTOR(3 downto 0);
	CY: in STD_LOGIC;
	oOV: out STD_LOGIC;
	oCB: out STD_LOGIC;
	oBE: out STD_LOGIC;
	oGE: out STD_LOGIC;
	oZ: out STD_LOGIC
	);
end Flags2;
architecture arq_Flags2 of Flags2 is
begin

oOV <= iOV;

oCB <= (not Op and CY) or (Op and iCB);

oZ <= not(R(0) or R(1) or R(2) or R(3));

oGE <= (NOT (iOV xor R(3))) OR (NOT (R(3) xor iOV)    AND NOT R(2) AND NOT R(1) AND NOT R(0));

oBE <= (R(3) AND iCB) OR (NOT R(3) AND iCB) OR (NOT R(3) AND NOT R(2) AND NOT R(1) AND NOT R(0));
end arq_Flags2;