// Code your testbench here
// or browse Example
module cir_tb;
  reg clk,rst,A;
  wire y;
  
  cir_oscl co(clk,rst,A,y);
  
  always #2 clk=~clk;
  
  initial begin
    clk=0;
    #1 rst=0;
    #2 rst=1;
    
    #4 A=0;
    #4 A=1;
    #4 A=0;
    #4 A=1;
    #4 A=0;
    #4 A=1;
    #4 A=1;
    #4 A=1;
    #4 A=0;
    #4 A=1;
    #4 A=0;
    #4 A=0;
    #4 A=1;
    #20 $finish;
  end
  initial begin
    $monitor("at time %0t: clk=%b,rst=%b,A=%b,y=%b",$time,clk,rst,A,y);
  end
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
