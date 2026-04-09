module demux1to2_tb;
reg in;
reg s;
wire y0,y1;
demux1to2 uut (.in(in),
		.s(s),
		.y0(y0),
		.y1(y1)
);
initial begin
$dumpfile("demux1to2_tb.vcd");
$dumpvars(0,demux1to2_tb);
$monitor("in=%b s=%b y0=%b y1=%b ", in ,s,y0,y1);
s=0;in=0;#10
s=0;in=1;#10
s=1;in=0;#10
s=1;in=1;
$finish;
end
endmodule
