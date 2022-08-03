`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:16 08/03/2022 
// Design Name: 
// Module Name:    four_bits_adder 
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
module four_bits_adder( 
input [3:0]A,
input [3:0]B,
input Ci,
output [3:0]S,
output Cout
    );
assign {Cout,S}=A+B+Ci;

endmodule
