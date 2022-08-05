`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:21:57 08/05/2022 
// Design Name: 
// Module Name:    D_ff_with_priority 
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
module D_ff_with_priority(
input clk,
input clr,
input pre,
input Din,
input load,
input loadsignal,
output reg Dout
    );
always@(posedge clk or posedge clr or negedge pre) begin
	if(clr) Dout=0; // �̰��u���v clr= 0->1
	else if(!pre) Dout=1; //�ĤG���u���v pre=1->0
	else if(!load) Dout=loadsignal; //�ĤT�u���v ���J�T��
	else Dout=Din;
end
endmodule
