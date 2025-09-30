library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port( clk : in std_logic;
			reset : in STD_LOGIC := '0';
			Xin : in std_logic;
			Yout : out std_logic
			);
end SeqDetFSM;

ARCHITECTURE Behavioral OF SeqDetFSM IS
	type state is (A, B, C, D);
   signal PS, NS : state;
begin
	sync_proc: process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				PS <= A;
			else
				PS <= NS;
			end if;
		end if;
	end process;

	comb_proc : process(PS, Xin)
	begin
		Yout <= '0'; -- Frequent output value
		case PS is
		when A => 
			if (Xin = '1') then NS <= B;
			else NS <= A;
			end if;
		when B => 
		if (Xin = '0') then NS <= C;
		else NS <= B;
		end if;

		when C => 
		if (Xin = '1') then NS <= B;
		else NS <= D;
		end if;

		when D => 
		if (Xin = '0') then
			NS <= A;
		else
		Yout <= '1'; -- Mealy output
		NS <= B;
		end if;

		when others => -- Catch all condition
			NS <= A;
		end case;
	end process;
	
end Behavioral;