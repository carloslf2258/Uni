library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port( dataIn0 : in std_logic;
			dataIn1 : in std_logic;
			sel     : in std_logic;
			dataOut : out std_logic);
end Mux2_1;

architecture Behavioral of Mux2_1 is
begin
	dataOut <= dataIn0 when (sel = '0') else
					dataIn1 when (sel = '1') else
					'U'; --caso indefinido
end Behavioral;