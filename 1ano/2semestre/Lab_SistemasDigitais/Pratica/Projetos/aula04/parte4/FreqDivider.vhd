library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

--NÃO ACABADO
entity FreqDivider is 
	port(clkIn : in std_logic;
			reset : in std_logic;
			k : in std_logic_vector(31 downto 0); 
			clkOut : out std_logic); 
end FreqDivider;


architecture Behavioral of FreqDivider is 
	signal s_counter : unsigned(31 downto 0); 
	signal s_halfWay : unsigned(31 downto 0); 
begin 
	s_halfWay <= (unsigned(k) / 2); 
 
	process(clkIn) 
	begin 
		if (rising_edge(clkIn)) then 
 -- Complete o código 
			--if  ((reset = '1') or (s_counter = K-1)) then
				s_halfWay <= (others=> '0');
				s_counter <= (others=> '0');
			else
				if (s_counter = s_halfWay) then
					clkOut <= '1';
				end if;
				s_counter <= s_counter + 1;
			end if;
		
	
	--	end if; 
	clkOut <=  std_logic(s_halfWay);
	end process; 
end Behavioral; 