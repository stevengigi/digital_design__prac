`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:14 08/03/2022 
// Design Name: 
// Module Name:    four_bits_two_complement 
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
module four_bits_two_complement(
input [3:0]a,
input clk,
output reg [3:0]b
    );
//資料流層次 assign 敘述 來描述布林代數
//assign b[0]=a[0];
//assign b[1]=a[1] ^ a[0];
//assign b[2]=a[2] ^(a[0] | a[1]);
//assign b[3]=a[3] ^(a[0] | a[1] | a[2]);
always@(posedge clk)begin
	b[0]=a[0];
	b[1]=a[1] ^ a[0];
	b[2]=a[2] ^(a[0] | a[1]);
	b[3]=a[3] ^(a[0] | a[1] | a[2]);
end
endmodule
