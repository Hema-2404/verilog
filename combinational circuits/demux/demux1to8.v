module demux1to8(input in,
                 input [2:0]s,
                 output reg  [7:0]y);
always @(*)begin 
y=8'b00000000;
case(s)
3'b000:y[0]=in;
3'b001:y[1]=in;
3'b010:y[2]=in;
3'b011:y[3]=in;
3'b100:y[4]=in;
3'b101:y[5]=in;
3'b110:y[6]=in;
3'b111:y[7]=in;
endcase
end
endmodule

