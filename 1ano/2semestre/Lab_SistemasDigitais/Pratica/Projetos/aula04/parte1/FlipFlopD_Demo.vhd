library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopD_Demo is 
 port(SW : in std_logic_vector(2 downto 0); 
		KEY : in std_logic_vector(0 downto 0); 
		LEDR : out std_logic_vector(0 downto 0)); 
end FlipFlopD_Demo;
 
architecture Shell of FlipFlopD_Demo is 
begin 
	ff_d : work.FlipFlopD(Behavioral) 
				port map(clk => KEY(0),
							dataIn => SW(0), 
							reset => SW(1), 
							enable => SW(2), 
							dataOut => LEDR(0)); 
end Shell;

