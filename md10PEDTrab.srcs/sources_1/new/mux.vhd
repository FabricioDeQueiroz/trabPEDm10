library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux is
    Port ( entA : in STD_LOGIC_VECTOR(3 downto 0);
           entB : in STD_LOGIC_VECTOR(3 downto 0);
           sel : in STD_LOGIC;
           saida : inout STD_LOGIC_VECTOR(3 downto 0));
end mux;

architecture Behavioral of mux is

begin
    
    with sel select
        saida <= entA when '1',
                 entB when '0',
                 "1110" when others;
    

end Behavioral;
