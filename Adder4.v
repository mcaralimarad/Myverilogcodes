module Adder4 (A, B, Ci, S, Co);
   input[3:0] A; //inputs
   input[3:0] B;
   input Ci;
   output[3:0] S; //outputs
   output Co;
   wire[4:0] C;
   assign C[0] = Ci ;
   genvar i;
   generate
   for (i=0; i<4; i=i+1)
     begin: gen_loop
FullAdder FA (A[i], B[i], C[i], C[i+1], S[i]);
     end
   endgenerate
 
   assign Co = C[4] ;
endmodule
