library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port(  decodedln : in std_logic_vector(3 downto 0);
			 encodedOut : out std_logic_vector(1 downto 0);	
			 validOut : out std_logic);
end PEnc4_2;

architecture Behavioral of PEnc4_2 is
begin
	process(decodedln)
	-- Variavel valid para validar a entrada
		variable valid : boolean := false;
	begin
		if (decodedln(3) = '1') then
			encodedOut <= "00";
			valid := true;
		elsif (decodedln(2) = '1') then
			encodedOut <= "01";
			valid := true;
		elsif (decodedln(1) = '1') then
			encodedOut <= "10";
			valid := true;
		else
			encodedOut <= "11";
		end if;
		
	--Este if é para validOut ser 1 ou 0 em função de valid
		if (valid = true) then
			validOut <= '1';
		else
			validOut <= '0';
		end if;
	
	--	validOut <= '1' when valid = true else '0';
	
	end process;
end Behavioral;
