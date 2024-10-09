module top_tb;
  reg [3:0] binary;
  wire [3:0] gray;
  b2g_converter b2g(binary,gray);
  initial begin
    $monitor("at time %0t: binary=%b,gray=%b",$time,binary,gray);
    #1;binary = 4'b1011;
    #1;binary = 4'b0111;
    #1;binary = 4'b0101;
    #1;binary = 4'b1100;
       binary = 4'b1111;    
  end
endmodule
