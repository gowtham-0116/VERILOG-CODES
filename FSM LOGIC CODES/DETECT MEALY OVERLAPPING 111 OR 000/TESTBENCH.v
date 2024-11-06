module tb;
  reg clk,reset,c;
  wire d;
  wire [3:0] state,next_state;
  mealy_ol_111_000 mealy(clk,reset,c,d);
  always #5 clk=~clk;  
  initial begin
     clk=0;
     c=0;
     reset=0;#5;
     reset=1;
     #10 c=1;
     #10 c=0;
     #10 c=0;
     #10 c=0;
     #10 c=1;
     #10 c=0;
     #10 c=1;
     #10 c=1;
     #10 c=1;
     #10 c=0;
     #10 c=1;
     #10 c=1;
     #10 c=1;
     #10 c=0;
     #10 c=0;
     #10 c=0;
     #50 $finish;
  end 
  initial begin
    $monitor(" reset=%b, c=%b, d=%b, clk=%b",reset,c,d,clk);
  end  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end  
endmodule
