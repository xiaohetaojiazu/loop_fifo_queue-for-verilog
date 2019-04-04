`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 11:50:34
// Design Name: 
// Module Name: lab_3_FIFO_divide
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


module lab_3_FIFO_divide(
    input retn,
    input clk_in,
    output reg clk_out
    );
    parameter WIDTH=25;
    parameter N=5*1024*512;
    reg [WIDTH:0]cnt;
    
  always@(posedge clk_in or posedge retn)
    begin
        if (retn)
            cnt<=0;
        else if (cnt==N-1)
            cnt<=0;
        else
            cnt<=cnt+1;
    end
    
    always@(posedge clk_in or posedge retn)
        begin
            if (retn)
                clk_out<=0;
            else if (cnt==N-1)
                clk_out<=~clk_out;
        end
endmodule