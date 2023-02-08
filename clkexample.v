module clkexample();
wire x,clk;
reg clk1;

initial
begin
//clk=1'b0;
clk1=1'b0;
end

assign #10 clk=x;

always@(clk1)
begin

clk1=#1(x);
end

endmodule