// Code your testbench here
// or browse Examples
module tb;
  reg clk, reset, c;
  wire d;
  
  moore_1010_over sd(clk, reset, c, d);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    c = 0;
    #1 reset = 0;
    #2 reset = 1;
    
    #3 c = 1;
    #4 c = 1;
    #4 c = 0;
    #4 c = 1;
    #4 c = 0;
    #4 c = 1;
    #4 c = 0;
    #4 c = 1;
    #4 c = 1;
    #4 c = 1;
    #4 c = 0;
    #4 c = 1;
    #4 c = 0;
    #4 c = 1;
    #4 c = 0;
    #10;
    $finish;
  end
  
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
