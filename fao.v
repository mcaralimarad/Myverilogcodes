     module  fao(a,b,c,co,sum);
     input a,b,c;
     output  co,sum;
     wire s0,s1,s2;
     assign  s0 = a & b;
	  
     assign  s1 = a & c;
     assign  s2 = c & b;
     assign  co = s0 | s1| s2;
     //assign co =( a & b)|(a& c)|(b&c);
     assign  sum = a ^ b^c;
     endmodule
