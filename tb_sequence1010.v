module tb_sequence1010;
reg clr,d,clk;
wire y;


seq1010 t1(clr,d,clk,y);

initial begin
// Dump waves
//$dumpfile("dump.vcd");
//$dumpvars(1);
clk=0;clr=0;d=1;
#12;
clr=0;d=0;
#22;
display;
clr=0;d=1;
#20;
display;
clr=0;d=0;
#15;
display;
clr=0;d=1;
#10;
display;
clr=0;d=0;
#10;
display;
#160 $finish;
end
always #10 clk = ~clk;

task display;
#1 $display("clk:%0b, clr:%0b, d:%0b,y:%0b",clk,clr, d, y);
endtask
endmodule

