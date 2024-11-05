module tb;
  reg [7:0]D;
  wire [2:0]Y;
   
  priority_encoder pe(D,Y);
  initial begin
    $monitor("D=%b -> Y=%b",D,Y);
    repeat(5) begin
      D=$random; #1;
    end
  end
endmodule
