module CLA16new (A, B, Ci, S, Co, PG, GG);
   input[15:0] A;
   input[15:0] B;
   input Ci;
   output[15:0] S;
   output Co;
   output PG;
   output GG;
   wire[3:0] G;
   wire[3:0] P;
   wire[3:1] C;
   cla16 CarryLogic (G, P, Ci,Co, PG, GG);
   CLA4 FA0 (A[3:0], B[3:0], Ci, G[0], P[0], S[0]);
   CLA4 FA1 (A[7:4], B[7:4], C[1], G[1], P[1], S[1]);
   CLA4 FA2 (A[11:8], B[11:8], C[2], G[2], P[2], S[2]);
   CLA4 FA3 (A[15:12], B[15:12], C[3], G[3], P[3], S[3]);
endmodule
