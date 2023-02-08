module testbench_FUlladderprimitive_modified();
reg a,b,c;
wire s,cout;

FUlladderprimitive t1(a,b,c,s,cout);//DUT

initial
begin

// Dump waves

$dumpfile("dump.vcd");
$dumpvars(1);

$monitor("a:%b,b:%b, c:%b,s:%b,cout:%b",a,b,c,s,cout);
$display("a:%b,b:%b, c:%b,s:%b,cout:%b",a,b,c,s,cout);
$strobe("a:%b,b:%b, c:%b,s:%b,cout:%b",a,b,c,s,cout);
$write("a:%b,b:%b, c:%b,s:%b,cout:%b",a,b,c,s,cout);
a=1'b0;b=1'b0;c=1'b0;
#10
a=1'b0;b=1'b0;c=1'b1;
#10
a=1'b0;b=1'b1;c=1'b0;
#10
a=1'b1;b=1'b0;c=1'b1;
#10
a=1'b1;b=1'b1;c=1'b1;
#10
#80 $finish;
end
endmodule
