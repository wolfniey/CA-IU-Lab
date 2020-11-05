module full_adder_testbench;

reg r_A;
reg r_B;
reg r_C;
wire w_Z;
wire w_C;

full_adder full_adder_instance(
	.i_A(r_A),
	.i_B(r_B),
	.i_C(r_C),
	.o_Z(w_Z),
	.o_C(w_C)
);

initial
	begin
		r_A = 1'b0;
		r_B = 1'b0;
		r_C = 1'b0;
		#10;
		r_A = 1'b1;
		r_B = 1'b0;
		r_C = 1'b0;
		#10;
		r_A = 1'b0;
		r_B = 1'b1;
		r_C = 1'b0;
		#10;
		r_A = 1'b1;
		r_B = 1'b1;
		r_C = 1'b0;
		#10;
		r_A = 1'b0;
		r_B = 1'b0;
		r_C = 1'b1;
		#10;
		r_A = 1'b1;
		r_B = 1'b0;
		r_C = 1'b1;
		#10;
		r_A = 1'b0;
		r_B = 1'b1;
		r_C = 1'b1;
		#10;
		r_A = 1'b1;
		r_B = 1'b1;
		r_C = 1'b1;
		#10;
	end
	
endmodule