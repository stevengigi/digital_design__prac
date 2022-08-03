`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:12 08/03/2022
// Design Name:   four_bits_adder
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/four_bits_adder/four_bits_adder_testbench.v
// Project Name:  four_bits_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: four_bits_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module four_bits_adder_testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Ci;

	// Outputs
	wire [3:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	four_bits_adder uut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		#10;
		A = 0;
		B = 0;
		Ci = 0;

		// Wait 100 ns for global reset to finish
		#1000;
      $finish;
	end
   always #20 A[0]=~A[0];
	always #40 A[1]=~A[1];
	always #80 A[2]=~A[2];
	always #160 A[3]=~A[3];
	always #15 B[0]=~B[0];
	always #30 B[1]=~B[1];
	always #45 B[2]=~B[2];
	always #60 B[3]=~B[3];
	always #40 Ci=~Ci;
endmodule

