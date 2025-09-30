library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AdderN is
	generic(N : positive := 8);
	port(input0 : in std_logic_vector(N-1 downto 0); 
		input1 : in std_logic_vector(N-1 downto 0);
		s : out std_logic_vector(N-1 downto 0));
end AdderN;

architecture Behavioral of AdderN is 
	signal s_a, s_b, s_s : unsigned(N-1 downto 0);
begin
	s_a <= /*'0' &*/ unsigned(input0); -- '0's para capturar o cout do
	s_b <= /*'0' &*/ unsigned(input1); -- do bit mais significativo
	s_s <= (s_a + s_b);
	
	s <= std_logic_vector(s_s(N-1 downto 0));
end Behavioral;