module half_adder(
	i_A,
	i_B,
	i_C,
	o_Z,
	o_C
);

input i_A;
input i_B;
input i_C;
output o_Z;
output o_C;

assign o_Z = i_A ^ i_B ^ i_C;
assign o_C = (i_A & i_B) | ((i_A ^ i_B) & i_C);