module three_consecutive_1s_mealy_overlapping(
  input clk,reset,c,
  output d);
  parameter s0=4'h1;
  parameter s1=4'h2;
  parameter s2=4'h3;
  
  bit[3:0] state,next_state;
  
  always@(posedge clk or negedge reset)begin
    if(reset)
      state <= s0;
    else 
      state <= next_state;
  end
  always@(state or c)begin
    case(state)
      s0:begin
        if(c==0) 
          next_state=s0;
        else
          next_state=s1;
      end
       s1:begin
            if(c==0)
              next_state=s0;
            else
              next_state=s2;
          end
       s2:begin
            if(c==0)
               next_state=s0;
            else
               next_state=s2;
           end
            endcase
         end
  assign d=(state==s2) && (c==1) ? 1:0;
      
      endmodule
