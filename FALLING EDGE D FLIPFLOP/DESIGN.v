module falling_edge_dff(
  input D,
  input clk,
  output reg Q);
  
  always@(negedge clk) begin
    Q<=D;
  end
endmodule
