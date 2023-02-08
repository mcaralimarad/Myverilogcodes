module add4function(A,B,cin,sum);
input [3:0] A;
  input [3:0] B;
  input        cin;
  output [4:0] sum;
  //output cout;
  reg   [4:0] sum;
 integer i;
  //reg           cout;
function [4:0] add4;
  input [3:0] A;
  input [3:0] B;
  input        cin;
  reg   [4:0] sum;
  reg           cout;
  begin
   
        for (i=0; i<=3; i=i+1)
    begin
        cout = (A[i] & B[i]) | (A[i] & cin) | (B[i] & cin);
        sum[i] = A[i]  ^ B[i] ^ cin;
        cin = cout;
  end
   sum[4] = cout;
   add4 = sum;
  end
endfunction

always @(A,B,cin)
begin
sum<=add4(A,~B,1'b1);
end
endmodule

