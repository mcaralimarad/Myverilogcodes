module test_moore_detector_sim_control;
reg x=0, reset=1, clock=0;
wire z;
moore_detector MUT ( x, reset, clock, z );
initial #24 reset=1'b0;
always #5 clock=~clock;
always #7 x=~x;
initial #189 $stop;
endmodule