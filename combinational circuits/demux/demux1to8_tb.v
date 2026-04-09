module demux1to8_tb;
reg in;
reg [2:0]s;
wire [7:0]y;
demux1to8 uut(.in(in),
	      .s(s),
	      .y(y));
initial begin 
$dumpfile("demux1to8.vcd");
$dumpvars(0,demux1to8_tb);
$monitor("in=%b s=%b y=%b ",in,s,y);
 in=1;
s=3'b000;#10;
s=3'b001;#10;
s=3'b010;#10;
s=3'b011;#10;
s=3'b100;#10;
s=3'b101;#10;
s=3'b110;#10;
s=3'b111;#10;
$finish;
end 
endmodule
