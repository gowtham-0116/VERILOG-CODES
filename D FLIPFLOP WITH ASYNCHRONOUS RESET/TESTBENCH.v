module tb_DFF();
reg D;
reg clk;
reg reset;
wire Q;

async_d_ff dut(D,clk,reset,Q);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 reset=1;
 D <= 0;
 #100;
 reset=0;
 D <= 1;
 #100;
 D <= 0;
 #100;
 D <= 1;
  $finish;
end 
   initial begin
     $dumpfile("async_d_ff.vcd");
    $dumpvars(1);
  end
endmodule
