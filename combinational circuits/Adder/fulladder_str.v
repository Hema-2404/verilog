module fulladder(
    input A,
    input B,
    input C,
    output Sum,
    output Carry
);

wire s1, c1, c2;

xor (s1, A, B);
xor (Sum, s1, C);
and (c1, A, B);
and (c2, s1, C);
or  (Carry, c1, c2);

endmodule

