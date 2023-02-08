module bs(clk,si,so);
input clk,si;
output so;

reg so,t1,t2;

always@*
begin
so=t2;
t2=t1;

t1=si;
end
endmodule
