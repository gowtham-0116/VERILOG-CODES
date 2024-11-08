// Code your testbench here
// or browse Examples
module tb_sr_flip_flop_enable;
    reg S; 
    reg R; 
    reg clk; 
    reg enable; 
    wire Q; 
    wire Qn;
    sr_flip_flop_enable uut (.S(S),.R(R),.clk(clk),.enable(enable),.Q(Q),.Qn(Qn)  );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        S = 0; R = 0; enable = 0;
        #10;
        enable = 1;
        S = 1; R = 0; 
        #10;
        enable = 0;
        #10;
        enable = 1;
        S = 0; R = 1; 
        #10;
        enable = 0;
        #10;
        enable = 1;
        S = 1; R = 1; 
        #10;
        enable = 0;
        #10;
        enable = 1;
        S = 0; R = 0; 
        #10;
        $finish;
    end
    initial begin
        $monitor("Time: %0t | S: %b | R: %b | clk: %b | enable: %b | Q: %b | Qn: %b", 
                 $time, S, R, clk, enable, Q, Qn);
    end
endmodule
