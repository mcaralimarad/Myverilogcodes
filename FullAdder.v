module FullAdder (X, Y, Cin, Cout, Sum);
   input X; //inputs
   input Y;
   input Cin;
   output Cout; //outputs
   output Sum;
   assign #10 Sum = X ^ Y ^ Cin ;
   assign #10 Cout = (X & Y) | (X & Cin) | (Y & Cin) ;
endmodule
