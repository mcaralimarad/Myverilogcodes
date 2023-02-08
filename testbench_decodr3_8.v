module testbench_decodr3_8();
reg a,b,c;
wire [0:7]y;
decodr3_8 t1 (a,b,c,y);
initial
begin
//dump waves

$dumpfile("dump.vcd");
$dumpvars(1);
$monitor("a:%b,b:%b,c:%b,y:%b",a,b,c,y);
a=1'b0;b=1'b0;c=1'b0;
#80 $finish;
end
always #40 a=~a;
always #20 b=~b;
always #10 c=~c;
endmodule
