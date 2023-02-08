module decodr3_8(input a,b,c, output [0:7]y);
   assign y[0] = ((~a)&(~b)&(~c));
  assign y[1] = ((~a)&(~b)&(c));
  assign y[2] = ((~a)&(b)&(~c));
  assign y[3] = ((~a)&(b)&(c));
  assign y[4] = ((a)&(~b)&(~c));
  assign y[5] = ((a)&(~b)&(c));
  assign y[6] = ((a)&(b)&(~c));
  assign y[7] = ((a)&(b)&(c));
endmodule
