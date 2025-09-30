library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity TimerN is
	generic( N : positive := 8);
	port(clk : in std_logic; 
		reset : in std_logic;
		enable : in std_logic;
		start : in std_logic;
		TimerOut : out std_logic); 
end TimerN;

architecture Behavioral of TimerN is
	signal s_count : integer := 0;
begin
	assert (N >= 2);
	process(clk) 
	begin 
		if (rising_edge(clk)) then
--reset tem mais prioridade do que o enable
			if (reset = '1') then
				TimerOut <= '0';
				s_count <= 0;
				
			elsif (enable = '1') then
				if (s_count = 0) then
					if (start = '1') then
						s_count <= s_count + 1;
					end if;
					Timerout <= '0';
				else
					if (s_count = (N - 1)) then
						TimerOut <= '1';
						s_count <= 0;
					else
						TimerOut <= '0';
						s_count <= s_count + 1;
					end if;
				end if; 
			end if;
		end if;
	end process;
end Behavioral;