module reg_file (
    input clk,
    input we,
    input [2:0] rd_addr1, rd_addr2, wr_addr,
    input [7:0] wr_data,
    output [7:0] rd_data1, rd_data2
);
    reg [7:0] regs [7:0];

    assign rd_data1 = regs[rd_addr1];
    assign rd_data2 = regs[rd_addr2];

    always @(posedge clk) begin
        if (we)
            regs[wr_addr] <= wr_data;
    end
endmodule
