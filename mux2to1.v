module mux2to1(a,b,s,y);

input  a,b,s;
output y;


wire s0,s1,s2;

not(s0,s);

and(s1,s0,a);
and(s2,s,b);

or(y,s1,s2);
endmodule