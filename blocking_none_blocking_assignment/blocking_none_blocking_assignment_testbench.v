`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:33:57 08/02/2022
// Design Name:   blocking_none_blocking_assignment
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/blocking_none_blocking_assignment/blocking_none_blocking_assignment_testbench.v
// Project Name:  blocking_none_blocking_assignment
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blocking_none_blocking_assignment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blocking_none_blocking_assignment_testbench;

	// Inputs
	reg D;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] x;
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	blocking_none_blocking_assignment uut (
		.D(D), 
		.clk(clk), 
		.rst(rst), 
		.x(x), 
		.y(y)
	);

	initial begin
		#10;
		D=1'b0;
		clk=1'b0;
		#1000;
		$finish;
	end
	always #10 clk=~clk;
   always #20 D=~D;
endmodule

