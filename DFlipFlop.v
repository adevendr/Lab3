`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:57:15 02/20/2015 
// Design Name: 
// Module Name:    DFlipFlop 
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
module DFlipFlop(
    input D,
    input CLK,
    output Q,
    output Qbar
    );
	 wire outlatch1, qlatch1;
	 DLatch dl1(.D(D), .CLK(~CLK), .Q(outlatch1), .Qbar(qlatch1) );
	 DLatch dl2(.D(outlatch1), .CLK(CLK), .Q(Q), .Qbar(Qbar) );

endmodule
