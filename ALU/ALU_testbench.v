`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:31 08/03/2022
// Design Name:   ALU
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/ALU/ALU_testbench.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_testbench;

	// Inputs
	reg [1:0] S;
	reg [2:0] A;
	reg [2:0] B;

	// Outputs
	wire [4:0] ans;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.S(S), 
		.A(A), 
		.B(B), 
		.ans(ans)
	);

	initial begin
		// Initialize Inputs
		#10;
		S = 0;
		A = 0;
		B = 0;
		#1000;
      $finish;
	end
   always #10 S=(S>3)?0:S+1;
	always #20 A=(A>7)?0:A+1;
	always #40 B=(B>7)?0:B+1;
endmodule

