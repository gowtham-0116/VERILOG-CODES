module tb;
  reg reset,clk,en;
  wire [7:0] count;
  
  upcounter counter(reset,clk,en,count);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    reset=1;en=0;
    #10;
    reset=0;en=0;
    #5;
    en=1;
    #5;
    en=0;
     #5;
    en=1;
    #5;
   ;
    $finish;
  end
  
  initial begin
    $monitor("At time %0t:reset=%b,clk=%b,en=%b,count=%b",$time,reset,clk,en,count);
  end
  
  initial begin
    $dumpfile("upcounter.vcd");
    $dumpvars;
  end
endmodule
