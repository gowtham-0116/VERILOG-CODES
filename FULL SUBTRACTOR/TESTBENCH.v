module tb_top;
  reg a,b,cin;
  wire D,B;
  full_subtractor fs(a,b,cin,D,B);
  initial begin
    $monitor("At time %0t: a=%b,b=%b;cin=%b;D=%b;B=%b",$time,a,b,cin,D,B);
    #2; a=0; b=0; cin=0;
    #2; a=0; b=0; cin=1;
    #2; a=0; b=1; cin=0;
    #2; a=0; b=1; cin=1;
    #2; a=1; b=0; cin=0;
    #2; a=1; b=0; cin=1;
    #2; a=1; b=1; cin=0;
    #2; a=1; b=1; cin=1;
  end 
endmodule
