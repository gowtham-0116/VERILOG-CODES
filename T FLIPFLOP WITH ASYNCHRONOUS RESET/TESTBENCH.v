module tb;
  reg clk, reset;
  reg t;
  wire q, q_bar;
  
  T_ff tff(clk, reset, t, q, q_bar);
  
  always #2 clk = ~clk;
  initial begin
    clk = 0; reset = 0;
    $display("Reset=%b --> q=%b, q_bar=%b", reset, q, q_bar);
    #3 reset = 1;
    $display("Reset=%b --> q=%b, q_bar=%b", reset, q, q_bar);
    
    drive(0); 
    drive(1); 
    drive(1); 
    drive(1); 
    drive(0); 
    #5;
    $finish;
  end
  
  task drive(bit ip);
    @(posedge clk);
    t = ip;
    #1 $display("t=%b --> q=%b, q_bar=%b",t, q, q_bar);
  endtask
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
