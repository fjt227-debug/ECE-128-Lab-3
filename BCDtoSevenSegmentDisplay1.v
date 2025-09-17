`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 05:01:29 PM
// Design Name: 
// Module Name: BCDtoSevenSegmentDisplay1
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


module BCDtoSevenSegmentDisplay1(
input wire [3:0] data_in,
    output reg [6:0] seg,
    output wire [3:0] an,
    output wire dp);
    always @* begin
        case (data_in)
           4'b0000: seg = 7'b0000001;
           4'b0001: seg = 7'b1001111;
           4'b0010: seg = 7'b0010010;
           4'b0011: seg = 7'b0000110;
           4'b0100: seg = 7'b1001100;
           4'b0101: seg = 7'b0100100;
           4'b0110: seg = 7'b0100000;
           4'b0111: seg = 7'b0001111;
           4'b1000: seg = 7'b0000000;
           4'b1001: seg = 7'b0000100;
           default: seg = 7'b1111111;
        endcase
      end
      assign an = 4'b1110;
      assign dp = 1'b1;
   
endmodule
