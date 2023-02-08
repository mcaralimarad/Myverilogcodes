

module function_test(Z);
  function [4:0] parity;
  input [3:0] A;
  reg temp_parity;
  begin
    temp_parity = A[0] ^ A[1] ^ A[2] ^ A[3];
 parity = {A, temp_parity};
  end
endfunction
output reg [4:0] Z;
  reg [3:0] INP;
  initial 
  begin
    INP = 4'b0111;
    Z = parity(INP);
  end
endmodule
