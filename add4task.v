
module add4task(A,B,Cin,sum,cout);
input [3:0] A;
  input [3:0] B;
  input        Cin;
  output [4:0] sum;
  output cout;
  reg cout;
  reg   [4:0] sum;
 integer i; 
task Addvec;
      input [3:0] Add1;
      input [3:0] Add2;
      input Cin;
      output [3:0] sum;
      output cout;
      reg C;
      begin
         C = Cin;
         for(i = 0; i < 4; i = i + 1)
            begin
               sum[i] = Add1[i] ^ Add2[i] ^  C ;
               C = (Add1[i] & Add2[i]) | (Add1[i] & C) | (Add2[i] & C);
            end
         cout = C ;
      end
    endtask
	 always@(*)
	 begin
	 Addvec(A, B, Cin, sum, cout);
	 end
	 
	 endmodule
