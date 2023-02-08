module BCD_counter_4bit (SSD_out,Out, In, S, C, Clk);
input [3:0]In;
output [3:0]Out;
input S,C,Clk;
reg [3:0]Out;
output [6:0]SSD_out;
reg [6:0]SSD_out;

always @(negedge Clk)
begin
if (S==1'b1)
Out=In; // parallel load
else if (C==1'b1)
Out=4'b0000;// clear

else begin
Out=Out+1'b1;// up counter
if(Out==4'b1010)
Out=4'b0000;
end
end
always@(Out)
begin
case (Out)
4'b0000 : begin SSD_out=7'b0000001; end
4'b0001 : begin SSD_out=7'b1001111; end
4'b0010 : begin SSD_out=7'b0010010; end
4'b0011 : begin SSD_out=7'b0000110; end
4'b0100 : begin SSD_out=7'b1001100; end
4'b0101 : begin SSD_out=7'b0100100; end
4'b0110 : begin SSD_out=7'b0100000; end
4'b0111 : begin SSD_out=7'b0001111; end
4'b1000 : begin SSD_out=7'b0000000; end
4'b1001 : begin SSD_out=7'b0000100; end
default:begin SSD_out=7'b0000001;end
endcase
end
endmodule
