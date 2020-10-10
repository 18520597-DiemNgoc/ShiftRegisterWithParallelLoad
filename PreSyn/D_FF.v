module D_FF(Q, Qn, Din_FF, clk_ff);
	input Din_FF;
	input	clk_ff;
	output Q, Qn;
	wire q1,q2;
	
	D_latch master(.Q_latch(q1), .Qn_latch(q2), .Din_latch(Din_FF), .clk_dl(~clk_ff));
	D_latch slave(.Q_latch(Q), .Qn_latch(Qn), .Din_latch(q1), .clk_dl(clk_ff));
	
endmodule



