//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2015 09:54:52 PM
// Design Name: 
// Module Name: csm51a_proj3_tb
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


module csm51a_proj3_tb;

	// Inputs
	reg x0;
	reg x1;
	reg clk;
	reg rst;

	// Outputs
	wire z1;
	wire z0;
	wire s1;
	wire s0;

	// Instantiate the Unit Under Test (UUT)
	csm51a_proj3 uut (
		.x0(x0), 
		.x1(x1), 
		.s0(s0), 
		.s1(s1), 
		.rst(rst), 
		.clk(clk),
		.z1(z1), 
		.z0(z0)
	);

initial begin
clk=1'b1;
forever #5 clk=~clk;
end

	initial begin
		
		x0 = 0;
		x1 = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		rst = 0;
		x0 = 0;
		x1 = 0;
		#10;
        
		
		// Test Case #1 - Dime, Nickel,Dime 
		rst = 0;
		x0 = 1;
		x1 = 1;
		#10
		
		
		x0 = 1;
		x1 = 0;
		#10
		
		x0 = 1;
		x1 = 1;
		#10
		
		
		//Reset
		x0 = 0;
		x1 = 0;
		rst = 1;
		#10
		
		// Test Case 2 - 4 Nickels (N N N N)
        rst = 0;
		x0 = 1;
		x1 = 0;
		#10;

        rst = 0;
		x0 = 1; 
		x1 = 0;
		#10;

        rst = 0;
		x0 = 1;
		x1 = 0;
		#10;

        rst = 0;
		x0 = 1;
		x1 = 0;
		#10;
	
		//Reset
		x0 = 0;
		x1 = 0;
		rst = 1;
		#10
	
		// Test Case #3 - Two Dimes (D D)
		rst = 0;
		x0 = 1;
		x1 = 1;
		#10
		
		rst = 0;
		x0 = 1;
		x1 = 1;
		#10
		
		//Reset
		x0 = 0;
		x1 = 0;
		rst = 1;
		#10
	
	
		//Test Case #4 - reset
		
		rst = 0;
		x1 = 1;
		x0 = 1;
		#10
		
		rst = 1;
		x1 = 0;
		x0 = 0;
	
	
	end
	
      
endmodule