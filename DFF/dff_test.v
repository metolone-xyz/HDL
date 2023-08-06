`timescale 1ns/1ns

module dff_test;
reg clk,rst;
reg d;
wire q;

parameter STEP = 1000;

dff dff0(clk, rst, d, q);

always begin
    clk = 0; #(STEP/2);
    clk = 1; #(STEP/2);
end

initial begin
    rst = 1; d = 1;
    #(STEP/4) rst = 0;
    #(STEP) rst = 1;
    #(STEP*1.1) d = 1;
    #(STEP*2.1) d = 0;
    #(STEP*3.1) d = 1;
    #(STEP*4.1) d = 0;
    #(STEP*2);
    $finish;
end

initial begin
    $monitor($stime, "clk=%b rst=%b d=%b q=%b", clk, rst, d, q);
    $dumpfile("dff.vcd");
    $dumpvars(0,dff_test);
end

endmodule
