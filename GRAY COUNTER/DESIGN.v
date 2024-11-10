module graycounter(
  			input reset,clk,
  output reg [3:0] out);
  
  reg [3:0] count;
  reg q0,q1,q2;
  
  always@(posedge clk) begin
    if(reset)
      count<=0;
    else begin
      count<=count+1;
      q2=count[3]^count[2];
      q1=count[2]^count[1];
      q0=count[1]^count[0];
      out={count[3],q2,q1,q0};      
    end
  end
endmodule
