library verilog;
use verilog.vl_types.all;
entity ShiftRegister is
    generic(
        n               : integer := 8
    );
    port(
        \OUT\           : out    vl_logic_vector;
        DATA_IN         : in     vl_logic_vector;
        Ileft           : in     vl_logic;
        Iright          : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end ShiftRegister;
