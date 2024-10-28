module async_d_ff (
    input D,clk,reset,
    output reg Q
);

always @ (posedge clk or posedge reset) begin
    if (reset)
        Q <= 0;
    else
        Q <= D;
end

endmodule
