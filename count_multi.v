//multiplier using counter 
//`define M ACC[0]
module count_multi(clk,st,a,b,result,done);
input clk;
input st;
input [7:0]a;
input[7:0]b;
output[15:0]result;
output done;
reg load;
reg k;
reg sh;
reg add;
reg[2:0]count=0;
reg[2:0]state;
reg[2:0]nstate;
reg [15:0]ACC=0;
wire M;
assign # 1 M=ACC[0];

always @(state or M)

begin
    sh=0;
	 add=0;
	 k=0;
	

	case(state)
	0:begin 
	   if(st==1)
	   	begin
		     load=1'b1;
		   	nstate=1;
	   	end 
		else
		begin
		   load=1'b0;
		   nstate=0;
		end
		end
	1:begin
          load=0;
	    if(M==1)
		    begin
		     add=1'b1;
	        nstate=2;
		    end
		 else
		     
                if(k==1 & M==0)
	               begin 
	               sh=1'b1;
		    	      nstate=3;
		            end
			  
		 else 
		 begin
		 if(k==0 & M==0)
			    begin
			    sh=1'b1;
			    count=count+1;
			    nstate=1;
		       end
		 end
		end
	2:begin
	     if(k==1)
		   begin
		     sh=1'b1;
			  nstate=3;
		   end 
		  else 
		     begin
			   sh=1'b1;
            count=count+1;
				nstate=1;
			  end
	  end 
	
	3:nstate=0;
	default:nstate=0;
			 
			
	  endcase
	  end
	  
	   assign done=(state==3)?1'b1:1'b0;
		assign result=(state==3)? ACC[15:0]:16'bzzzzzzzzzzzzzz;
		
		always @(posedge clk)
		begin
//$monitor("clk:%b,a:%b,b:%b,state:%b, count:%b,ACC:%b,st:%b,M:%b,k:%b,load:%b,add:%b,sh:%b,done:%b",clk,a,b,state,count,ACC,st,M,k,load,add,sh,done);
				state<=nstate;
		    if(load==1)
	           begin
				 ACC[15:8]<=0;
				 ACC[7:0]<=a;
		      	end  
		    if(add==1'b1)
			    begin
			    ACC[15:8]<={1'b0,ACC[14:8]}+b;
			    end
			 if(sh==1)
			    begin
				  ACC<={1'b0,ACC[15:1]};
				  end
			if(count==3'b111)
			   begin
				   k<=1'b1;
				end
		end 
		endmodule