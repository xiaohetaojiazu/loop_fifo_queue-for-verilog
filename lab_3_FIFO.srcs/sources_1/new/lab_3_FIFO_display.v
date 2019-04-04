`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 19:01:24
// Design Name: 
// Module Name: lab_3_FIFO_display
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


module lab_3_FIFO_display(
    input [55:0] rf_to_dis_num,
    input [3:0] SF,
    input clk,
    input [7:0] light,
    output reg [7:0] seg,
    output reg [7:0] an
    );
    reg [3:0] i=0;
    reg [7:0] flag;

    always@(posedge clk)
        begin
            if (i<8)
                i=i+1;
            else 
                i=0;
            case (SF)
                0:      flag<=8'b1111_1110;
                1:      flag<=8'b1111_1101;
                2:      flag<=8'b1111_1011;
                3:      flag<=8'b1111_0111;
                4:      flag<=8'b1110_1111;
                5:      flag<=8'b1101_1111;
                6:      flag<=8'b1011_1111;
                7:      flag<=8'b0111_1111;
                default:        flag<=8'b1111_1111;
            endcase
        end
    
    
            
    always@(posedge clk)
        begin
           
            case(i)
                               default:        an = 8'b1111_1111;
                               0:        begin an <= (8'b0111_1111 | light); seg<={7'b1111_111,flag[0]}; end
                               1:        begin an <= (8'b0111_1111 | light); seg<={rf_to_dis_num[55:49],flag[0]}; end
                               2:        begin an <= (8'b1011_1111 | light); seg<={rf_to_dis_num[48:42],flag[1]}; end
                               3:        begin an <= (8'b1101_1111 | light); seg<={rf_to_dis_num[41:35],flag[2]}; end
                               4:        begin an <= (8'b1110_1111 | light); seg<={rf_to_dis_num[34:28],flag[3]}; end
                               5:        begin an <= (8'b1111_0111 | light); seg<={rf_to_dis_num[27:21],flag[4]}; end
                               6:        begin an <= (8'b1111_1011 | light); seg<={rf_to_dis_num[20:14],flag[5]}; end
                               7:        begin an <= (8'b1111_1101 | light); seg<={rf_to_dis_num[13:7],flag[6]}; end
                               8:        begin an <= (8'b1111_1110 | light); seg<={rf_to_dis_num[6:0],flag[7]}; end
            endcase
           
        end    
        
endmodule
