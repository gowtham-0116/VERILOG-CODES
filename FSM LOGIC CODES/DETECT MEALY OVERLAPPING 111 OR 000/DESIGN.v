module mealy_ol_111_000(input clk,reset,c,output reg d);
  parameter s0=4'h1;
  parameter s1=4'h2;
  parameter s2=4'h3;
  parameter s3=4'h4;
  parameter s4=4'h5;
  
  bit[3:0] state,next_state;
  
  always@(posedge clk or negedge reset)begin
    if(!reset)
      state <= s0;
    else
      state <= next_state;
  end
    always@(state or c)begin
      case(state)
        s0:begin
        if(c==0)
          next_state=s3;
        else
          next_state=s1;
        end
        
         s1:begin
        if(c==0)
          next_state=s3;
        else
          next_state=s2;
        end
        
         s2:begin
        if(c==0)
          next_state=s3;
        else
          next_state=s2;
        end
        
         s3:begin
        if(c==0)
          next_state=s4;
        else
          next_state=s1;
        end
         s4:begin
           if(c==0)
          next_state=s4;
        else
          next_state=s1;
         end
      endcase
    end
        assign d = (state==s4)&&(c==0) ? 1: 0;
      
endmodule
