library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit is
	port
	(	dataIn   : in  std_logic_vector(7 downto 0);
		loadEn, rotate, dirLeft, shArith : in  std_logic;
		shAmount : in  std_logic_vector(2 downto 0);
		dataOut  : out std_logic_vector(7 downto 0)
	);
end CombShiftUnit;

architecture Behavioral of CombShiftUnit is
	signal s_shiftReg : std_logic_vector(7 downto 0);
begin
	process(dataIn)
	begin
		if (loadEn = '1') then
			s_shiftReg <= datain;
		--Rotações
		elsif (rotate = '1') then 
			if (dirleft = '1') then 
				s_shiftReg <= std_logic_vector( rotate_left ( unsigned(s_shiftReg), to_integer(unsigned(shAmount)) ) );
			else 
				s_shiftReg <= std_logic_vector( rotate_right( unsigned(s_shiftReg), to_integer(unsigned(shAmount)) ) ); 
			end if;
		--Shift Aritmético
		elsif (shArith = '1') then
			if (dirLeft = '1') then
				s_shiftReg <= std_logic_vector(SHIFT_LEFT(signed(s_shiftReg), to_integer(unsigned(shAmount)) ) );
			else
				s_shiftReg <= std_logic_vector(SHIFT_RIGHT(signed(s_shiftReg), to_integer(unsigned(shAmount)) ) );
			end if;
		--Shift Lógico
		else
			if (dirleft = '1') then 
					s_shiftReg <= std_logic_vector( shift_left (  unsigned(s_shiftReg), to_integer(unsigned(shAmount)) ) ); 
				else 
					s_shiftReg <= std_logic_vector( shift_right(  unsigned(s_shiftReg), to_integer(unsigned(shAmount)) ) ); 
				end if;
			end if;
		end if;
	end process;
	
	dataOut <= s_shiftReg;
end Behavioral;