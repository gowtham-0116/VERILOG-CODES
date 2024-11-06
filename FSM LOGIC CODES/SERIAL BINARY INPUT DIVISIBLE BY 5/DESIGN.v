module fivediv(input s,reset,clk,
               output y);
  
  parameter A=5'h0,
  			B=5'h1,
  			C=5'h2,
  			D=5'h3,
  			E=5'h4;
  
  reg [4:0] state,next_state;
  
  always@(posedge clk or posedge reset) begin
    if(reset)
      state<=A;
    else
      state<=next_state;
  end
  
  always@(s or state) begin
    case(state)
      A:begin
        if(s==0)
          next_state=A;
        else
          next_state=B;
      end
      
      B:begin
        if(s==0)
          next_state=C;
        else
          next_state=D;
      end
      
      C:begin
        if(s==0)
          next_state=E;
        else
          next_state=A;
      end
      
      D:begin
        if(s==0)
          next_state=B;
        else
          next_state=C;
      end
      
      E:begin
        if(s==0)
          next_state=D;
        else
          next_state=E;
      end
      default:next_state=A;
    endcase
  end
  
  assign y=(state==A)?1:0;
  
endmodule
  
