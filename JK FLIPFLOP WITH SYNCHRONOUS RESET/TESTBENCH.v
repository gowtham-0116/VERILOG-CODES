module TB;
    reg j;
    reg k;
    reg clk;
    reg reset;
    wire q;
    wire q_bar;
  jk_ff dut (.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        j = 0;
        k = 0;
        reset = 1; 
        #10 reset = 0;
        j = 0; k = 0;
        #10;
        j = 1; k = 0;
        #10;
        j = 0; k = 1;
        #10;
        j = 1; k = 1;
        #20;
        $finish;
    end
    initial begin
      $monitor("At time %0t: j=%b, k=%b, q=%b, q_bar=%b", $time, j, k, q, q_bar);
    end
endmodule
