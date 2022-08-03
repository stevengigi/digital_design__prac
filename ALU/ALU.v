`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:07 08/03/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
input [1:0]S, //function select
input [2:0]A,
input [2:0]B,
output reg [4:0]ans
    );
always@(S or A or B)begin
	case(S)
	0: ans = A+B;
	1: ans = A-B;
	2: ans = A & B;
	3: ans = A | B;
	default : ans=5'd0;
	endcase
end
endmodule
