module updown_counter_4bit_fd (Out, In, S, C, F, Clk);
input [3:0]In;
output [3:0]Out;
input S,C,F,Clk;
reg [3:0]Out;
reg [25:0] c1;
reg a;
initial
begin
c1=0;
a=0;
end

always@(negedge Clk)
begin
c1=c1+1;
a=c1[23];
end

always @(negedge a)
begin
if (S==1'b1)
Out=In; // parallel load
else if (C==1'b1)
Out=4'b0000;// clear

else if(F==1'b1)
Out=Out+1'b1;// up counter
else
Out=Out-1'b1;// down counter
end

endmodule
