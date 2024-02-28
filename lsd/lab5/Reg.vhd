LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Reg is

	port(
	D: in STD_LOGIC_VECTOR (3 DOWNTO 0);
	CLK: in STD_LOGIC;
	Q: out STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	
end Reg;
architecture arq_Reg of Reg is
component FFD
	port(
		CLK : in std_logic;
		RESET : in STD_LOGIC;
		SET : in std_logic;
		D : IN STD_LOGIC;
		EN : IN STD_LOGIC;
		Q : out std_logic
	);
end component;
begin

	UFFD_0: FFD port map (
		CLK => CLK,
		RESET => '0',
		SET => '0',
		D => D(0),
		EN => '1',
		Q => Q(0)
			);
	UFFD_1: FFD port map (
		CLK => CLK,
		RESET => '0',
		SET => '0',
		D => D(1),
		EN => '1',
		Q => Q(1)
			);
	UFFD_2: FFD port map (
		CLK => CLK,
		RESET => '0',
		SET => '0',
		D => D(2),
		EN => '1',
		Q => Q(2)
			);
	UFFD_3: FFD port map (
		CLK => CLK,
		RESET => '0',
		SET => '0',
		D => D(3),
		EN => '1',
		Q => Q(3)
			);

end arq_Reg;