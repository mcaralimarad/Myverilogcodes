`define NULL 0
`define EOF 32'hffffffff
 module file_read;
 integer file, ret;
 reg [31:0] r_w, addr, data;
 initial
    begin : file_read
    file = $fopen("data",r);
    if (file == `NULL)
        disable file_read;
   while (!$feof(file))
        begin
        ret = $fscanf(file, "%s %h %h\n", r_w, addr, data);
        case (r_w)
		           "rd":
              $display("READ mem[%h] => %h", addr, data);
          "wr":
              $display("WRITE mem[%h] <= %h", addr, data);
          default:
              $display("Unknown command '%s'", r_w);
        endcase
        end
    //ret = $fclose(file);
    end
endmodule