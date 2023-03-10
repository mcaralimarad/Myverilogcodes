module test_squares (CLK);
   input CLK;
   reg[3:0] FN;
   reg[7:0] answer;
   function [7:0] squares;
      input[3:0] Number;
      begin
        squares = Number * Number;
      end
   endfunction
   initial
   begin
 FN = 4'b0011;
   end
   always @(posedge CLK)
   begin
     answer = squares(FN);
   end
endmodule
