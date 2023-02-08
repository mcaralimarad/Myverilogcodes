module DFF(clk,pr,clr,d,q,qb);
input clk,pr,clr,d;
output q,qb;
reg q;
initial
begin
q<=1'b0;
end
always@(posedge clk)
begin
if(pr)
begin
q<=1'b1;
end
else if(clr)
begin
q<=1'b0;
end
else 
begin
q<=d;
end
end
  assign qb=~q;
endmodule

