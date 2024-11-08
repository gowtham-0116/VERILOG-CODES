module sr_flip_flop_enable (
    input wire S,     
    input wire R,      
    input wire clk,     
    input wire enable, 
    output reg Q,      
    output reg Qn     
);
    always @(posedge clk) begin
        if (enable) begin
            if (S && !R) begin
                Q <= 1'b1;  
                Qn <= 1'b0; 
            end else if (!S && R) begin
                Q <= 1'b0;
                Qn <= 1'b1;
            end     
        end
    end
endmodule
