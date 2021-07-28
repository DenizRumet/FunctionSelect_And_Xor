module and_xor
(
	input i_op1, //input for 
	input i_op2,
	input i_funcSelect,
	output o_funcOut
);

reg funcOutput; //register for defined for operation in always block

// assign o_funcOut = i_funcSelect ? (i_op1 ^ i_op2):(i_op1 & i_op2); 

always @(i_op1, i_op2, i_funcSelect) //always block sensivity list. Why all inputs are written and why no posedge negedge ?
begin
	if (i_funcSelect == 1'b0)
		funcOutput <= i_op1 & i_op2; //and operation
	else
		funcOutput <= i_op1 ^ i_op2; //exor operation
end

assign o_funcOut = funcOutput; //register to output

endmodule
