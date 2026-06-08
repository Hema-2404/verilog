module nbit_register #(parameter N = 8) (
    input clk,
    input rst,
    input en,
    input [N-1:0] D,
    output reg [N-1:0] Q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 0;
        else if (en)
            Q <= D;
    end
endmodule
