module control_unit(
    input [7:0] instr,
    output reg [2:0] opcode,
    output reg [2:0] rd,
    output reg [2:0] rs1,
    output reg [2:0] rs2,
    output reg halt
);
    always @(*) begin
        opcode = instr[7:5];
        rd     = instr[4:2];
        rs1    = instr[1:0];
        rs2    = instr[1:0];
        halt   = (opcode == 3'b111);
    end
endmodule
