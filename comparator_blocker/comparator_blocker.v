`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:36 08/03/2022 
// Design Name: 
// Module Name:    comparator_blocker 
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
module comparator_blocker(
input [3:0]A,
input [3:0]B,
output reg ALB,AEB,ASB,ALB1,AEB1,ASB1,ALB2,AEB2,ASB2
    );
//使用if 
always@(A or B)begin 
	if(A>B)begin
	ALB=1;
	AEB=0;
	ASB=0;
	end
	else if(A==B)begin
	ALB=0;
	AEB=1;
	ASB=0;
	end
	else begin
	ALB=0;
	AEB=0;
	ASB=1;
	end
end
//使用布林代數
always@(A or B)begin 
	ALB1=(A>B);
	AEB1=(A==B);
	ASB1=(A<B);
end
always@(A or B)begin 
	ALB2=(A>B)?1:0;
	AEB2=(A==B)?1:0;
	ASB2=(A<B)?1:0;
end
endmodule
