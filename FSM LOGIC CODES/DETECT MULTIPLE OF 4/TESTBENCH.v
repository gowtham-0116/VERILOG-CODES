// Code your testbench here
// or browse Examples
module tb;
  reg clk;
  reg rst;
  reg x;
  wire z;
  multiple_four dut (.clk(clk),.rst(rst),.x(x), .z(z));

  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end
  initial begin
    rst = 1;
    x = 0;
    #10 rst = 0;
    #10 x = 1;   
    #10 x = 1;   
    #10 x = 0;   
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;   
    #10 x = 1;
    #10 x = 0;   
    #10 x = 0;   
    #10 x = 0;  
    #10 x = 1;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #20 $finish;
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  initial begin
    $monitor("Time: %0dns, x: %b , z: %b", $time, x, z);
  end

endmodule
