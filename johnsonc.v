module johnsonc(clk,clr,q);
input clk,clr;
output [2:0]q;
wire [2:0] qb1;

DFF1 t0(clk,1'b0,clr,qb1[2],q[0],qb1[0]);
DFF1 t1(clk,1'b0,clr,q[0],q[1],qb1[1]);
DFF1 t2(clk,1'b0,clr,q[1],q[2],qb1[2]);

endmodule