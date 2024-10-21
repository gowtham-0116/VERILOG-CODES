module mux_2_1(
  input i0,i1,
  input sel,
  output y);
assign y= sel ? i0 : i1;
endmodule
