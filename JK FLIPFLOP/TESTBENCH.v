module tb;
  reg clk, reset;
  reg j, k;
  wire q, q_bar;
  
  jk_ff dff(clk, reset, j, k, q, q_bar);
  
  always #2 clk = ~clk;
  initial begin
    clk = 0; reset = 0;
    $display("Reset=%b:q=%b, q_bar=%b", reset, q, q_bar);
    #3 reset = 1;
    $display("Reset=%b:q=%b, q_bar=%b", reset, q, q_bar);
    
    drive(2'b00);
    drive(2'b01);
    drive(2'b10);
    drive(2'b11); 
    drive(2'b11); 
    #5;
    $finish;
  end
  
  task drive(bit [1:0] ip);
    @(posedge clk);
    {j,k} = ip;
    #1 $display("j=%b, k=%b:q=%b, q_bar=%b",j, k, q, q_bar);
  endtask
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
