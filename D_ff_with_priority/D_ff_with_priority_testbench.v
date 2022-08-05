`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:43:45 08/05/2022
// Design Name:   D_ff_with_priority
// Module Name:   C:/Users/leo/Desktop/FPGA_prac/D_ff_with_priority/D_ff_with_priority_testbench.v
// Project Name:  D_ff_with_priority
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_ff_with_priority
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_ff_with_priority_testbench;

	// Inputs
	reg clk;
	reg clr;
	reg pre;
	reg Din;
	reg load;
	reg loadsignal;

	// Outputs
	wire Dout;

	// Instantiate the Unit Under Test (UUT)
	D_ff_with_priority uut (
		.clk(clk), 
		.clr(clr), 
		.pre(pre), 
		.Din(Din), 
		.load(load), 
		.loadsignal(loadsignal), 
		.Dout(Dout)
	);

	initial begin
		// Initialize Inputs
		#10;
		clk = 0;
		clr = 0;
		pre = 1;
		Din = 0;
		load = 1;
		loadsignal = 0;
		#20;
		pre=0;
		#40;
		pre=1;
		load=0;
		#100;
		load=1;
		clr=1;
		#200;
		clr=0;
		#1000;
		$finish;
      
	end
   always #20 clk=~clk;
	always #10 loadsignal=~loadsignal;
	always #25 Din=~Din;
endmodule

