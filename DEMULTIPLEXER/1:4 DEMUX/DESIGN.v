module demux_1_4(
  input d,
  input [1:0]sel,
  output y0,
  output y1,
  output y2,
  output y3);
  
  assign y0= (sel==2'b00) ? d : 0;
  assign y1= (sel==2'b01) ? d : 0;
  assign y2= (sel==2'b10) ? d : 0;
  assign y3= (sel==2'b11) ? d : 0;
endmodule
