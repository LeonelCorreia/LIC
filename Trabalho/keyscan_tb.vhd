library IEEE;
use IEEE.std_logic_1164.all;

entity keyscan_tb is
end entity;

architecture keyscan_tb_arc of keyscan_tb is

component keyscan
port(		  MR : in STD_LOGIC;
			  Kscan : in STD_LOGIC;
			  CLK : in STD_LOGIC;
			  MuxIn : in STD_LOGIC_VECTOR(3 downto 0);
			  DecOut : out STD_LOGIC_VECTOR(2 downto 0);
			  Kout : out STD_LOGIC_VECTOR(3 downto 0);
			  Kpress : out STD_LOGIC);
end component;

-- UUT signals

signal MR_TB : STD_LOGIC;
signal CLK_TB : std_logic := '0';
signal MUXIN_TB : STD_LOGIC_VECTOR(3 downto 0);
signal DEC_TB : STD_LOGIC_VECTOR(2 downto 0);
signal KSCAN_TB : STD_LOGIC;
signal KOUT_TB : STD_LOGIC_VECTOR(3 downto 0);
signal KPRESS_TB : STD_LOGIC;
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
constant CLK_PERIOD : time := 20 ns;

begin 

	CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
	UKEYSCAN : keyscan port map(
			MR => MR_TB,
			Kscan => KSCAN_TB,
			CLK => CLK_TB,
			MuxIn => MUXIN_TB,
			DecOut => DEC_TB,
			Kout => KOUT_TB,
			Kpress => KPRESS_TB
	);
	
	stimulus: process
	begin
	-- Incia o teste  verificando a tecla de coordenadas (0,0)
	KSCAN_TB <= '1';
	MUXIN_TB <= "0000";
	MR_TB <= '0';
	wait for 5 * CLK_PERIOD;
	
	-- Verifica se a tecla que se está a clicar neste caso (1,1)
	
	MUXIN_TB <= "0010";
	
	wait for 6 * CLK_PERIOD;
	-- Verificar a tecla (2,2)
	MUXIN_TB <= "0100";
	
	wait  for 5 * CLK_PERIOD;
	-- Verificar tecla (0,3)
	MUXIN_TB <= "1000";
	
	wait  for CLK_PERIOD;
	-- Primir duas teclas ao mesmo tempo
	MUXIN_TB <= "0011";
	wait  for CLK_PERIOD;
	
	KSCAN_TB <= '0';
	
wait;
		
		
end process;

end architecture;
	
	
	
	
	