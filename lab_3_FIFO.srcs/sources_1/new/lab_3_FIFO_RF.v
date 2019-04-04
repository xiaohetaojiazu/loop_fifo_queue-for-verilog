`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/31 22:41:54
// Design Name: 
// Module Name: lab_3_FIFO_RF
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


module lab_3_FIFO_RF #(parameter SIZE=3,parameter ADDR=3,parameter NUM=8,parameter BIG=55)(
    input [ADDR:0] ra,
    input [ADDR:0] wa,
    input [SIZE:0] wd,
    input en_in,
    input en_out,
    input full,
    input empty,
    input clk,
    input clr,
    output reg [SIZE:0] out,
    output reg [NUM-1:0] light,
    output reg [BIG:0] rf_to_dis_num
    );
    integer i;
    reg [SIZE:0] REG_Files [NUM-1:0];
    reg [31:0] aaaa;
    wire [55:0] bbbb;
    always@(*)
        begin
            aaaa<={REG_Files[0],REG_Files[1],REG_Files[2],REG_Files[3],REG_Files[4],REG_Files[5],REG_Files[6],REG_Files[7]};
            rf_to_dis_num<=bbbb;
        end
    lab_3_to_bug llll1(aaaa,bbbb);
    always @(posedge clk or posedge clr)
        begin
            if(clr)
                begin
                    for (i=0;i<NUM;i=i+1)
                        begin
                            REG_Files[i]<=0;
                            light[7-i]<=1;
                        end
                end
            else if(en_in)
                    begin
                        REG_Files[wa]<=wd;
                        light[7-wa]<=0;
                    end
            else if (en_out&(!empty))  
                begin
                    out<=REG_Files[ra];
                    light[7-ra]<=1;
                end
            else out<=0;
            
        end
  
endmodule