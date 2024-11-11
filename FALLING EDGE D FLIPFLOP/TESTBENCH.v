// Code your testbench here
// or browse Examples
module tb;
  reg D,clk;
  wire Q;
  falling_edge_dff dff(D,clk,Q);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    D=0;
    
    #40;
    
    D=1;
    #5;
    D=0;
    #5;
    D=1;
    #5;
    D=0;
    #5;
    D=1;
    #5;
    $finish;
  end
  initial begin
    $monitor("D=%b:clk=%b:Q=%b",D,clk,Q);
  end
endmodule
