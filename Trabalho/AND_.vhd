library ieee;
use ieee.std_logic_1164.all;

entity Reset_signal_Enable is
 port(
 I0, I1: in std_logic;
 O : out std_logic
 );		
end Reset_signal_Enable;

architecture arc_Reset_signal_Enable of Reset_signal_Enable is
begin
	O <= I0 and I1;
end arc_Reset_signal_Enable;