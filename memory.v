module memory (
    input clk,
    input [3:0] addr,
    input [7:0] data_in,
    input we,
    output reg [7:0] data_out
);
    reg [7:0] mem [0:15];

    initial begin
        // Simple program
        // opcode | rd | rs1 | rs2
        mem[0] = 8'b000_000_01; // ADD R0 = R0 + R1
        mem[1] = 8'b001_010_11; // SUB R2 = R2 - R3
        mem[2] = 8'b010_100_01; // AND R4 = R4 & R1
        mem[3] = 8'b011_101_10; // OR  R5 = R5 | R2
        mem[4] = 8'b111_000_00; // HLT
    end

    always @(posedge clk) begin
        if (we)
            mem[addr] <= data_in;
        else
            data_out <= mem[addr];
    end
endmodule
