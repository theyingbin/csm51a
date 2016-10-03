`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2015 09:50:49 PM
// Design Name: 
// Module Name: jkff
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


module jkff(

    input J,
	input K,
	input clk,
	input rst,
	output reg Q
    );

	always @(posedge clk or posedge rst) 
	begin
			if(rst == 1) 
				begin 
				Q <= 0;
				end
			else begin
				case({J, K})
				2'b00: Q <= Q; 
				2'b01: Q <= 1'b0; 
				2'b10: Q <= 1'b1;
				2'b11: Q <= ~Q; 
				endcase
			end
	end
   
    
endmodule
