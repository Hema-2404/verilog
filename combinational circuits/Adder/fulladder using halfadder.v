module fulladder(input A,B,C,
			       output reg Sum,Carry);
		       reg s1,c1,c2;
always @(*) begin

//frst adder 
s1=A^B;
c1=A&B;
//second adder
Sum=s1^C;
c2=s1&C;
Carry=c1|c2;
end
endmodule
