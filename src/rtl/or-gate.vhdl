entity orgate is
  port (  
          A  : in bit;
          B : in bit;
          O : out bit
       );
end orgate;

architecture BEHAV of orgate is
signal CLK : bit;
signal A_REG, B_REG : bit;
begin
  CLK <= not CLK after 5 ns;
  O <= O_REG;
  process (CLK)
  begin
    if rising_edge(CLK) then
      O_REG <= A or B;
    else
      O_REG <= O_REG;
    end if;
  end process;
end BEHAV;
