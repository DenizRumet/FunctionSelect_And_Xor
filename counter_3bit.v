module counter_3bit
(
	input i_Clk, // clock input
	input i_nRst, // asynchronous reset
	output [2:0] o_Cout // counter output
);

//module counter_3bit(i_Clk, i_nRst, o_Cout);

reg [2:0] Counter;

always @(posedge i_Clk or negedge i_nRst)
begin
	if (i_nRst == 1'b0)
		Counter[2:0] <= 3'b0; // reset the counter
	else
		Counter[2:0] <= Counter[2:0] + 3'b001; // increment the counter
end

assign o_Cout[2:0] = Counter[2:0]; // assign to outputs

endmodule




