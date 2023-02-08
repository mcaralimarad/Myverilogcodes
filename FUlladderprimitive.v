module   FUlladderprimitive(a,b,c,s,cout);
input a,b,c;
output  cout,s;
wire s0,s1,s2,s3,s4;
xor (s0,a,b);
xor (s,s0,c);
and (s1,a,b);
and (s2,a,c);
and (s3,c,b);
or  (s4,s2,s1);
or  (cout,s3,s4);
endmodule
