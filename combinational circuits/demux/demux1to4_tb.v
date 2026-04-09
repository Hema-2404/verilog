module demux1to4_tb;
reg in;
reg [1:0]s;
wire [3:0]y;
demux1to4 utt(.in(in),
	      .s(s),
	      .y(y)
);
initial begin
$dumpfile("demux1to4.vcd");
$dumpvars(0,demux1to4_tb);
$monitor("in=%b s=%b y=%b", in,s,y);
in=1;
s=2'b00;#10;
s=2'b01;#10;
s=2'b10;#10;
s=2'b11;#10;
in=0;
s=2'b00;#10;
s=2'b01;#10;
s=2'b10;#10;
s=2'b11;
$finish;
end
endmodule
