`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:46 08/03/2022
// Design Name:   four_bits_two_complement
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/four_bits_two_complement/four_bits_two_complement_testbench.v
// Project Name:  four_bits_two_complement
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bits_two_complement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bits_two_complement_testbench;

	// Inputs
	reg [3:0] a;
	reg clk;

	// Outputs
	wire [3:0] b;

	// Instantiate the Unit Under Test (UUT)
	four_bits_two_complement uut (
		.a(a), 
		.clk(clk), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		#10;
		a[3:0] = 4'b0000;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#1000;
      $finish;
		// Add stimulus here

	end
   always #10 clk=~clk;
	always #20 a[0]=~a[0];
	always #40 a[1]=~a[1];
	always #80 a[2]=~a[2];
	always #160 a[3]=~a[3];
endmodule

