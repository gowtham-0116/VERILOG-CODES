module top_tb;
  reg [3:0] gray;
  wire [3:0] binary;
  g2b_converter g2b(gray,binary);
  initial begin
    $monitor("at time %0t: gray=%b,binary=%b",$time,gray,binary);
    #2; gray = 4'b0001;
    #2; gray = 4'b0010;
    #2; gray = 4'b0011;
     gray = 4'b1000;
  end 
endmodule
