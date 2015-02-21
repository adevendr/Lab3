`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:39:50 02/20/2015 
// Design Name: 
// Module Name:    DLatch 
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
module DLatch(
    input D,
	 input CLK,
    output Q,
    output Qbar
    );
	 wire w1,w2,w3,w4;
	 assign w1 = ~D;
	 nand (w2, CLK, w1);
	 nand (w3, CLK, D);
	 nor (Qbar, Q, w3);
	 nor(Q, Qbar, w2);
	 
endmodule
