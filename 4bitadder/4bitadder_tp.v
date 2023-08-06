`timescale 1ps/1ps

module adder_tp;
reg [3:0] a,b;
wire [3:0] q;
parameter  STEP = 100;

adder adder(a,b,q);

initial begin
            a=4'd0; b=4'd0;
    #STEP   a=4'd5; b=4'd10;
    #STEP   $finish;
end
initial begin 
    $monitor($time, " a=%d b=%d q=%d", a, b, q);
    $dumpfile("4bitadder_tp.vcd");
    $dumpvars(0, adder_tp);
end
endmodule