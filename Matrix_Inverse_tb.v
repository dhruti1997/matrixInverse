`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:20:33 10/07/2016
// Design Name:   la_ment
// 
// Project Name:  LA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: la_ment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Matrix_Inverse_tb;

	// Inputs
	reg clk;
	reg reset;

	// inv_puts
	wire [15:0] inv_0;
	wire [15:0] inv_1;
	wire [15:0] inv_2;
	wire [15:0] inv_3;
	wire [15:0] inv_4;
	wire [15:0] inv_5;
	wire [15:0] inv_6;
	wire [15:0] inv_7;
	wire [15:0] inv_8;
	wire [15:0] inv_9;
	wire [15:0] inv_10;
	wire [15:0] inv_11;
	wire [15:0] inv_12;
	wire [15:0] inv_13;
	wire [15:0] inv_14;
	wire [15:0] inv_15;
	wire [15:0] inv_16;
	wire [15:0] inv_17;
	wire [15:0] inv_18;
	wire [15:0] inv_19;
	wire [15:0] inv_20;
	wire [15:0] inv_21;
	wire [15:0] inv_22;
	wire [15:0] inv_23;
	wire [15:0] inv_24;

	// Instantiate the Unit Under Test (UUT)
	Matrix_Inverse uut (
		.clk(clk), 
		.reset(reset), 
		.inv_0(inv_0), 
		.inv_1(inv_1), 
		.inv_2(inv_2), 
		.inv_3(inv_3), 
		.inv_4(inv_4), 
		.inv_5(inv_5), 
		.inv_6(inv_6), 
		.inv_7(inv_7), 
		.inv_8(inv_8), 
		.inv_9(inv_9), 
		.inv_10(inv_10), 
		.inv_11(inv_11), 
		.inv_12(inv_12), 
		.inv_13(inv_13), 
		.inv_14(inv_14), 
		.inv_15(inv_15), 
		.inv_16(inv_16), 
		.inv_17(inv_17), 
		.inv_18(inv_18), 
		.inv_19(inv_19), 
		.inv_20(inv_20), 
		.inv_21(inv_21), 
		.inv_22(inv_22), 
		.inv_23(inv_23), 
		.inv_24(inv_24)
	);
	
	initial begin
		// Initializing Inputs
		clk = 1'b1;
		reset = 0;
		#100;
		reset = 1;
		clk = 0;
		#100;
		clk = 1;
	end
      
endmodule