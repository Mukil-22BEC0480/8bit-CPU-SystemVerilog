module cpu_top(
    input clk,
    input reset
);
    reg [3:0] pc;
    wire [7:0] instr, rd_data1, rd_data2, alu_result;
    wire [2:0] opcode, rd, rs1, rs2;
    wire halt;

    // Instantiate components
    memory mem(.clk(clk), .addr(pc), .data_in(8'b0), .we(1'b0), .data_out(instr));
    control_unit cu(.instr(instr), .opcode(opcode), .rd(rd), .rs1(rs1), .rs2(rs2), .halt(halt));
    reg_file rf(.clk(clk), .we(1'b1), .rd_addr1(rs1), .rd_addr2(rs2), .wr_addr(rd),
                .wr_data(alu_result), .rd_data1(rd_data1), .rd_data2(rd_data2));
    alu alu_inst(.A(rd_data1), .B(rd_data2), .SEL(opcode), .RESULT(alu_result));

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 0;
        else if (!halt)
            pc <= pc + 1;
    end
endmodule
