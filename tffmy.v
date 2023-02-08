

module tffmy(clk,pr,clr,t,q,qb);
input clk,pr,clr,t;
output q,qb;
reg q;
initial
begin
q=1'b0;
end
always@(posedge clk)
begin
if(pr)
begin
q=1'b1;
end
else if(clr)
begin
q=1'b0;
end
else if(t)
begin
q=~q;
end
end
  assign qb=~q;
endmodule

