module tb;
  reg clk;
  
  initial clk = 0;
  always #5 clk = ~clk;
  
  initial begin
    $monitor("At t = %0d, clk = %0b", $time, clk);
    #50 $finish;
  end
  
endmodule
