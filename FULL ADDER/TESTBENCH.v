module tb_top;
  reg a,b,cin;
  wire s,cout;
  full_adder fa(a,b,cin,s,cout);
  initial begin
    $monitor("At time %0t: a=%b, b=%b, cin=%b, s=%b, cout=%b",$time, a,b,cin,s,cout);
    #2; a=0; b=0; cin=0;
    #2; a=0; b=0; cin=1;
    #2; a=0; b=1; cin=0;
    #2; a=0; b=1; cin=1;
    #2; a=1; b=0; cin=0;
    #2; a=1; b=0; cin=1;
    #2; a=1; b=1; cin=0;
        a=1; b=1; cin=1;
  end 
endmodule
