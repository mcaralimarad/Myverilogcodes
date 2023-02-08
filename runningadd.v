module runningadd(
input clk,reset,
input [7:0] idata,
output reg [31:0] odata);

always @(posedge clk)
begin
if (reset)

   odata<=0;
else
  odata<=odata+idata;
  
end

endmodule