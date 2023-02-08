module test_moore_detector_random_time_interval;
reg x, start, reset, clock;
wire z;
reg [3:0] t;
moore_detector1101 MUT ( x, start, reset, clock, z );
initial begin:running
clock <= 1'b0; x <= 1'b0;
reset <= 1'b1; reset <= #7 1'b0;
start <= 1'b0; start <= #17 1'b1;
repeat (13) begin
@( posedge clock );
@( negedge clock );
end
start=1'b0;
#5;
$finish;
end
always #5 clock=~clock;
always begin
t = $random;
#(t) x=$random;
end
endmodule