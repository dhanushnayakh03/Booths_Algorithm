module add_and_sub(
    input [7:0] a,
    input [7:0] b,
    input add_sub, // 1 for add, 0 for subtract
    output [7:0] result
);
    assign result = add_sub ? (a + b) : (a - b);
endmodule