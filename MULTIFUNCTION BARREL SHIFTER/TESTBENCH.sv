// Code your testbench here
// or browse Examples
module tb_multifunction_barrel_shifter;
    reg [7:0] data_in;
    reg [2:0] shift_amt;
    reg [1:0] mode;
    wire [7:0] data_out;

    multifunction_barrel_shifter uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .mode(mode),
        .data_out(data_out)
    );

    initial begin
        $monitor("Time: %0t  data_in: %b  shift_amt: %0d  mode: %b  data_out: %b", $time, data_in, shift_amt, mode, data_out);
        data_in = 8'b10101010; shift_amt = 3; mode = 2'b00; #10;
        data_in = 8'b10101010; shift_amt = 3; mode = 2'b01; #10; 
        data_in = 8'b10101010; shift_amt = 3; mode = 2'b10; #10; 
        data_in = 8'b10101010; shift_amt = 3; mode = 2'b11; #10;
        $finish;
    end
      
      initial begin
          $dumpfile("dump.vcd"); $dumpvars;
      end
endmodule
