`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:26:57 08/04/2022
// Design Name:   tri_state_port
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/tri_state_port/tri_state_port_testbench.v
// Project Name:  tri_state_port
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tri_state_port
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tri_state_port_testbench;

	// Inputs
	reg I;
	reg C;

	// Outputs
	wire buff1;
	wire buff2;
	wire buff3;
	wire buff4;

	// Instantiate the Unit Under Test (UUT)
	tri_state_port uut (
		.I(I), 
		.C(C), 
		.buff1(buff1), 
		.buff2(buff2), 
		.buff3(buff3), 
		.buff4(buff4)
	);

	initial begin
		// Initialize Inputs
		#10;
		I = 0;
		C = 0;
		
		// Wait 100 ns for global reset to finish
		#1000;
		$finish;
	end
   always #10 I=~I;
	always #40 C=~C;
endmodule

