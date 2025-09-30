library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port( clk : in std_logic;
			reset : in STD_LOGIC := '0';
			Xin : in std_logic;
			Yout : out std_logic
			);
end SeqDetector;