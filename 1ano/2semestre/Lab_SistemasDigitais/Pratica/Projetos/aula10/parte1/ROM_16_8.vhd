library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
    port(
        address : in std_logic_vector(3 downto 0);
        dataOut : out std_logic_vector(7 downto 0)
    );
end entity ROM_16_8;

architecture Behavioral of ROM_16_8 is
    subtype TDataWord is std_logic_vector(7 downto 0);
    type TROM is array (0 to 15) of TDataWord;
    constant c_memory : TROM := (
        x"00", x"01", x"02", x"03",
        x"04", x"05", x"06",
        x"07", x"08", x"09",
        x"0A", x"0B", x"0C",
        x"0D", x"0E", x"0F"
    );

    signal s_address : std_logic_vector(3 downto 0);
    signal s_dataOut : std_logic_vector(7 downto 0);
    signal s_clk : std_logic := '0';
    signal s_reset : std_logic := '0';

    component Counter is
        generic(
            WIDTH : natural := 4
        );
        port(
            clk : in std_logic;
            reset : in std_logic;
            cntOut : out std_logic_vector(WIDTH - 1 downto 0)
        );
    end component Counter;

begin
    addr_counter : Counter generic map(WIDTH => 4)
        port map(
            clk => s_clk,
            reset => s_reset,
            cntOut => s_address
        );

    dataOut <= c_memory(to_integer(unsigned(s_address)));

    -- Restante do seu código...
end architecture Behavioral;
