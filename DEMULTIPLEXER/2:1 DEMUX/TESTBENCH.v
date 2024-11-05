module tb;
  reg d,sel;
  wire y0,y1;
  demux_2_1 demux(d,sel,y0,y1);
  initial begin
    $monitor("sel=%h:d=%h:y0=%h:y1=%h",d,sel,y0,y1);
     sel=0;d=0; #1;
     sel=0;d=1; #1;
     sel=1;d=0; #1;
     sel=1;d=1; #1;
    
  end
  endmodule
