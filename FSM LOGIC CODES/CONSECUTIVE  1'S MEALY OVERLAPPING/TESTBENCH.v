module tb;
  reg clk;
  reg reset;
  reg c;
  wire d;
  
  three_consecutive_1s_mealy_overlapping c1mo(clk,reset,c,d);
  initial begin
    clk=0;
  forever #5 clk= ~clk;
  end
  
  initial begin
    reset=1;
    c=0; #50;
    reset=0;
    c=1; #5;
    c=1; #5;
    c=1; #5;
    c=0; #5;
    c=0; #5;
    c=0; #5;
    c=1; #5;
    c=1; #5;
    c=1; #5;
    $finish;
  end
  initial begin
    $monitor("clk=%0h,reset=%0h,c=%0h,d=%0h",$time , clk,reset,c,d);
  end
   initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
