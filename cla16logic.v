module cla16logic(GG,PG,Ci,Cc,c0,PGG,GGG);
input [3:0]PG,GG;
input Ci;
output PGG,GGG;
  output[3:1] Cc;
  output c0;
wire PGG_int,GGG_int;

assign Cc[1] = GG[0] | (PG[0] & Ci) ;
   assign Cc[2] = GG[1] | (PG[1] & GG[0]) | (PG[1] & PG[0] & Ci) ;
   assign  Cc[3]=GG[2]|(PG[2] & GG[1])|(PG[2]&PG[1]&GG[0]) | (PG[2] & PG[1] &PG[0] & Ci) ;
   assign PGG_int = PG[3] & PG[2] & PG[1] & PG[0] ;
assign  GGG_int=GG[3]|(PG[3] & GG[2])|(PG[3]&PG[2]&GG[1])|(PG[3]&PG[2]&PG[1]& GG[0]);
   assign c0 = GGG_int | (PGG_int & Ci) ;
   assign PGG = PGG_int ;
   assign GGG = GGG_int ;
endmodule
