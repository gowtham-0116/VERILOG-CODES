module tb;
  reg i1;
  reg [3:0] i2;
  
  initial begin
    i1 = 0;
    i2 = 4'h5;
    $display("i1 = %0h, i2 = %0h", i1, i2);
  end
endmodule
