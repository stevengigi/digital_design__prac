`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:36 08/04/2022 
// Design Name: 
// Module Name:    tri_state_port 
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
module tri_state_port(
input I, //input
input C, //control
output reg buff1, //output
output reg buff2,
output reg buff3,
output reg buff4
    );
always@(I or C)begin
	buff1=(C)?I:1'bz;
	buff2=(C)?1'bz:I;
	buff3=(C)?~I:1'bz;
	buff4=(C)?1'bz:~I;
end
endmodule
