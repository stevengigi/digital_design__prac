`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:47:25 08/04/2022
// Design Name:   Encoder
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/Encoder/Encoder_testbench.v
// Project Name:  Encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Encoder_testbench;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [2:0] b;

	// Instantiate the Unit Under Test (UUT)
	Encoder uut (
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		#10;
		a = 0;

		// Wait 100 ns for global reset to finish
		#1000;
      $finish;
		// Add stimulus here
	end
   always #10 a=(a>255)?0:a+2;
endmodule

