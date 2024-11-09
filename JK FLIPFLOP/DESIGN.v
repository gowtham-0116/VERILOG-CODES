module jk_ff(
  input clk,
  input reset,
  input j,k,
  output reg q,
  output  q_bar);
  
  always@(posedge clk or negedge reset) begin
    if(~reset)
      q<=0;
    else begin
      case({j,k}) 
        2'b00: q<= q;
        2'b01: q<= 0;
        2'b10: q<= 1;
        2'b11: q<= ~q;
        
        endcase
    end
  end
  assign q_bar = ~q;
endmodule
