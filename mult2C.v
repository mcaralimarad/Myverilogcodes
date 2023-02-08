//`define M B[0]
 module mult2C (CLK, St, Mplier, Mcand, Product, Done);
   input CLK;
   input St;
   input[3:0] Mplier;
   input[3:0] Mcand;
   output[6:0] Product;
   output Done;
   reg[2:0] State;
   reg[3:0] A;
   reg[3:0] B;
   reg[3:0] addout;
   wire M;
   initial
   begin
      State = 0;
   end
    assign M=B[0];
   always @(posedge CLK)
   begin
$monitor("CLK:%b,Mplier:%b,Mcand:%b,State:%b,addout:%b,St:%b,M:%b,Product:%b,Done:%b",
         CLK,Mplier,Mcand,State,addout,St,M,Product,Done);      
		case (State)
            0 :
                     begin
                        if (St == 1'b1)
                        begin
                           A <= 4'b0000 ;
                           B <= Mplier ;
									                           State <= 1 ;
                        end
  
 
      else
   
         State <= 0;
                     end
            1, 2, 3 :
                     begin
                        if (M == 1'b1)
                        begin
                           addout = A + Mcand;
                           A <= {Mcand[3], addout[3:1]} ;
                           B <= {addout[0], B[3:1]} ;
                        end
                        else
                        begin
                           A <= {A[3], A[3:1]} ;
                           B <= {A[0], B[3:1]} ;
                        end
                        State <= State + 1 ;
                     end
            4 :
                     begin
                        if (M == 1'b1)
                        begin
                           addout = A + ~Mcand + 1;
                           A <= {~Mcand[3], addout[3:1]} ;
                           B <= {addout[0], B[3:1]} ;
                        end
                        else
                        begin
                           A <= {A[3], A[3:1]} ;
                           B <= {A[0], B[3:1]} ;
                        end
                        State <= 5 ;
                     end
            5 :
                     begin
                       State <= 0 ;
                     end
    
      default :
                     begin
                        State <= 0 ;
                     end
         endcase
         end
   assign Done = (State == 5) ? 1'b1 : 1'b0 ;
   assign Product = {A[2:0], B} ;
endmodule