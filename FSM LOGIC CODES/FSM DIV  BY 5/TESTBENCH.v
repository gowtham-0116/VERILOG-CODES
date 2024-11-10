module tb;
  reg s,reset,clk;
  wire y;
  
  fivediv fsm(s,reset,clk,y);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    reset=1;s=0;
    #15;
    reset=0;
    #15;
    s=0;
    #5;
    s=1;
    #5;
    s=1;
    #5;
    s=1;
    #5;
    s=1;
    #5;
    s=0;
    #5;
    s=1;
    #5;
    #5;
    s=1;
    #5;
    s=1;
    #5;
    reset=1;
    #5;
    reset=0;
    #5;
    s=1;
    #5;
    s=1;
    #5;
    $finish;
  end
  
  initial begin
    $monitor("At time %0t:s=%b,reset=%b,clk=%b,y=%b",$time,s,reset,clk,y);
  end
  
  initial begin 
    $dumpfile("fivediv.vcd");
    $dumpvars;
  end
  
endmodule
    
