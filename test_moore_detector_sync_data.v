module test_moore_detector_sync_data;
reg x=0, reset=1, clock=0;
wire z;
moore_detector MUT ( x, reset, clock, z );
initial #24 reset=0;
initial repeat(13) #5 clock=~clock;
initial forever @(posedge clock) #3 x=$random;
endmodule
