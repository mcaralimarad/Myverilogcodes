module famux(a,b,c,s,cout);
input a,b,c;
output  cout,s;

mux41c t1(b,c,a,~a,~a,a,s);
mux41c t2(b,c,1'b0,a,a,1'b1,cout);
endmodule