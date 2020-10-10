library verilog;
use verilog.vl_types.all;
entity D_FF is
    port(
        Q               : out    vl_logic;
        Qn              : out    vl_logic;
        Din_FF          : in     vl_logic;
        clk_ff          : in     vl_logic
    );
end D_FF;
