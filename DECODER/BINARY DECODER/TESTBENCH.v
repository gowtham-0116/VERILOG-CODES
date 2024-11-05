module tb;
  reg[3:0]D;
  wire[7:0]Y;
  
  binary_decoder bd(D,Y);
  initial begin
    $monitor("D=%b -> Y=%b",D,Y);
    repeat(5) begin
      D=$random; #1;
    end 
  end
endmodule
