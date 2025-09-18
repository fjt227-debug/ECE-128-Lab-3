`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 07:01:42 PM
// Design Name: 
// Module Name: FourBitFARipple
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


module FourBitFARipple(A1,B1,CI,S1,CO);

input [3:0] A1,B1;
input CI;

output[3:0] S1;
output CO;

wire co0, co1, co2;

OneBitFA FA0 (.A1(A1[0]), .B1(B1[0]), .CI(CI),.S1(S1[0]), .CO(co0));
OneBitFA FA1 (.A1(A1[1]), .B1(B1[1]), .CI(co0),.S1(S1[1]), .CO(co1));
OneBitFA FA2 (.A1(A1[2]), .B1(B1[2]), .CI(co1),.S1(S1[2]), .CO(co2));
OneBitFA FA3 (.A1(A1[3]), .B1(B1[3]), .CI(co2),.S1(S1[3]), .CO(CO));


endmodule
