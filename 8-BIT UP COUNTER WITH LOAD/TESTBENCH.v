module tb;
  reg [7:0] data;
  reg load,reset,clk,en;
  wire [7:0] count;
  
  upcounter counter(data,load,reset,clk,en,count);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    reset=1;en=0;data=8'ha0;load=0;
    #10;
    reset=0;en=1;load=1;
    #10;
    load=0;
    #5;
    en=1;
    #5;
 
    $finish;
  end
  
  initial begin
    $monitor("At time %0t:data=%b,load=%b,reset=%b,clk=%b,en=%b,count=%b",$time,data,load,reset,clk,en,count);
  end
  
  initial begin
    $dumpfile("upcounter.vcd");
    $dumpvars;
  end
endmodule
