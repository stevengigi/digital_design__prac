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
	if(clr) Dout=0; // 最高優先權 clr= 0->1
	else if(!pre) Dout=1; //第二高優先權 pre=1->0
	else if(!load) Dout=loadsignal; //第三優先權 載入訊號
	else Dout=Din;
end
endmodule
