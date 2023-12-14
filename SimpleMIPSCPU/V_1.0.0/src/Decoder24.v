`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/22 17:02:38
// Design Name: 
// Module Name: Decoder38
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


module Decoder24(A,Y);
    input [1:0]A;
    output reg[3:0]Y;
    integer i; 
    
    always@(A) begin
        Y=8'b0000;
        for(i=0;i<=3;i=i+1)
        if(A==i)
            Y[i]=1;
        else
            Y[i]=0;
    end
endmodule
