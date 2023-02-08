module shift_reg (D, Qout,Lshift,CLK,clr, Ld, Sh, Shiftin);
parameter N = 4;
output[N:1] Qout;//paralle output
input[N:1] D;//paralle input
input CLK,clr;
input Ld;//parallel load
input Sh;//shift enable
input Shiftin,Lshift;
reg[N:1] Q;
reg[N:1] shifter;
assign Qout = Q ;
//Left and right shift stored in shifter register
always@(posedge CLK)
begin
if(Lshift)
shifter = {Q[N - 1:1], Shiftin} ; //left shift register
else
shifter = {Shiftin, Q[N:2]} ; //right shift register
end
always @(posedge CLK)
begin
if(clr)
Q<=4'b0000;
else if (Ld == 1'b1)
begin
Q <= D ; //parallel load
end
else if (Sh == 1'b1) //shift enabled
begin
Q <= shifter ;
end
end
endmodule
