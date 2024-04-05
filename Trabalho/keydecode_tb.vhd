library IEEE;
use IEEE.std_logic_1164.all;

entity keydecode_tb is
end entity;

architecture keydecode_tb_arc of keydecode_tb is

component keydecode
port(		  MR : in STD_LOGIC;
			  CLK : in STD_LOGIC;
			  KLine: in std_logic_vector(3 downto 0);
			  Kack: in std_logic;
			  KCol: out std_logic_vector(2 downto 0);
			  Kout : out STD_LOGIC_VECTOR(3 downto 0);
			  Kval : out STD_LOGIC
);
end component;

-- UUT signals

signal MR_TB : STD_LOGIC;
signal CLK_TB : std_logic := '0';
signal MUXIN_TB : STD_LOGIC_VECTOR(3 downto 0);
signal DEC_TB : STD_LOGIC_VECTOR(2 downto 0);
signal KACK_TB : STD_LOGIC;
signal KOUT_TB : STD_LOGIC_VECTOR(3 downto 0);
signal KVAL_TB : STD_LOGIC;
constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
constant CLK_PERIOD : time := 20 ns;

begin 

	CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
	UKEYDECODE : keydecode port map(
			MR => MR_TB,
			CLK => CLK_TB,
			KLine => MUXIN_TB,
			Kack => KACK_TB,
			KCol => DEC_TB,
			Kout => KOUT_TB,
			Kval => KVAL_TB
	);		
	
	stimulus: process
	begin
	-- Incia o teste  verificando que nenhuma tecla está premida
	-- STATE_INIT
	MR_TB <= '1';
	KACK_TB <= '0';
	MUXIN_TB <= "0000";
	wait for CLK_PERIOD;
	
	MR_TB <= '0';
	wait for 9 * CLK_PERIOD;
	
	-- Incia o teste  verificando a tecla de coordenadas (1,0) -- acho que esta a ver (0,2)
	-- STATE_PRESS
	MUXIN_TB <= "0010";
	wait for 2 * CLK_PERIOD;
	
	-- Kpress ativo, waiting Kack
	-- STATE_ACK_PRESS
	KACK_TB <= '1';
	wait for 2 * CLK_PERIOD;
	
	-- STATE_WAIT
	KACK_TB <= '0';
	wait for 2 * CLK_PERIOD;
	
	-- STATE_INIT
	MUXIN_TB <= "0000";
	wait for 1 * CLK_PERIOD;

	-- Verifica se a tecla que se está a clicar neste caso (1,1)
	-- STATE_PRESS
	MUXIN_TB <= "1000";
	wait  for 14 * CLK_PERIOD;
	
	-- STATE_ACK_PRESS
	KACK_TB <= '1';
	wait for 3 * CLK_PERIOD;

	-- STATE_WAIT
	KACK_TB <= '0';
	wait for 2 * CLK_PERIOD;
	
	-- STATE_INIT
	MUXIN_TB <= "0000";
	wait for 2.5 * CLK_PERIOD;
	
	
wait;

end process;

end architecture;
	