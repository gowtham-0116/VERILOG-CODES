module tb_sr_flip_flop;
    reg S; 
    reg R; 
    reg clk;
    reg reset;
    wire Q; 
    wire Q_bar;
  sr_ff_async uut (.S(S), .R(R),.clk(clk),.Q(Q),.Q_bar(Q_bar) ,.reset(reset) );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        S = 0; R = 0; 
        #10;
        S = 1; R = 0;
        #10;
        S = 0; R = 1; 
        #10;
        S = 1; R = 1; 
        #10;
        S = 0; R = 0;
        #10;
        $finish;
    end
    initial begin
      $monitor("Time: %0t | S: %b | R: %b | Q: %b |reset=%b | Q_bar: %b", $time, S, R,reset, Q, Q_bar);
    end
endmodule
