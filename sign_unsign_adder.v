module sign_unsign_adder(a,b,c,d,signSum,unSignSum);
  input [7:0] a,b;
  input signed [7:0] c,d;
  output [7:0] unSignSum;
  output signed [8:0] signSum;
  assign unSignSum = a+b;
  assign signSum = c+d;
endmodule
