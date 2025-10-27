`timescale 1ns/1ps
module tb_cpu;
    reg clk = 0;
    reg reset = 1;

    cpu_top uut (.clk(clk), .reset(reset));

    always #5 clk = ~clk;  // 100MHz Clock

    initial begin
        $dumpfile("cpu_wave.vcd");
        $dumpvars(0, tb_cpu);
        #10 reset = 0;
        #200 $finish;
    end
endmodule
