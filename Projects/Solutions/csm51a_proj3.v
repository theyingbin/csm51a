`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2015 09:26:39 PM
// Design Name: 
// Module Name: csm51a proj3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module csm51a_proj3(
	input x0,
	input x1,
	input rst,
	input clk,
	output s1, 
	output s0,
	output reg z1,
	output reg z0
);

wire J1;
wire K1; 
wire J0;
wire K0;

jkff JKFF0(J0, K0, clk, rst, s0);
jkff JKFF1(J1, K1, clk, rst, s1); 

always @(posedge clk, posedge rst) begin
		if (!rst) begin
			z1 <= (s1&x1)|(s1&(~s0)&x0);
			z0 <= (s1&(~s0)&x1);
		end
		else begin
			z1 <= 0;
			z0 <= 0;
		end
	end
	
//J1
wire temp1;
and (temp1, s0, x0);
or (J1, x1, s1, temp1);

//K1
wire temp2;
and (temp2, ~s0, x0);
or (K1, temp2, x1);

//J0
and (J0, ~s1, x0);

//K0
wire temp3;
wire temp4;
and (temp3, s1, x0);
and (temp4, ~s1, ~x0);
or (K0, x1, temp3, temp4);

endmodule 
