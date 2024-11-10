module tb_bidirectional_shift_register;
    reg clk;
    reg rst;
    reg d;
    reg left;
    wire [3:0] q;
    bidirectional_shift_register dut (.clk(clk),.rst(rst),.d(d),.left(left),.q(q));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        rst = 1;  
        left = 0;
        d = 0;
        #10;
        rst = 0;
        left = 1;
        d = 1;  
        #10; 
        d = 0; 
        #10; 
        d = 1; 
        #10; 
        left = 0; 
        #10;
        d = 1;  
        #10; 
        left = 0; 
        #10;
        left = 1; 
        d = 0;
        #10;
        rst = 1;
        #1
