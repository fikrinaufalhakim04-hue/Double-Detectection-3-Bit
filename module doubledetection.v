module doubledetection (
    input  wire clk,
    input  wire reset,
    input  wire x,
    output wire y
);

    reg q1, q2, q3;
    wire Q1_next, Q2_next, Q3_next;

    assign y = (~q1) & q2 & q3 & x;
    assign Q1_next = (q1 & x) | (q2 & x) | (~q1 & ~q2 & ~x);
    assign Q2_next = (q2 | q1) | x;
    assign Q3_next = (~x | q2) | q1;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            q1 <= 1'b0;
            q2 <= 1'b0;
            q3 <= 1'b0;
        end else begin
            q1 <= Q1_next;
            q2 <= Q2_next;
            q3 <= Q3_next;
        end
    end

endmodule
