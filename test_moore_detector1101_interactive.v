module test_moore_detector1101_interactive;
reg x=0, start, reset=1, clock=0;
wire z;
moore_detector1101 MUT ( x, start, reset, clock, z );
initial begin
#24 reset=1'b0; start=1'b1;
wait(z==1'b1);
#11 start=1'b0;
#13 start=1'b1;
repeat(3) begin
#11 start=1'b0;
#13 start=1'b1;
wait(z==1'b1);
end
#50 $stop;
end
always #5 clock=~clock;
always #7 x=$random;
endmodule