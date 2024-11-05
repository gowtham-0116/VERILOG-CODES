module tb;
  reg D,clk,reset;
  wire Q;
  sync_d_ff dff(D,clk,reset,Q);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    D=0;
    reset=1;
    #5;
    reset=0;
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
    $monitor("D=%b:clk=%b:reset%b:Q=%b",D,clk,reset,Q);
  end
endmodule
