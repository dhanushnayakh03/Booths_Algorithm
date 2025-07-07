module booths_multiplier(Result, in_process, Multiplicand, Multiplier, clk, start);
    output reg [15:0] Result;
    output reg in_process;
    input [7:0] Multiplicand, Multiplier;
    input clk, start;
    reg [7:0] A, Q, M;
    reg Q_1;
    reg [3:0] count;
    
    always @(posedge clk) begin
        if (start) begin
            A = 8'b0;
            Q = Multiplier;
            M = Multiplicand;
            Q_1 = 1'b0;
            count = 4'd0;
            in_process = 1'b1;
            Result = 8'b0 ; 
        end
        else if (in_process) begin
            case ({Q[0], Q_1})
                2'b01: A = A + M;
                2'b10: A = A - M;
            endcase

            // Arithmetic Right Shift {A, Q, Q_1}
            {A, Q, Q_1} = {A[7], A, Q, Q_1} >>> 1;

            count = count + 1;
            if (count >= 4'd8) begin
                in_process = 1'b0;
                Result = {A, Q};
            end
        end
    end
endmodule
