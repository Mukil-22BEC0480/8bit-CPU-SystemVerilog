module alu(
    input  [7:0] A, B,
    input  [2:0] SEL,
    output reg [7:0] RESULT
);
    always @(*) begin
        case (SEL)
            3'b000: RESULT = A + B;    // ADD
            3'b001: RESULT = A - B;    // SUB
            3'b010: RESULT = A & B;    // AND
            3'b011: RESULT = A | B;    // OR
            3'b100: RESULT = B;        // MOV
            default: RESULT = 8'h00;
        endcase
    end
endmodule
