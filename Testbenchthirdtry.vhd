library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CRC3_6_tb is
end CRC3_6_tb;

architecture Behavioral of CRC3_6_tb is
   component CRC3_6
    Port (
        Clk        : in  std_logic;
        Rst        : in  std_logic;
        Data_valid : in  std_logic;
        Data_in    : in  std_logic_vector(37 downto 0);
        config     : in  std_logic_vector(2 downto 0);
        Crc_out    : out std_logic_vector(5 downto 0);
        Crc_valid  : out std_logic
    );
    end component;

    
    signal Clk        : std_logic;
    signal Rst        : std_logic;
    signal Data_valid : std_logic;
    signal Data_in    : std_logic_vector(37 downto 0);
    signal config     : std_logic_vector(2 downto 0);

    
    signal Crc_out    : std_logic_vector(5 downto 0);
    signal Crc_valid  : std_logic;

    
    constant clk_period : time := 10 ns;
begin

  
    P1: CRC3_6
        Port map (
            Clk        => Clk,
            Rst        => Rst,
            Data_valid => Data_valid,
            Data_in    => Data_in,
            config     => config,
            Crc_out    => Crc_out,
            Crc_valid  => Crc_valid
        );

   
    Clk_process :process
    begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
    end process;

    
    stimulation_process: process
    begin
        --Test case1 3-bit CRC 16-bits
        Rst <= '1';
 	Data_valid <= '0';
	config <= "010"; -- 16-bit 3-bit crc
        Data_in <= "00000000000000000000001010110100101100"; --AD2C
       wait for clk_period*2;
Rst <= '0';
        Data_valid <= '1';
	config <= "010"; -- 16-bit 3-bit crc
        Data_in <= "00000000000000000000001010110100101100"; --AD2C
        --Data_in <= "00000001110010100101001100001001101000"
        wait for 200 ns ; 

     --Test case2 3-bit CRC (8-bits)
 
        Rst <= '1';
 	Data_valid <= '0';
	config <= "001"; -- 8-bit 3-bit crc
        Data_in <= "00000000000000000000000000000001110101"; --ox75
       wait for clk_period*2;
         Rst <= '0';
        Data_valid <= '1';
	config <= "001"; -- 8-bit 3-bit crc
        Data_in <= "00000000000000000000000000000001110101"; --ox75
        
        wait for 200 ns ; 

 --Test case3 3-bit CRC (32-bits)
 
        Rst <= '1';
 	Data_valid <= '0';
	config <= "011"; -- 32-bit 3-bit crc
        Data_in <= "00000000110111010001011010110111111100"; --ox3745adfc
       wait for clk_period*2;
         Rst <= '0';
        Data_valid <= '1';
	config <= "011"; -- 32-bit 3-bit crc
        Data_in <= "00000000110111010001011010110111111100"; --ox3745adfc
        
        wait for 350 ns ; 


  --Test case4 6-bit CRC (16-bits)
 
        Rst <= '1';
 	Data_valid <= '0';
	config <= "110"; -- 16-bit 6-bit crc
        Data_in <= "00000000000000000000000101011111001011"; --ox57CB
       wait for clk_period*2;
         Rst <= '0';
        Data_valid <= '1';
	config <= "110"; -- 16-bit 6-bit crc
        Data_in <= "00000000000000000000000101011111001011"; --ox57CB
        
        wait for 200 ns ; 

      --Test case5 6-bit CRC (8-bits)
 
        Rst <= '1';
 	Data_valid <= '0';
	config <= "101"; -- 8-bit 6-bit crc
        Data_in <= "00000000000000000000000000000000110101"; --ox35
       wait for clk_period*2;
         Rst <= '0';
        Data_valid <= '1';
	config <= "101"; -- 8-bit 3-bit crc
        Data_in <= "00000000000000000000000000000000110101"; --ox35
        
        wait for 200 ns ; 

     --Test case6 6-bit CRC (32-bits)
 
        Rst <= '1';
 	Data_valid <= '0';
	config <= "111"; -- 32-bit 6-bit crc
        Data_in <= "00000000000011010001011010101111001101"; --ox345ABCD
       wait for clk_period*2;
         Rst <= '0';
        Data_valid <= '1';
	config <= "111"; -- 32-bit 3-bit crc
        Data_in <= "00000000000011010001011010101111001101"; --ox345ABCD
        
        wait for 250 ns ; 
	
      wait;
    end process;

end Behavioral ;

