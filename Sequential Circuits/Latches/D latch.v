module d_latch (
    input D, EN,
    output reg Q
);
    always @ (D or EN) begin
        if (EN)
            Q = D;
    end
endmodule
