module test_mux41if;
reg s0,s1,a,b,c,d;
wire y;
mux41c t1(s0,s1,a,b,c,d,y);

initial
begin
// Dump waves
$dumpfile("dump.vcd");
$dumpvars(1);
$display("input option1");
{s0,s1}=2'b00;{d,c,b,a}=4'b0001;
#10;
display;
$display("input option2");
{s0,s1}=2'b01;{d,c,b,a}=4'b0010;
#10;
display;
$display("input option3");
{s0,s1}=2'b10;{d,c,b,a}=4'b0100;
#10;
display;
$display("input option4");
{s0,s1}=2'b11;{d,c,b,a}=4'b1000;
#10;
display;
#1;$finish;
end
task display;
#1 $display("s0:%0b,s1:%0b,a:%0b,b:%0b,c:%0b, d:%0b, y:%0b",
s0,s1,a,b,c,d,y);
endtask
endmodule
