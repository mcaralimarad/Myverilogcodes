module test_count_multi;
reg clk;
reg st;
reg [7:0]a;
reg[7:0]b;
wire[15:0]result;
wire done;


count_multi t1(clk,st,a,b,result,done);
initial
begin
$monitor("clk:%b,a:%b,b:%b,state:%b, count:%b,ACC:%b,st:%b,M:%b,k:%b,load:%b,add:%b,sh:%b,done:%b",clk,a,b,state,count,ACC,st,M,k,load,add,sh,done);
a=0;b=0;st=0;clk=0;
#5;
a=8'b00000011;b=8'b00000011;st=1'b1;
#10;
st=1'b0;
end
always #2 clk=~clk;

endmodule
