module tb_mux4to1;
reg [3:0]i;
reg [1:0]s;
wire y;
mux4to1 uut(.i(i),
            .s(s),
	    .y(y));
initial begin;
$dumpfile("mux4to1.vcd");
$dumpvars(0,tb_mux4to1); 
$monitor("i=%b s=%b y=%b", i,s,y);
i=4'b1010;
s=2'b00;#10
s=2'b01;#10
s=2'b10;#10
s=2'b11;#10
i=4'b1100;
s=2'b00;#10
s=2'b01;#10
s=2'b10;#10
s=2'b11;#10
$finish;
end
endmodule
