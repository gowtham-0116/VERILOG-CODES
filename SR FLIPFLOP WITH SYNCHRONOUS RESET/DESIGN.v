// Code your design here
module sr_ff_async(
  input clk,
  input S,R,
  input reset,
  output reg Q,
  output reg Q_bar);
  always@(posedge clk) begin
    if(reset)
      Q<=0;
    else begin
    case({S,R})
      2'b00: Q <= Q;
      2'b01: Q <= 1'b0;
      2'b10: Q <= 1'b1;
      2'b11: Q <= 1'bx;
    endcase
    end
  end
  assign Q_bar = ~Q;
endmodule
