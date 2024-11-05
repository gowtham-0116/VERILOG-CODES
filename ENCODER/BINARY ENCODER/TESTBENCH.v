module tb;
  reg[7:0]D;
  wire[3:0]Y;
  int i;
  binary_encoder be(D,Y);
  initial begin
     D=8'b1; #1;
    for(i=0; i<8; i++) begin
      $display("D = %h(in dec:%0d) -> Y = %0h", D, i, Y);
      D=D<<1; #1;
    end
  end
  
endmodule
