module tb;
  reg clk;
  reg reset;
  reg c;
  wire d;
  
  seq_detect_more_than_one_1s sdmto1(clk,reset,c,d);
  initial begin
    clk=0;
  forever #10 clk=~clk;
  end
  
  initial begin
    reset=1;
    c=0; #30;
    reset=0;
    c=1; #10;
    c=1; #10;
    c=0; #10;
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
