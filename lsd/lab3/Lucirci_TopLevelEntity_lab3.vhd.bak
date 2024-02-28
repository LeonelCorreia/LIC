entity LUcirc is
port(X, Y : in STD_LOGIC_VECTOR(3 downto 0);
	S : in STD_LOGIC;
	R : out STD_LOGIC_VECTOR(3 downto 0)
);
end LUcirc;
architecture arq_LUcirc of LUcirc is
component ORL4
	port(A : in STD_LOGIC_VECTOR(3 downto 0);
			B : in STD_LOGIC_VECTOR(3 downto 0);
			O : out STD_LOGIC_VECTOR(3 downto 0));
end component;
component XNORL4
		port(A : in STD_LOGIC_VECTOR(3 downto 0);
				B : in STD_LOGIC_VECTOR(3 downto 0);
				O : out STD_LOGIC_VECTOR(3 downto 0));
end component;
component MUX4
		port(A : in STD_LOGIC_VECTOR(3 downto 0);
				B : in STD_LOGIC_VECTOR(3 downto 0);
				sel : in std_logic;
				O : out STD_LOGIC_VECTOR(3 downto 0));
end component
SIGNAL sa, sx : std_logic_vector(3 downto 0);
BEGIN 
UORL4: ORL4 port map (
	A => X,
	B => Y,
	O => sa ) ;
UXNORL4: XNORL4 port map(
	A => X;
	B => Y,
	O => sx ) ;
UMUX4: MUX4 port map (
	A => sa,
	B => sx 
	sel => S
	O => R) ;
end arq_Lucirc;