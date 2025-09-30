library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter is
    generic(
        WIDTH : natural := 4
    );
    port(
        clk : in std_logic;
        reset : in std_logic;
        cntOut : out std_logic_vector(WIDTH - 1 downto 0)
    );
end entity Counter;

architecture Behavioral of Counter is
    signal count : unsigned(WIDTH - 1 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= (others => '0');
        elsif rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;
    
    cntOut <= std_logic_vector(count);
end architecture Behavioral;
