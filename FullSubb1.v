module FullSubb1(x,y);

input [2:0] x;
output [1:0] y;
//assign ip = {a,b,c};
assign y = (x==3'b000)?2'b00:
(x==3'b001)?2'b11:
(x==3'b010)?2'b11:
(x==3'b011)?2'b01:
(x==3'b100)?2'b10:
(x==3'b101)?2'b00:
(x==3'b110)?2'b00:
2'b11;
endmodule
