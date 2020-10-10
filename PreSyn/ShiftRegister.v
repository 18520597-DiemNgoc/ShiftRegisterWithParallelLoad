module ShiftRegister(OUT, DATA_IN, Ileft, Iright, SEL, CLK);
	parameter n = 8;
	input [(n - 1):0] DATA_IN;
	input [1:0] SEL;
	input Ileft, Iright, CLK;
	output[(n - 1):0] OUT;
	wire d0,d1,d2,d3,d4,d5,d6,d7;
	
	// Selector 
	Mux41 MUX0(.OutMux(d0), .I0(OUT[0]), .I1(DATA_IN[0]), .I2(Iright), .I3(OUT[1]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX1(.OutMux(d1), .I0(OUT[1]), .I1(DATA_IN[1]), .I2(OUT[0]), .I3(OUT[2]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX2(.OutMux(d2), .I0(OUT[2]), .I1(DATA_IN[2]), .I2(OUT[1]), .I3(OUT[3]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX3(.OutMux(d3), .I0(OUT[3]), .I1(DATA_IN[3]), .I2(OUT[2]), .I3(OUT[4]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX4(.OutMux(d4), .I0(OUT[4]), .I1(DATA_IN[4]), .I2(OUT[3]), .I3(OUT[5]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX5(.OutMux(d5), .I0(OUT[5]), .I1(DATA_IN[5]), .I2(OUT[4]), .I3(OUT[6]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX6(.OutMux(d6), .I0(OUT[6]), .I1(DATA_IN[6]), .I2(OUT[5]), .I3(OUT[7]), .SEL1(SEL[1]), .SEL0(SEL[0]));
	Mux41 MUX7(.OutMux(d7), .I0(OUT[7]), .I1(DATA_IN[7]), .I2(OUT[6]), .I3(Ileft), .SEL1(SEL[1]), .SEL0(SEL[0]));
	
	//D_FF
	D_FF DUT0(.Q(OUT[0]), .Qn(), .Din_FF(d0), .clk_ff(CLK));
	D_FF DUT1(.Q(OUT[1]), .Qn(), .Din_FF(d1), .clk_ff(CLK));
	D_FF DUT2(.Q(OUT[2]), .Qn(), .Din_FF(d2), .clk_ff(CLK));
	D_FF DUT3(.Q(OUT[3]), .Qn(), .Din_FF(d3), .clk_ff(CLK));
	D_FF DUT4(.Q(OUT[4]), .Qn(), .Din_FF(d4), .clk_ff(CLK));
	D_FF DUT5(.Q(OUT[5]), .Qn(), .Din_FF(d5), .clk_ff(CLK));
	D_FF DUT6(.Q(OUT[6]), .Qn(), .Din_FF(d6), .clk_ff(CLK));
	D_FF DUT7(.Q(OUT[7]), .Qn(), .Din_FF(d7), .clk_ff(CLK));
endmodule

