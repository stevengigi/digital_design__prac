`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:45:34 08/03/2022
// Design Name:   comparator_blocker
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/comparator_blocker/comparator_blocker_testbench.v
// Project Name:  comparator_blocker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator_blocker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_blocker_testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire ALB;
	wire AEB;
	wire ASB;
	wire ALB1;
	wire AEB1;
	wire ASB1;
	wire ALB2;
	wire AEB2;
	wire ASB2;

	// Instantiate the Unit Under Test (UUT)
	comparator_blocker uut (
		.A(A), 
		.B(B), 
		.ALB(ALB), 
		.AEB(AEB), 
		.ASB(ASB), 
		.ALB1(ALB1), 
		.AEB1(AEB1), 
		.ASB1(ASB1), 
		.ALB2(ALB2), 
		.AEB2(AEB2), 
		.ASB2(ASB2)
	);

	initial begin
		// Initialize Inputs
		#10;
		A = 0;
		B = 5;
		// Wait 100 ns for global reset to finish
		forever
		#20 A=(A>15)?0:A+1;
		#1000;
      $finish;
		// Add stimulus here

	end
 
endmodule

