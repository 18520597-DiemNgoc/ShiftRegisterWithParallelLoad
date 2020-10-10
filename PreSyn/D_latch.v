//D_latch
module D_latch(Q_latch,Qn_latch, Din_latch, clk_dl);
	input Din_latch, clk_dl;
	output Q_latch, Qn_latch;
	wire d1,d2,d3,d4;
	
	and(d1, Din_latch, clk_dl),
		(d3, d2, clk_dl);
	not(d2, Din_latch);
	or(Q_latch, d1, ~Qn_latch),
		(Qn_latch, d3, ~Q_latch);
endmodule

