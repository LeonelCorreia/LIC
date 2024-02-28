LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity UnidAritmet_test is
end UnidAritmet_test;

architecture tb of UnidAritmet_test is
component UnidAritmet port(
	CBi: in std_logic;
	A, B: in std_logic_vector(3 downto 0);
	OPau: in std_logic;
	R: out std_logic_vector(3 downto 0);
	CBo, OV: out std_logic);
end component;

signal CBi: std_logic;
signal A, B : std_logic_vector(3 downto 0);
signal OPau : std_logic;
signal R : std_logic_vector(3 downto 0);
signal CBo, OV : std_logic;

begin

U0 : UnidAritmet port map (CBi => CBi, A => A, B => B, OPau => OPau, 
		     R => R, CBo => CBo, OV => OV);

process
begin

 CBi <= '0';
 A <= "0000"; 
 B <= "0000"; 
 OPau <= '0';
 wait for 10 ns;
   CBi <= '1';
 A <= "0000"; 
 B <= "0000"; 
 OPau <= '0';
 wait for 10 ns;
 
  CBi <= '0';
 A <= "0000"; 
 B <= "0000"; 
 OPau <= '1';
 wait for 10 ns;
 
  CBi <= '0';
 A <= "0001"; 
 B <= "0001"; 
 OPau <= '0';
 wait for 10 ns;
 
  CBi <= '1';
 A <= "0001"; 
 B <= "0001"; 
 OPau <= '1';
 wait for 10 ns;
 
  CBi <= '0';
 A <= "1111"; 
 B <= "1111"; 
 OPau <= '0';
 wait for 10 ns;
 
  CBi <= '1';
 A <= "1111"; 
 B <= "1111"; 
 OPau <= '1';
 wait for 10 ns;
wait;

end process;

end tb;