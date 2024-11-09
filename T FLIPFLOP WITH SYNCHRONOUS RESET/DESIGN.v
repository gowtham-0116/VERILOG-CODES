module T_ff (
  input clk, reset,
  input t,
  output reg q,
  output q_bar
  );
  
  always@(posedge clk) begin
      if(!reset) q <= 0;
    else begin
      q <= (t?~q:q);
    end
  end
  assign q_bar = ~q;
endmodule
