module Mux41(OutMux, I0, I1, I2, I3, SEL1, SEL0); // SEL1 is high, SEL0 is low
	input I0, I1, I2, I3, SEL1, SEL0;
	output OutMux;
	wire m1, m2, m3, m4;
	
	and(m1, I0, ~SEL1,~SEL0),
		(m2, I1, ~SEL1, SEL0),
		(m3, I2, SEL1, ~SEL0),
		(m4, I3, SEL1, SEL0);
	or(OutMux, m1, m2, m3, m4);
endmodule

