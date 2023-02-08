module mux41p(s0,s1,a,b,c,d,y);
     input s0,s1,a,b,c,d;
     output y;
     wire x0,x1,x2,x3,s0b,s1b;
     not(s0b,s0);
     not(s1b,s1);
     and(x0,s0b,s1b,a);
     and(x1,s0b,s1,b);
     and(x2,s0,s1b,c);
     and(x3,s0,s1,d);
     or(y,x0,x1,x2,x3);
     endmodule
