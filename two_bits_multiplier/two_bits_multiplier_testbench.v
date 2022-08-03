`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:05:58 08/03/2022
// Design Name:   two_bits_multiplier
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/two_bits_multiplier/two_bits_multiplier_testbench.v
// Project Name:  two_bits_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: two_bits_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module two_bits_multiplier_testbench;

	// Inputs
	reg clk;
	reg [1:0] A;
	reg [1:0] B;
	reg [3:0] testA;
	reg [3:0] testB;

	// Outputs
	wire [3:0] S;
	wire [7:0] S1;

	// Instantiate the Unit Under Test (UUT)
	two_bits_multiplier uut (
		.clk(clk), 
		.A(A), 
		.B(B), 
		.testA(testA), 
		.testB(testB), 
		.S(S), 
		.S1(S1)
	);

	initial begin
		// Initialize Inputs
		#10;
		clk = 0;
		A = 0;
		B = 0;
		testA = 0;
		testB = 0;
		#20;
		testA=10;
		testB=1;
		#40;
		testB=2;
		#60;
		testB=3;
		#80;
		testB=4;
		#100;
		testB=6;
		#120;
		testB=8;
		#140;
		testB=10;
		#160;
		testB=12;
		
		#1000;
      $finish;  
	end
   always #10 clk=~clk;
	always #10 B[0]=~B[0];
	always #20 B[1]=~B[1];
	always #40 A[0]=~A[0];
	always #80 A[1]=~A[1];
endmodule

