//half-adder(半加算器)

//module・・・回路を記述する基本単位
module halfadder(A,B,C,S);
    input A, B;
    output C, S;

//C <- A ^ B;
    assign S = A ^ B;
//S <- A & B;
    assign C = A & B;
    
endmodule