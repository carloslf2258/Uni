LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MaqVenda IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        C : IN STD_LOGIC := '0';
        V : IN STD_LOGIC := '0';
        Abrir : OUT STD_LOGIC
    );
END MaqVenda;

ARCHITECTURE BEHAVIOR OF MaqVenda IS
    TYPE type_fstate IS (E0,E1,E2,E3);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,C,V)
    BEGIN
		Abrir <= '0';
        IF (reset='1') THEN
            reg_fstate <= E0;
            
        ELSE
            
            CASE fstate IS
                WHEN E0 =>
                    IF (((V = '1') AND (C = '0'))) THEN
                        reg_fstate <= E1;
                    ELSIF ((C = '1')) THEN
                        reg_fstate <= E2;
                    ELSIF (((V = '0') AND (C = '0'))) THEN
                        reg_fstate <= E0;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= E0;
                    END IF;

                    
                WHEN E1 =>
                    IF (((V = '1') AND (C = '0'))) THEN
                        reg_fstate <= E2;
                    ELSIF ((C = '1')) THEN
                        reg_fstate <= E3;
                    ELSIF (((V = '0') AND (C = '0'))) THEN
                        reg_fstate <= E1;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= E1;
                    END IF;

                    
                WHEN E2 =>
                    IF (((V = '1') OR (C = '1'))) THEN
                        reg_fstate <= E3;
                    ELSIF (((V = '0') AND (C = '0'))) THEN
                        reg_fstate <= E2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= E2;
                    END IF;

                    
                WHEN E3 =>
                    reg_fstate <= E0;

                    Abrir <= '1';
                WHEN OTHERS => 
                    Abrir <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
