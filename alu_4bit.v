module alu_4bit (a, b, f, oe, y, p, ov, a_gt_b, a_eq_b, a_lt_b);
input [3:0] a, b;
input [1:0] f;
input oe;
output [3:0] y;
output p, ov, a_gt_b, a_eq_b, a_lt_b;
reg ov, a_gt_b, a_eq_b, a_lt_b;
reg [4:0] im_y;
always @( a or b or f ) begin : arithmethic
ov = 1'b0;
im_y = 0;
case ( f )
2'b00 :
begin
im_y = a + b;
if ( im_y>5'b01111 ) ov = 1'b1;
end
2'b01 :
begin
im_y = a - b;
if ( im_y>5'b01111 ) ov = 1'b1;
end
2'b10 : im_y[3:0] = a & b;
2'b11 : im_y[3:0] = a ^ b;
default: im_y[3:0] = 4'b0000;
endcase
end
always @( a or b ) begin : compare
if ( a > b ) { a_gt_b, a_eq_b, a_lt_b } = 3'b100;
else if ( a < b ) { a_gt_b, a_eq_b, a_lt_b } = 3'b001;
else { a_gt_b, a_eq_b, a_lt_b } = 3'b010;
end
assign p = ^ im_y[3:0];
assign y = oe ? im_y[3:0] : 4'bz;
endmodule


