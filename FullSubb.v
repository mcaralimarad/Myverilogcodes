module FullSubb(a,b,c,diff,bor);
wire [2:0]ip;
input a,b,c;
output diff,bor;
assign ip = {a,b,c};
assign{diff,bor} = (ip==3'b000)?2'b00:
(ip==3'b001)?2'b11:
(ip==3'b010)?2'b11:
(ip==3'b011)?2'b01:
(ip==3'b100)?2'b10:
(ip==3'b101)?2'b00:
(ip==3'b110)?2'b00:
2'b11;
endmodule
