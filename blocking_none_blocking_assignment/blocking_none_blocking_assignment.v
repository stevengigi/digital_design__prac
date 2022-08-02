`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:18 08/02/2022 
// Design Name: 
// Module Name:    blocking_none_blocking_assignment 
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
module blocking_none_blocking_assignment(
input  D,
input clk,
input rst,
output reg [3:0]x,
output reg [3:0]y
    );
always@(posedge clk)
begin
	//blocking
	x[0]=D;
	x[1]=x[0];
	x[2]=x[1];
	x[3]=x[2];
	//none_blocking
	y[0] <= D;
	y[1] <= y[0];
	y[2] <= y[1];
	y[3] <= y[2];
end
endmodule
