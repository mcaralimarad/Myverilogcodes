module example_readmemh;
  reg [31:0] data [0:3];
  initial $readmemh("data.txt", data);
  integer i;
  initial begin
    $display("read hexa_data:");
    for (i=0; i < 4; i=i+1)
    $display("%d:%h",i,data[i]);
  end   
endmodule