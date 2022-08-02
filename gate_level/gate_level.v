`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:25 08/02/2022 
// Design Name: 
// Module Name:    gate_level 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module gate_level(
input clk,rst,
input  a,
input  b,
input  cin,
output  sum,
output  carry
    );

	
	assign sum= a ^ b ^ cin;
	assign carry=(a&b)|(cin&b)|(cin&a);


endmodule

