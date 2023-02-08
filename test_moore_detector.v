module test_moore_detector;
reg x, reset, clock;
wire z;
moore_detector MUT ( x, reset, clock, z );
initial begin
clock=1'b0; x=1'b0; reset=1'b1;
end
initial #24 reset=1'b0;
always #5 clock=~clock;
always #7 x=~x;
endmodule