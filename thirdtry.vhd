library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CRC3_6 is
    Port (
        Clk, Rst, Data_valid : in  std_logic; 
        Data_in   : in  std_logic_vector(37 downto 0);
        config    : in  std_logic_vector(2 downto 0);
        Crc_out   : out std_logic_vector (5 downto 0);
        Crc_valid : out std_logic 
    );
end CRC3_6;

architecture Behavioral of CRC3_6 is
    signal C0, C1, C2, C3, C4, C5 : std_logic;
    signal count : integer := 0;
begin

process(Clk, Rst)
begin
    if rising_edge(Clk) then
        if Rst = '1' then
            case config is
                when "001" | "010" | "011" =>  -- 3-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '1';
                    C2 <= '1';
                    Crc_valid <= '0';
                when "101" | "110" | "111" =>  -- 6-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '0';
                    C2 <= '1';
                    C3 <= '0';
                    C4 <= '1';
                    C5 <= '0';
                    Crc_valid <= '0';
                when others => 
            end case;
        elsif Data_valid = '1' then
            case config is
                when "001" =>
                    if(count<11) then
                        C0 <= Data_in(count) xor C2;
                        C1 <= C0 xor C2;
                        C2 <= C1;
                         count<=count+1;
  		
		else
		count<=0;
		case config is
                when "001" | "010" | "011" =>  -- 3-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '1';
                    C2 <= '1';
                    Crc_valid <= '0';
                when "101" | "110" | "111" =>  -- 6-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '0';
                    C2 <= '1';
                    C3 <= '0';
                    C4 <= '1';
                    C5 <= '0';
                    Crc_valid <= '0';
                when others => 
            end case;                  

		 end if;
                  
               

                when "010" =>
                    if(count<19) then
                        C0 <= Data_in(count) xor C2;
                        C1 <= C0 xor C2;
                        C2 <= C1;
                       count<=count+1 ;
                    end if;

              

                when "011" =>
                      if(count<35) then
                        C0 <= Data_in(count) xor C2;
                        C1 <= C0 xor C2;
                        C2 <= C1;
                        count<=count+1 ;
                   
                    else
		count<=0;
		case config is
                when "001" | "010" | "011" =>  -- 3-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '1';
                    C2 <= '1';
                    Crc_valid <= '0';
                when "101" | "110" | "111" =>  -- 6-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '0';
                    C2 <= '1';
                    C3 <= '0';
                    C4 <= '1';
                    C5 <= '0';
                    Crc_valid <= '0';
                when others => 
            end case;                  



                        end if;
                

                when "101" =>
                    if(count<14) then
                        C0 <= Data_in(count) xor C5;
                        C1 <= C0;
                        C2 <= C1;
                        C3 <= C2 xor C5;
                        C4 <= C3 xor C5;
                        C5 <= C4;
                       count<=count+1 ;


                    else
		count<=0;
		case config is
                when "001" | "010" | "011" =>  -- 3-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '1';
                    C2 <= '1';
                    Crc_valid <= '0';
                when "101" | "110" | "111" =>  -- 6-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '0';
                    C2 <= '1';
                    C3 <= '0';
                    C4 <= '1';
                    C5 <= '0';
                    Crc_valid <= '0';
                when others => 
            end case;                  




                    end if;

                           

                when "110" =>
                       if(count<22) then
                        C0 <= Data_in(count) xor C5;
                        C1 <= C0;
                        C2 <= C1;
                        C3 <= C2 xor C5;
                        C4 <= C3 xor C5;
                        C5 <= C4;
                         count<=count+1 ;

                else
		count<=0;
		case config is
                when "001" | "010" | "011" =>  -- 3-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '1';
                    C2 <= '1';
                    Crc_valid <= '0';
                when "101" | "110" | "111" =>  -- 6-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '0';
                    C2 <= '1';
                    C3 <= '0';
                    C4 <= '1';
                    C5 <= '0';
                    Crc_valid <= '0';
                when others => 
            end case;                  

                    end if;

             
                when "111" =>
                    if(count<38) then
                        C0 <= Data_in(count) xor C5;
                        C1 <= C0;
                        C2 <= C1;
                        C3 <= C2 xor C5;
                        C4 <= C3 xor C5;
                        C5 <= C4;
                       count<=count+1 ;

                   else
		count<=0;
		case config is
                when "001" | "010" | "011" =>  -- 3-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '1';
                    C2 <= '1';
                    Crc_valid <= '0';
                when "101" | "110" | "111" =>  -- 6-bit CRC Initialization
                    C0 <= '1';
                    C1 <= '0';
                    C2 <= '1';
                    C3 <= '0';
                    C4 <= '1';
                    C5 <= '0';
                    Crc_valid <= '0';
                when others => 
            end case;              

                    end if;
           
           
                when others => 
            end case;
            Crc_valid <= '1';
        else
            Crc_valid <= '0';
        end if;
    end if;
end process;

Crc_out <= 
    C5 & C4 & C3 & C2 & C1 & C0 when (config = "101" or config = "110" or config = "111") else
    "000" & C2 & C1 & C0 when (config = "001" or config = "010" or config = "011") else
    (others => '0');  -- Default case to avoid latching


end Behavioral;
