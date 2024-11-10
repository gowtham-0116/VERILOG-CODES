module upcounter(input reset,clk,en, 
                 output reg [7:0] count);
  
  always@(posedge clk) begin
    if(reset)
      count<=0;
    else if(en)
        count<=count+1;
    else
        count<=count;
  end
endmodule
