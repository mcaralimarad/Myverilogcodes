module test_updown_counter_4bit_fd;
reg [3:0]In;
wire [3:0]Out;
reg S,C,F,Clk;

updown_counter_4bit t1(Out, In, S, C, F, Clk);

initial begin
// Dump waves
$dumpfile("dump.vcd");
$dumpvars(1);
Clk=0;C=0;S=1;F=0;In=4'b0011;
#20;
C=1;S=0;F=0;In=4'b0011;
display;
#40;
C=0;S=0;F=0;In=4'b0011;
#20;
C=0;S=1;F=0;In=4'b0011;
display;
#20;
C=0;S=0;F=1;In=4'b0011;
display;
#160 $finish;
end
always #5 Clk = ~Clk;

task display;
#1 $display("Clk:%0b, In:%0b, S:%0b, C:%0b,F:%0b,Out:%0b",
Clk,In, In, S, C, F, Out);
endtask
endmodule
