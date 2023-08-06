//D-flipflop
module dff(CLK, RST, D, Q);
input CLK, RST, D;
output Q;
reg Q;//値を保持する必要があるためレジスタ

//alwaysは@の後ろの状態になったとき実行（イベント）
//positive edge 0から１になったとき
always @(posedge CLK or posedge RST) begin
    if(RST == 1'b1)begin
        Q <= 1'b0; //Qはレジスタなので、Qに0を代入しリセット
    end else begin //クロックが入ったとき
        Q <= D;
    end
end

endmodule