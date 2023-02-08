module test_alu_4bit;
reg [3:0] a=4'b1011, b=4'b0110;
reg [1:0] f=2'b00;
reg oe=1;
wire [3:0] y;
wire p, ov, a_gt_b, a_eq_b, a_lt_b;
alu_4bit cut( a, b, f, oe, y, p, ov, a_gt_b, a_eq_b, a_lt_b );
initial begin
#20 b=4'b1011;
#20 b=4'b1110;
#20 b=4'b1110;
#80 oe=1'b0;
#20 $finish;
end
always #23 f = f + 1;
endmodule
