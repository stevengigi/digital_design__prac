`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:39 08/04/2022 
// Design Name: 
// Module Name:    Encoder 
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
module Encoder(
input [7:0]a,
output reg [2:0]b
    );
always@(a)begin
	if(a[7]==1) begin b=3'b111; end 
	if(a[6]==1) begin b=3'b110; end
	if(a[5]==1) begin b=3'b101; end
	if(a[4]==1) begin b=3'b100; end
	if(a[3]==1) begin b=3'b011; end
	if(a[2]==1) begin b=3'b010; end
	if(a[1]==1) begin b=3'b001; end 
	if(a[0]==1) begin b=3'b000; end
end

endmodule
