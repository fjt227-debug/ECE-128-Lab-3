`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 05:03:47 PM
// Design Name: 
// Module Name: FourBitFullAdderDisplay
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

module FourBitFullAdderDisplay(A1,B1,CI,seg, an, dp, CO);
    input [3:0] A1,B1;
    input CI;
    output [6:0] seg;
    output [3:0] an;
    output dp;
    output CO;

    wire [3:0] sum;

    FourBitFARipple u1(.A1(A1), .B1(B1), .CI(CI), .S1(sum), .CO(CO));
    BCDtoSevenSegmentDisplay1 u2(.data_in(sum), .seg(seg), .an(an), .dp(dp));
  
endmodule
