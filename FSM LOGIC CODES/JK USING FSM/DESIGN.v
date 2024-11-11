module jkfsm(input j,k,reset,clk,
            output reg y);
  
  parameter A=2'h0,
  			B=2'h1;
  
  reg [1:0] state,next_state;
  
  always@(posedge clk or posedge reset) begin
    if(reset)
      state<=A;
    else
      state<=next_state;
  end
  
  always@(j or k or state) begin
    case(state)
      A:begin
        if(j==0)
          next_state=A;
        else
          next_state=B;
      end
      
      B:begin
        if(k==0)
          next_state=B;
        else
          next_state=A;
      end
      
      default:next_state=A;
      
    endcase
  end
  
  always@(state) begin
    case(state)
      A:y=0;
      B:y=1;
      default:y=0;
    endcase
  end
  
endmodule
