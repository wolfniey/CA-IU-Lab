module half_adder(
	i_A,
	i_B,
	o_Z,
	o_C
);

input i_A;
input i_B;
output o_Z;
output o_C;

assign o_Z = i_A ^ i_B;
assign o_C = i_A & i_B;

endmodule