module upcounter(
        input [7:0] data,
        input load,reset,clk,en,
        output reg [7:0] count);

always@(posedge clk) begin
        if (reset)
                count<=0;
        else if (load)
                count<=data;
        else if (en)
                count<=count+1;
        else
                count<=count;
        end
endmodule
