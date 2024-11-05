module tb;
  reg d;
  reg [1:0]sel;
  wire y0,y1,y2,y3;
  demux_1_4 demux(d,sel,y0,y1,y2,y3);
  initial begin
    $monitor("d=%h:sel=%h:y0=%h:y1=%h:y2=%h:y3=%h",d,sel,y0,y1,y2,y3);
     sel=2'b00;d=0; #1
     sel=2'b00;d=1; #1
     sel=2'b01;d=0; #1
     sel=2'b01;d=1; #1
     sel=2'b10;d=0; #1
     sel=2'b10;d=1; #1
     sel=2'b11;d=0; #1
     sel=2'b11;d=1; #1
    $finish;
    
  end
endmodule
