`define M B[0]
// This Verilog model explicitly defines control signals.
module mult2C2 (CLK, St, Mplier, Mcand, Product, Done);
   input CLK;
   input St;
   input[3:0] Mplier;
   input[3:0] Mcand;
   output[6:0] Product;
   output Done;
	wire M;
   reg Done;
   reg[2:0] State;
   reg[2:0] Nextstate;
   reg[3:0] A;
   reg[3:0] B;
   wire[3:0] compout;
   wire[3:0] addout;
   reg AdSh;
   reg Sh;
   reg Load;
   reg Cm;
	    assign M=B[0];
   always @(State or St or M)
   begin
	$monitor("CLK:%b,A:%b,B:%b,State:%b,St:%b,M:%b,Cm:%bLoad:%b,AdSh:%b,Sh:%b,Done:%b",
	CLK,A,B,State,St,M,Cm,Load,AdSh,Sh,Done);
      Load = 1'b0 ;
		 AdSh = 1'b0 ;
      Sh = 1'b0 ;
      Cm = 1'b0 ;
      Done = 1'b0 ;
      Nextstate = 1'b0;
      case (State)
         0 :
                  begin
                     if (St == 1'b1)
                      begin
                        Load = 1'b1 ;
                        Nextstate = 1 ;
                      end
                      else
                      begin
                        Load = 1'b0 ;
                        Nextstate = 0 ;
                      end
                  end
         1, 2, 3 :
                  begin
                      if (M == 1'b1)
                      begin
                       AdSh = 1'b1 ;
                      end
                      else
                      begin
                        Sh = 1'b1 ;
                      end
                     Nextstate = State + 1 ;
                  end
         4 :
                  begin
                     if (M == 1'b1)
                      begin
                        Cm = 1'b1 ;
                        AdSh = 1'b1 ;
                      end
                      else
                      begin
                        Sh = 1'b1 ;
                      end
                      Nextstate = 5 ;
                  end
         5 :
                  begin
                     Done = 1'b1 ;
                     Nextstate = 0 ;
                  end
      default:begin
                     Done = 1'b0 ;
                     Nextstate = 0 ;
                  end
      endcase
   end
   assign compout = (Cm == 1'b1) ? ~Mcand : Mcand ;
   assign addout = A + compout + Cm ;
   always @(posedge CLK)
   begin
      if (Load == 1'b1)
      begin
          A <= 4'b0000 ;
          B <= Mplier ;
      end
      if (AdSh == 1'b1)
      begin
          A <= {compout[3], addout[3:1]} ;
          B <= {addout[0], B[3:1]} ;
      end
      if (Sh == 1'b1)
      begin
          A <= {A[3], A[3:1]} ;
          B <= {A[0], B[3:1]} ;
      end
      State <= Nextstate ;
   end
   assign Product = {A[2:0], B} ;
endmodule