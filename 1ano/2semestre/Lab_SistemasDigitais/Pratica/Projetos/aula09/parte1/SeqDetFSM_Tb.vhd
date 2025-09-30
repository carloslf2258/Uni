library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

ARCHITECTURE stimulus OF SeqDetFSM_Tb IS

	-- Sinais para ligar às entradas da UUT 
	signal s_clk : std_logic;
	signal s_reset : std_logic; 
	signal s_Xin : std_logic; 
 
	-- Sinal para ligar às saídas da UUT 
	signal s_Yout : std_logic;

BEGIN
	uut : ENTITY work.SeqDetFSM(Behavioral)
		PORT MAP(clk => s_clk,
					reset => s_reset,
					Xin => s_Xin,
					Yout => s_Yout);
	
	--Process clock
	clock_proc : process
	begin
		s_clk <= '0'; wait for 25 ns;
		s_clk <= '1'; wait for 40 ns;
	end process;

	--Process stim 
	stim_proc : process 
	begin
		s_reset <= '1';
		wait for 50 ns;
	--PROVA DE RESET (ir para A e voltar)
		wait for 50 ns; 
		s_Xin <= '0';
		wait for 50 ns; 
		s_reset <= '0';
		wait for 50 ns;	
		s_Xin <= '1'; 
		wait for 50 ns;
	--Avançar até D com algumas voltas
		wait for 50 ns;	
		s_Xin <= '1'; --Vai pra B
		wait for 50 ns;	
		s_Xin <= '0'; --Vai pra C
		wait for 50 ns;	
		s_Xin <= '1'; --Volta pra B
		wait for 50 ns;	
		s_Xin <= '0'; -- C
		wait for 50 ns;	
		s_Xin <= '0'; --D
		wait for 50 ns;	
		s_Xin <= '0'; -- Output = 1 e vai pra B
		
	end process; 
end Stimulus;