library verilog;
use verilog.vl_types.all;
entity Mux41 is
    port(
        OutMux          : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL0            : in     vl_logic
    );
end Mux41;
