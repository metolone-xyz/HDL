//full-adder
module fulladder(A, B, Cin, Cout, S);
input A,B,Cin;
output Cout, S;
wire C0, C1, S0;

halfadder ha0(A,B,C0,S0);
halfadder ha1(S0,Cin,C1,S);

assign Cout = C0 | C1;

endmodule