`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:15 08/03/2022 
// Design Name: 
// Module Name:    four_vote_machine 
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
module four_vote_machine(
input [3:0]I,
output reg [2:0]O
    );
always@(I)begin 
	case(I) 
	4'b0000: O=3'b100;
	4'b0001: O=3'b100;
	4'b0010: O=3'b100;
	4'b0011: O=3'b010;
	4'b0100: O=3'b100;
	4'b0101: O=3'b010;
	4'b0110: O=3'b010;
	4'b0111: O=3'b001;
	4'b1000: O=3'b100;
	4'b1001: O=3'b010;
	4'b1010: O=3'b010;
	4'b1011: O=3'b001;
	4'b1100: O=3'b010;
	4'b1101: O=3'b001;
	4'b1110: O=3'b001;
	default: O=3'b001;
	endcase
end

endmodule
