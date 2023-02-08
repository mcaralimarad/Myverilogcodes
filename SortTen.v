module SortTen ();
 integer ARRAY [9:0];
 integer file, count, k;
 
 initial
 begin
 
 file =$fopen("C:/MCA/sort.txt","r");
 for (k=0; k<10; k=k+1)
 begin
 count = $fscanf(file, "%d", ARRAY[k]);
 end
 $fclose(file);
 
 //sort the numbers
 sort(ARRAY[0], ARRAY[1], ARRAY[2], ARRAY[3], ARRAY[4], //inputs
 ARRAY[5], ARRAY[6], ARRAY[7], ARRAY[8], ARRAY[9], //inputs
 ARRAY[0], ARRAY[1], ARRAY[2], ARRAY[3], ARRAY[4], //outputs
 ARRAY[5], ARRAY[6], ARRAY[7], ARRAY[8], ARRAY[9]); //outputs 
 end
 
 task sort;
 input [31:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9;
 output [31:0] out0, out1, out2, out3, out4, out5, out6, out7, out8,
out9;
 
 reg [31:0] t [9:0]; 
 reg [31:0] temp; 
 
 integer i, j; 
 begin
 t[0] = in0; t[1] = in1; t[2] = in2; t[3] = in3; t[4] = in4;
 t[5] = in5; t[6] = in6; t[7] = in7; t[8] = in8; t[9] = in9;
 
 for (i=0; i<10; i=i+1)
 begin
 for (j=0; j<10; j=j+1)
 begin
 if (t[j] > t[j+1])
 begin
 temp = t[j];
 t[j] = t[j+1];
 t[j+1] = temp; 
 end
 end
 end
 
 out0 = t[0]; out1 = t[1]; out2 = t[2]; out3 = t[3]; out4 = t[4];
 out5 = t[5]; out6 = t[6]; out7 = t[7]; out8 = t[8]; out9 = t[9]; 
 end 
 endtask 
 
endmodule