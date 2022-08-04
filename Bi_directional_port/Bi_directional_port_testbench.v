`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:51:09 08/04/2022
// Design Name:   Bi_directional_port
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/Bi_directional_port/Bi_directional_port_testbench.v
// Project Name:  Bi_directional_port
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bi_directional_port
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Bi_directional_port_testbench;

	// Inputs
	reg Di;
	reg C;

	// Outputs
	wire Do;

	// Bidirs
	wire Dio;

	// Instantiate the Unit Under Test (UUT)
	Bi_directional_port uut (
		.Di(Di), 
		.C(C), 
		.Do(Do), 
		.Dio(Dio)
	);

	initial begin
		// Initialize Inputs
		#10;
		Di = 0;
		C = 0;
		#1000;
      $finish;
	end
   always #10 Di=~Di;
	always #40 C=~C;
endmodule

