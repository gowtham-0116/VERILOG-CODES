module tb_shift_register_4bit;
    reg clk;
    reg rst;
    reg d;
    wire [3:0] q;

    shift_register_4bit uut (.clk(clk), .rst(rst), .d(d), .q(q));

    initial begin
        clk = 0; rst = 1; d = 0;
        #10 rst = 0; d = 1;
        #10 clk = 1; #10 clk = 0;
        #10 d = 0;
        #10 clk = 1; #10 clk = 0;
        #10 $finish;
    end
    always #5 clk = ~clk; 
endmodule
