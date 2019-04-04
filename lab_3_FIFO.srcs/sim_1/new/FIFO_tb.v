`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 10:08:59
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb(

    );
    reg clk,clr,en_in,en_out;
    reg [3:0] in;
    wire [3:0] out;
    wire [7:0] seg,an;
    
    initial 
        begin
            clk=0;
            clr=1;
            en_in=0;
            en_out=0;
            in=4'b0000;
            #15 clr=0;
            #20 en_out=1;
            #10 en_out=0;
            #20 en_in=1;
            #200 en_in=0;
            #500 en_out=1;
            #20 en_out=0;
            #500 en_out=1;
            #200 en_out=0;
            #50 clr=1;
            #5 clr=0;
        end
    
    always #5 clk=~clk;
    always #6 in<=in+1;
    
    lab_3_FIFO l3ftb1(en_in,en_out,in,clk,clr,out,full,empty,error,seg,an);
endmodule
