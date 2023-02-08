 module mux_21_my(s,a,b,y);
 input s,a,b;
 output y;
 wire sb,a1,a2;
 not_my n1(s,sb);
 and_my n2(sb,a,a1);
 and_my n3(s,b,a2);
 or_my n4(a1,a2,y);
 endmodule
