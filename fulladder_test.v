//simulation
//1. 時間スケールを決める

`timescale 1ns/1ns //1タ　イムスケールあたりの実時間 / 最小単位(丸めの精度)

module fulladder_test;
reg a,b, cin; 
wire cout,s; //出力

parameter STEP = 100; // クロックの時間

fulladder ff(a,b,cin,cout,s); //テストするモジュール

initial begin
            a = 0; b = 0; cin = 0;
    #STEP   a = 0; b = 0; cin = 1;
    #STEP   a = 0; b = 1; cin = 0;
    #STEP   a = 0; b = 1; cin = 1;
    #STEP   a = 1; b = 0; cin = 0;
    #STEP   a = 1; b = 0; cin = 1;
    #STEP   a = 1; b = 1; cin = 0;
    #STEP   a = 1; b = 1; cin = 1;
    #STEP   $finish;
end

initial begin
    $monitor($stime, " a=%b b=%b cin=%b cout=%b s=%b", a, b, cin ,cout, s);
    $dumpfile("fulladder_test.vcd");
    $dumpvars(0, fulladder_test);
end
    
endmodule
