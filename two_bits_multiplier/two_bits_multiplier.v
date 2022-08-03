`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:26 08/03/2022 
// Design Name: 
// Module Name:    two_bits_multiplier 
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
module two_bits_multiplier(
input clk,
input [1:0]A,
input [1:0]B,
input [3:0]testA,
input [3:0]testB,
output reg [3:0]S,
output reg [7:0]S1
    );
always@(posedge clk)begin 
	S[3]=A[1] & A[0] & B[1] & B[0];
	S[2]=(A[1] & ~A[0] & B[1]) | (A[1] & A[0] & B[1] & ~B[0]);
	S[1]=(~A[1] & A[0] & B[1]) | (A[1] & ~A[0] & B[0]) |(A[1] & A[0] & B[1] & ~B[0]) |(A[1] & A[0] & ~B[1] & B[0]);
	S[0]=(~A[1] & A[0] & B[0]) | (A[1] & A[0] & B[0]);
	S1=testA *testB;
end

endmodule
