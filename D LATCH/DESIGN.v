module dlatch(input d,rst,en,
	      output reg y);

      always@(*) begin		
	      if(rst)
		      y=0;
	      else if(en)
		      y=d;
        else
          y=y;
      end
endmodule
