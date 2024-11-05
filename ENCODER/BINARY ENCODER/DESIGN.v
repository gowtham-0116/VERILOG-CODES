module binary_encoder(
  input [7:0]D,
  output [3:0]Y);
  
  assign Y[0] = D[1] | D[3] | D[5] | D[7];
  assign Y[1] = D[2] | D[3] | D[6] | D[7];
  assign Y[2] = D[4] | D[5] | D[6] | D[7];
endmodule
