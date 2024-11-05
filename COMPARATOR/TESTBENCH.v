module tb;
  reg [3:0]A;
  reg [3:0]B;
  wire A_grt_B;
  wire A_les_B;
  wire A_eqt_B;
  
  comparator com(A,B,A_grt_B,A_les_B,A_eqt_B);
  initial begin
    $monitor("A=%b:B=%b:A_grt_B=%b:A_les_B=%b:A_eqt_B=%b",A,B,A_grt_B,A_les_B,A_eqt_B);
    repeat(5) begin
      A=$random; 
      B=$random; #5;
    end
      $finish;
  end
endmodule
