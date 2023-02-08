module DFF1(clk,pr,clr,d,q,qb);
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
$display("clk:%0b, pr:%0b, clr:%0b, d:%0b,q:%0b,qb:%0b",
clk,pr,clr,d,q,qb);

end
end
  assign qb=~q;
endmodule

