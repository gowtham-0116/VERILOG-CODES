module comparator(
  input [3:0] A,
  input [3:0] B,
  output reg A_grt_B,
  output reg A_les_B,
  output reg A_eqt_B);
  always@(*)begin
    A_grt_B=0;
    A_les_B=0;
    A_eqt_B=0;
    if(A>B)
      A_grt_B=1'b1;
    else if(A<B)
      A_les_B=1'b1;
    else
      A_eqt_B=1'b1;
  end
endmodule
