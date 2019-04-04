`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 20:14:34
// Design Name: 
// Module Name: lab_3_FIFO_diaplay_tb
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


module lab_3_FIFO_diaplay_tb(

    );
    reg [55:0] num;
    reg [3:0] SF;
    reg [7:0] light;
    reg clk;
    wire [7:0] seg,an;
    
    initial 
        begin;
            num=511;
            light=8'b0000_0000;
            SF=0;
            clk=0;
            #100 SF=3;
            #100 SF=5;
            #500 light=8'b1000_0001;
        end
    
    always #5 clk=~clk;
    
    lab_3_FIFO_display l3fdtb1(num,SF,clk,light,seg,an);
endmodule
