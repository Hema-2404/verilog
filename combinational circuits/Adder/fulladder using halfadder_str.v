module halfadder(
	input A,B,
	output Sum,Carry
);
assign Sum=A^B;
assign Carry=A&B;
endmodule
module fulladder(input A,B,C,
		output Sum,Carry);
wire s1,c1,c2;

halfadder HA1(
	.A(A),
	      .B(B),
	      .Sum(s1),
	      .Carry(c1)
);
halfadder HA2 (
	.A(s1),
	       .B(C),
		.Sum(Sum),
		.Carry(c2)
);
assign Carry=c1|c2;
endmodule
