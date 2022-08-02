`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:58:10 08/02/2022
// Design Name:   gate_level
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/gate_level/gate_level_testb.v
// Project Name:  gate_level
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gate_level
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gate_level_testb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	gate_level uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		#10;
		a=1'b0;
		b=1'b0;
		cin=1'b0;
		#1000;
		$finish;
	end
	 always #20 a=~a;
	 always #40 b=~b;
	 always #80 cin=~cin;
      
endmodule

