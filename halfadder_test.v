//simulation
//1. 時間スケールを決める

`timescale 1ns/1ns //1タ　イムスケールあたりの実時間 / 最小単位(丸めの精度)

module halfadder_test;
reg a,b; //入力　(0,1がそれぞれ入る)
wire c,s; //出力

halfadder hf(a,b,c,s); //テストするモジュール

parameter STEP = 100; // クロックの時間

initial begin
            a = 1'b0; b = 1'b0; //1bitのbinaryの0
    #STEP   a = 1'b0; b = 1'b1;
    #STEP   a = 1'b1; b = 1'b0;
    #STEP   a = 1'b1; b = 1'b1;
    #STEP   $finish ;
end

initial begin
    $monitor($stime, "a=%b b=%b c=%b s=%b", a, b, c, s);
    $dumpfile("halfadder_test.vcd");
    $dumpvars(0, halfadder_test);
end
    
endmodule
