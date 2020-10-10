library verilog;
use verilog.vl_types.all;
entity ShiftRegister is
    port(
        \OUT\           : out    vl_logic_vector(7 downto 0);
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        Ileft           : in     vl_logic;
        Iright          : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic
    );
end ShiftRegister;
