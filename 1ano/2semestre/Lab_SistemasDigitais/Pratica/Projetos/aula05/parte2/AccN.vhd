library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity AccN is
	generic( N : positive := 8);
	port(clk : in std_logic; 
		reset : in std_logic;
		enable : in std_logic;
		dataIn : in std_logic_vector(N-1 downto 0);
		dataOut : out std_logic_vector(N-1 downto 0)); 
end AccN;

architecture Shell of AccN is
	 signal s_regOut : std_logic_vector(N-1 downto 0);
    signal s_adderOut : std_logic_vector(N-1 downto 0);
begin 
	AdderN : entity work.AdderN(Behavioral) 
	            generic map(N => N)
					port map(input0 => dataIN, 
								input1 => s_regOut, 
								s => s_adderOut);
								
	RegN : entity work.RegN(Behavioral) 
	            generic map(N => N)
					port map(clk => clk, 
								enable => enable, 
								reset => reset,
								dataIn => s_adderOut,
								dataOut => s_regOut);
	dataOut <= s_regOut;
	
end Shell;