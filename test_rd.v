module test_rd;
reg clk,reset;
integer fptr,i;
reg[7:0] idata;
wire [31:0] odata;


 runningadd t1(clk,reset,idata,odata);
 
 initial 
 begin
 clk=0;
 
 
 forever 
 begin
 clk=~clk;
 #5;
 end
 
 end
 
 
 initial 
 begin
    reset=1'b1;
	 fptr =$fopen("data.txt","r");
	 idata =0;
	 #100;
	 reset=1'b0;
	 #50
	 for(i=0;i<10;i=i+1)
	   begin
		@(posedge clk);
		$fscanf(fptr,"%d",idata);
	 end
		$fclose(fptr);
 end
		
		endmodule