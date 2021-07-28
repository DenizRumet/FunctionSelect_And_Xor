module lab1_drf
(
	input i_Clock,
	input i_nReset,
	input i_functionSelect,
	output o_output
);

wire [2:0] counterOut;

counter_3bit counter(i_Clock ,i_nReset , counterOut); //respectively

and_xor funcAndXor(.i_funcSelect(i_functionSelect) , .i_op2(counterOut[2]), .i_op1(counterOut[0]), .o_funcOut(o_output));

endmodule
