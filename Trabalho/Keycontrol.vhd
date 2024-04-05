LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Keycontrol is
port(
	reset: in std_logic;
	clk: in std_logic;
	Kack: in std_logic;
	Kpress: in std_logic;
	Kval: out std_logic;
	Kscan: out std_logic
);

end Keycontrol;

architecture behavioral of Keycontrol is

type STATE_TYPE is (STATE_INIT, STATE_PRESS, STATE_ACK_PRESS, STATE_WAIT);

signal CurrentState, NextState: STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_INIT when RESET = '1' else NextState when rising_edge(clk);

-- Generate Next State
GenerateNextState:
process(CurrentState, Kack, Kpress)
	begin
		case CurrentState is
			when STATE_INIT	=> if(Kpress = '1') then
											NextState <= STATE_PRESS;
										else
											NextState <= STATE_INIT;
										end if;
										
			when STATE_PRESS	=> if(Kack = '1') then
											NextState <= STATE_ACK_PRESS;
										else
												NextState <= STATE_PRESS;
										end if;
										
			when STATE_ACK_PRESS =>	if(Kack ='0') then
												NextState <= STATE_WAIT;
											else NextState <= STATE_ACK_PRESS;
											end if;
											
			when STATE_WAIT => if(Kpress = '0') then
												NextState <= STATE_INIT;
									 else NextState <= STATE_WAIT;
									 end if;
											
		end case;
	end process;
	
-- Generate outputs
Kval <= '1' when (CurrentState = STATE_PRESS) else '0';

kscan <= '1' when (CurrentState = STATE_INIT and Kpress = '0') else '0';

end behavioral;