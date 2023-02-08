module srlatchpnand (s,r,q,qb);
input s,r;
output q,qb;
nand(q,qb,~s);
nand(qb,q,~r);
endmodule
