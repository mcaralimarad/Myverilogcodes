module test_moore_detector1101_interactive_display;
reg x=0, start, reset=1, clock=0;
wire z;
moore_detector1101 MUT ( x, start, reset, clock, z );
initial begin
#24 reset=1'b0; start=1'b1;
end
always begin : Output_Display
wait (MUT.current == MUT.e);
$display ("$display task shows: The output is %b",z);
$strobe ("$strobe task shows: The output is %b",z);
#2 $stop;
end
always #5 clock=~clock;
always #7 x=$random;
endmodule