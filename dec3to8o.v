module dec3to8o (s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
input s0,s1,s2;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire s0b,s1b,s2b;
assign s0b = ~s0;
assign s1b = ~s1;
assign s2b = ~s2;
assign y0 = s0b & s1b & s2b ;
assign y1 = s0b & s1b & s2 ;
assign y2 = s0b & s1 & s2b ;
assign y3 = s0b & s1 & s2 ;
assign y4 = s0 & s1b & s2b ;
assign y5 = s0 & s1b & s2 ;
assign y6 = s0 & s1 & s2b ;
assign y7 = s0 & s1 & s2 ;
endmodule
