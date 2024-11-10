module bidirectional_shift_register (
    input clk,
    input rst,
    input d,
    input left,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 0;
        else if (left) 
            q <= {q[2:0], d}; 
        else 
            q <= {1'b0, q[3:1]}; 
    end
endmodule
