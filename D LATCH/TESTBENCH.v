// Code your testbench here
// or browse Examples
module Tb;
	reg d,rst,en;
	wire y;

	dlatch latch(d,rst,en,y);

	initial begin	
	      $monitor("At time %0t:d=%b,rst=%b,en=%b,y=%b",$time,d,rst,en,y);
      repeat(20) begin
				rst=$random;
				en=$random;
				d=$random;#1;
			end
		end
endmodule
