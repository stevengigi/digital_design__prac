`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:03 08/04/2022 
// Design Name: 
// Module Name:    Bi_directional_port 
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
module Bi_directional_port(
input Di,
input C,
output Do,
inout Dio //當輸入又當輸出(雙向輸出入)
    );
assign  Dio=(C)?Di:1'bz;
assign  Do=Dio;
endmodule
