`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/03 22:05:40
// Design Name: 
// Module Name: lab_3_FIFO_RF_tb
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


module lab_3_FIFO_RF_tb(

    );
    reg [3:0] ra,wa;
    reg [3:0] wd;
    reg en_in,en_out,full,empty,clk,clr;
    wire [3:0] out;
    wire [7:0] light;
    wire [55:0] num;
    
    initial 
        begin
            full=0;
            empty=1;
            ra=1;
            wa=1;
            wd=3;
            en_in=0;
            en_out=0;
            clk=0;
            clr=1;
            #5 clr=0;
            #5 en_out=1;
            #50 en_in=1;
            #10 wa=3;
            #20 en_in=0;empty=0;
        end
        
    always #5 clk=~clk;
    lab_3_FIFO_RF lllltb(ra,wa,wd,en_in,en_out,full,empty,clk,clr,out,light,num);
endmodule
