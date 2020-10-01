module ex1 (
	input x1 ,
	input x2 ,
	input x3 ,
	input x4 ,
	input s0 ,
	input s1 ,
	output reg q
);
	always@ (*)
	begin
		case (s0 == 1 & s1 == 1)
		1: q = x1;
		endcase
		case (s0 == 1 & s1 == 0)
		1: q = x2;
		endcase
		case (s0 == 0 & s1 == 1)
		1: q = x3;
		endcase
		case (s0 == 0 & s1 == 0)
		1: q = x4;
		endcase
	end
endmodule