module test_moore_detector_random;
reg x=0, reset=1, clock=0;
wire z;
moore_detector MUT ( x, reset, clock, z );
initial #24 reset=1'b0;
initial repeat(13) #5 clock=~clock;
initial repeat(10) #7 x=$random;
endmodule
