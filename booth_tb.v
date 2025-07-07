`include "booth_algo.v"

module testbench;
    reg clk, start;
    reg [7:0] a, b;
    wire [15:0] ab;
    wire busy;

    booths_multiplier inst1(ab, busy, a, b, clk, start);

    initial begin
        clk = 0;

        // Test Case 1:  9 * 9 = 81
        $display("Test Case 1: a = 9, b = 9");
        a = 8'd9; b = 8'd9; start = 1; #10 start = 0;
        #100 $display("Output: %0d", $signed(ab)); // Should print 81
        $display("Test Case 1 done\n");

        // Test Case 2:  -5 * 6 = -30
        $display("Test Case 2: a = -5, b = 6");
        a = -8'sd5; b = 8'd6; start = 1; #10 start = 0;
        #100 $display("Output: %0d", $signed(ab)); // Should print -30
        $display("Test Case 2 done\n");

        // Test Case 3:  12 * -7 = -84
        $display("Test Case 3: a = 12, b = -7");
        a = 8'd12; b = -8'sd7; start = 1; #10 start = 0;
        #100 $display("Output: %0d", $signed(ab)); // Should print -84
        $display("Test Case 3 done\n");

        // Test Case 4: -8 * -8 = 64
        $display("Test Case 4: a = -8, b = -8");
        a = -8'sd8; b = -8'sd8; start = 1; #10 start = 0;
        #100 $display("Output: %0d", $signed(ab)); // Should print 64
        $display("Test Case 4 done\n");

        $finish;
    end

    always #5 clk = ~clk;

    initial begin
        $dumpfile("booth_file.vcd");
        $dumpvars();
    end
endmodule
