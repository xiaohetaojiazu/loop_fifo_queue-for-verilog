`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/31 22:37:04
// Design Name: 
// Module Name: lab_3_FIFO
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


module lab_3_FIFO(
    input en_in,
    input en_out,
    input [3:0] in,
    input clk,
    input clr,
    output reg [3:0] out,
    output reg full,
    output reg empty,
    output reg error,
    output reg [7:0] seg,
    output reg [7:0] an
    );
    reg [3:0] SF=0;
    reg [3:0] SE=0;
    wire [3:0] sout;
    wire [7:0] sseg,aan;
    wire [3:0] num;
    reg [7:0] light;
    wire [7:0] llight;
    wire [55:0] rf_to_dis_num;
    wire clk_mid1,clk_out_1hz,clk_out_1000hz;
    
    clk_wiz_0 cw1
       (.clk_out1(clk_mid1),
        .clk_in1(clk));
    lab_3_FIFO_divide l3fd1(0,clk_mid1,clk_out_1hz);
    lab_3_FIFO_divide #(25,5*1024) l3fd2(0,clk_mid1,clk_out_1000hz);
    
    always@(*)
        begin
            out<=sout;
            seg<=sseg;
            an<=aan;
            light<=llight;
        end
        
    lab_3_FIFO_RF l3fr1     (SF,SE,in,en_in,en_out,full,empty,clk_out_1hz,clr,sout,llight,rf_to_dis_num);
    lab_3_FIFO_display l3fdd1       (rf_to_dis_num,SF,clk_out_1000hz,light,sseg,aan);
    
    always @(posedge clk_out_1hz or posedge clr)
        begin
            if (clr)
                begin
                    SE<=0;
                    SF<=0;
                    error<=0;
                end
            else if ((en_in)&(!en_out))
                begin
                    error<=0;
                    if (SE<7)   SE=SE+1;
                    else if (SE == 7)   SE=0;
                    else SE=SE;
                    if (full)   SF<=SE;
                end
            else if ((en_out)&(!en_in)&(!empty))
                begin
                    error=0;
                    if (SF<7)   SF=SF+1;
                    else if (SF == 7)   SF=0;
                    else SF=SF;
                end
            else if ((!en_in)&(!en_out))
                begin
                    error<=0;
                end
            else 
                begin
                    error<=1;
                end
       end
     
     always @(*)
        begin
            full=0;
            empty=1;
            if (light == 8'b1111_1111)  empty<=1;
            else    empty<=0;
            if (light == 8'b0000_0000)  full<=1;
            else    full<=0;
       end
                
endmodule
