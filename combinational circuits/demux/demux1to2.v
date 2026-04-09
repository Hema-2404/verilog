module demux1to2(
input in,
input s,
output y0,
output y1);
assign y0=in&~s;
assign y1=in&s;
endmodule
