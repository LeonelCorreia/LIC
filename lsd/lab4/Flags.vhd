LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Flags is
	port(
	A3 : in STD_LOGIC;
	B3 : in STD_LOGIC;
	iCBo : in STD_LOGIC;
	R3 : in STD_LOGIC;
	OV: out STD_LOGIC;
	oCBo: out STD_LOGIC
	);
end Flags;
architecture arq_Flags of Flags is
begin

OV <= A3 XOR B3 XOR ICBo XOR R3;

oCBo <= iCBo;

end arq_Flags;