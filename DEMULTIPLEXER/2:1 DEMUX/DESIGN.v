module demux_2_1(
  input d,
  input  sel,
  output  y0,
  output  y1);
  
  assign y0= (sel==0) ? d : 0;
  assign y1= (sel==1) ? d : 0;
    endmodule
