`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:13 08/03/2022
// Design Name:   four_vote_machine
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/four_vote_machine/four_vote_machine_testbench.v
// Project Name:  four_vote_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_vote_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_vote_machine_testbench;

	// Inputs
	reg [3:0] I;

	// Outputs
	wire [2:0] O;

	// Instantiate the Unit Under Test (UUT)
	four_vote_machine uut (
		.I(I), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		#10;
		I = 4'b0000;
		#1000;
      $finish; 
		// Add stimulus here
	end
   always #20 I[0]=~I[0];
	always #40 I[1]=~I[1];
	always #80 I[2]=~I[2];
	always #160 I[3]=~I[3];
endmodule

