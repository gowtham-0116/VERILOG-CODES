// Code your testbench here
// or browse Examples
module tb;
  reg clk, reset, c;
  wire d;
  
  mealy_1010_over sd(clk, reset, c, d);
  initial clk = 0;   
  always #2 clk = ~clk;
    
  initial begin
    c = 0;
    #5 reset = 0;
    #5 reset = 1;
    
    #5 c = 1;
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
    $monitor("At time %0t: clk=%b,reset=%b,c=%b,d=%b",$time,clk,reset,c,d);
  end
  
  initial begin
   
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
