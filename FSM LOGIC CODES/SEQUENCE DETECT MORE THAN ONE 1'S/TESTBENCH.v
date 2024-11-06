module tb;
  reg clk;
  reg reset;
  reg c;
  wire d;
  
  seq_detect_more_than_one_1s sdmto1(clk,reset,c,d);
  initial begin
    clk=0;
  forever #5; clk=~clk;
  end
  
  initial begin
    reset=1;
    c=0; #5;
    reset=0;
    c=1; #5;
    c=1; #5;
    c=0; #5;
    $finish;
  end
   initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
