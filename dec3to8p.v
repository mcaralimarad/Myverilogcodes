  module dec3to8p (s0,s1,s2,y0,y1,y2,y3,y4,y5,y6,y7);
  input s0,s1,s2;
  output y0,y1,y2,y3,y4,y5,y6,y7;
  wire s0b,s1b,s2b;
  not(s0b,s0);
  not(s1b,s1);
  not(s2b,s2);
  and(y0,~s0,~s1,~s2);
  and(y1,s0b,s1b,s2);
  and(y2,s0b,s1,s2b);
  and(y3,s0b,s1,s2);
  and(y4,s0,s1b,s2b);
  and(y5,s0,s1b,s2);
  and(y6,s0,s1,s2b);
  and(y7,s0,s1,s2);
  endmodule
