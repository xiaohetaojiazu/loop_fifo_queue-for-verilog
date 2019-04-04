`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/03 20:13:51
// Design Name: 
// Module Name: lab_3_to_bug
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


module lab_3_to_bug(
    input [31:0] in,
    output reg [55:0] out
    );
    parameter i = 0,ii=1,iii=2,iiii=3,iiiii=4,iiiiii=5,iiiiiii=6,iiiiiiii=7;

    always @(*)
        begin
           case(in[4*i+3:4*i])
                4'b0000:         out[7*i+6:7*i]= {7'b0000_001};
                                           4'b0001:         out[7*i+6:7*i]= {7'b1001_111};
                                           4'b0010:         out[7*i+6:7*i]= {7'b0010_010};
                                           4'b0011:         out[7*i+6:7*i]= {7'b0000_110};
                                           4'b0100:         out[7*i+6:7*i]= {7'b1001_100};
                                           4'b0101:         out[7*i+6:7*i]= {7'b0100_100};
                                           4'b0110:         out[7*i+6:7*i]= {7'b0100_000};
                                           4'b0111:         out[7*i+6:7*i]= {7'b0001_111};
                                           4'b1000:         out[7*i+6:7*i]= {7'b0000_000};
                                           4'b1001:         out[7*i+6:7*i]= {7'b0001_100};
                                           4'b1010:         out[7*i+6:7*i]= {7'b0001_000};
                                           4'b1011:         out[7*i+6:7*i]= {7'b1100_000};
                                           4'b1100:         out[7*i+6:7*i]= {7'b0110_001};
                                           4'b1101:         out[7*i+6:7*i]= {7'b1000_010};
                                           4'b1110:         out[7*i+6:7*i]= {7'b0110_000};
                                           4'b1111:         out[7*i+6:7*i]= {7'b0111_000};
           endcase
           case(in[4*ii+3:4*ii])
                           4'b0000:         out[7*ii+6:7*ii]= {7'b0000_001};
                                                      4'b0001:         out[7*ii+6:7*ii]= {7'b1001_111};
                                                      4'b0010:         out[7*ii+6:7*ii]= {7'b0010_010};
                                                      4'b0011:         out[7*ii+6:7*ii]= {7'b0000_110};
                                                      4'b0100:         out[7*ii+6:7*ii]= {7'b1001_100};
                                                      4'b0101:         out[7*ii+6:7*ii]= {7'b0100_100};
                                                      4'b0110:         out[7*ii+6:7*ii]= {7'b0100_000};
                                                      4'b0111:         out[7*ii+6:7*ii]= {7'b0001_111};
                                                      4'b1000:         out[7*ii+6:7*ii]= {7'b0000_000};
                                                      4'b1001:         out[7*ii+6:7*ii]= {7'b0001_100};
                                                      4'b1010:         out[7*ii+6:7*ii]= {7'b0001_000};
                                                      4'b1011:         out[7*ii+6:7*ii]= {7'b1100_000};
                                                      4'b1100:         out[7*ii+6:7*ii]= {7'b0110_001};
                                                      4'b1101:         out[7*ii+6:7*ii]= {7'b1000_010};
                                                      4'b1110:         out[7*ii+6:7*ii]= {7'b0110_000};
                                                      4'b1111:         out[7*ii+6:7*ii]= {7'b0111_000};
                      endcase
           case(in[4*iii+3:4*iii])
                                      4'b0000:         out[7*iii+6:7*iii]= {7'b0000_001};
                                                                 4'b0001:         out[7*iii+6:7*iii]= {7'b1001_111};
                                                                 4'b0010:         out[7*iii+6:7*iii]= {7'b0010_010};
                                                                 4'b0011:         out[7*iii+6:7*iii]= {7'b0000_110};
                                                                 4'b0100:         out[7*iii+6:7*iii]= {7'b1001_100};
                                                                 4'b0101:         out[7*iii+6:7*iii]= {7'b0100_100};
                                                                 4'b0110:         out[7*iii+6:7*iii]= {7'b0100_000};
                                                                 4'b0111:         out[7*iii+6:7*iii]= {7'b0001_111};
                                                                 4'b1000:         out[7*iii+6:7*iii]= {7'b0000_000};
                                                                 4'b1001:         out[7*iii+6:7*iii]= {7'b0001_100};
                                                                 4'b1010:         out[7*iii+6:7*iii]= {7'b0001_000};
                                                                 4'b1011:         out[7*iii+6:7*iii]= {7'b1100_000};
                                                                 4'b1100:         out[7*iii+6:7*iii]= {7'b0110_001};
                                                                 4'b1101:         out[7*iii+6:7*iii]= {7'b1000_010};
                                                                 4'b1110:         out[7*iii+6:7*iii]= {7'b0110_000};
                                                                 4'b1111:         out[7*iii+6:7*iii]= {7'b0111_000};
                                 endcase
           case(in[4*iiii+3:4*iiii])
                                                 4'b0000:         out[7*iiii+6:7*iiii]= {7'b0000_001};
                                                                            4'b0001:         out[7*iiii+6:7*iiii]= {7'b1001_111};
                                                                            4'b0010:         out[7*iiii+6:7*iiii]= {7'b0010_010};
                                                                            4'b0011:         out[7*iiii+6:7*iiii]= {7'b0000_110};
                                                                            4'b0100:         out[7*iiii+6:7*iiii]= {7'b1001_100};
                                                                            4'b0101:         out[7*iiii+6:7*iiii]= {7'b0100_100};
                                                                            4'b0110:         out[7*iiii+6:7*iiii]= {7'b0100_000};
                                                                            4'b0111:         out[7*iiii+6:7*iiii]= {7'b0001_111};
                                                                            4'b1000:         out[7*iiii+6:7*iiii]= {7'b0000_000};
                                                                            4'b1001:         out[7*iiii+6:7*iiii]= {7'b0001_100};
                                                                            4'b1010:         out[7*iiii+6:7*iiii]= {7'b0001_000};
                                                                            4'b1011:         out[7*iiii+6:7*iiii]= {7'b1100_000};
                                                                            4'b1100:         out[7*iiii+6:7*iiii]= {7'b0110_001};
                                                                            4'b1101:         out[7*iiii+6:7*iiii]= {7'b1000_010};
                                                                            4'b1110:         out[7*iiii+6:7*iiii]= {7'b0110_000};
                                                                            4'b1111:         out[7*iiii+6:7*iiii]= {7'b0111_000};
                                            endcase
           case(in[4*iiiii+3:4*iiiii])
                                                            4'b0000:         out[7*iiiii+6:7*iiiii]= {7'b0000_001};
                                                                                       4'b0001:         out[7*iiiii+6:7*iiiii]= {7'b1001_111};
                                                                                       4'b0010:         out[7*iiiii+6:7*iiiii]= {7'b0010_010};
                                                                                       4'b0011:         out[7*iiiii+6:7*iiiii]= {7'b0000_110};
                                                                                       4'b0100:         out[7*iiiii+6:7*iiiii]= {7'b1001_100};
                                                                                       4'b0101:         out[7*iiiii+6:7*iiiii]= {7'b0100_100};
                                                                                       4'b0110:         out[7*iiiii+6:7*iiiii]= {7'b0100_000};
                                                                                       4'b0111:         out[7*iiiii+6:7*iiiii]= {7'b0001_111};
                                                                                       4'b1000:         out[7*iiiii+6:7*iiiii]= {7'b0000_000};
                                                                                       4'b1001:         out[7*iiiii+6:7*iiiii]= {7'b0001_100};
                                                                                       4'b1010:         out[7*iiiii+6:7*iiiii]= {7'b0001_000};
                                                                                       4'b1011:         out[7*iiiii+6:7*iiiii]= {7'b1100_000};
                                                                                       4'b1100:         out[7*iiiii+6:7*iiiii]= {7'b0110_001};
                                                                                       4'b1101:         out[7*iiiii+6:7*iiiii]= {7'b1000_010};
                                                                                       4'b1110:         out[7*iiiii+6:7*iiiii]= {7'b0110_000};
                                                                                       4'b1111:         out[7*iiiii+6:7*iiiii]= {7'b0111_000};
                                                       endcase
           case(in[4*iiiiii+3:4*iiiiii])
                                                                       4'b0000:         out[7*iiiiii+6:7*iiiiii]= {7'b0000_001};
                                                                                                  4'b0001:         out[7*iiiiii+6:7*iiiiii]= {7'b1001_111};
                                                                                                  4'b0010:         out[7*iiiiii+6:7*iiiiii]= {7'b0010_010};
                                                                                                  4'b0011:         out[7*iiiiii+6:7*iiiiii]= {7'b0000_110};
                                                                                                  4'b0100:         out[7*iiiiii+6:7*iiiiii]= {7'b1001_100};
                                                                                                  4'b0101:         out[7*iiiiii+6:7*iiiiii]= {7'b0100_100};
                                                                                                  4'b0110:         out[7*iiiiii+6:7*iiiiii]= {7'b0100_000};
                                                                                                  4'b0111:         out[7*iiiiii+6:7*iiiiii]= {7'b0001_111};
                                                                                                  4'b1000:         out[7*iiiiii+6:7*iiiiii]= {7'b0000_000};
                                                                                                  4'b1001:         out[7*iiiiii+6:7*iiiiii]= {7'b0001_100};
                                                                                                  4'b1010:         out[7*iiiiii+6:7*iiiiii]= {7'b0001_000};
                                                                                                  4'b1011:         out[7*iiiiii+6:7*iiiiii]= {7'b1100_000};
                                                                                                  4'b1100:         out[7*iiiiii+6:7*iiiiii]= {7'b0110_001};
                                                                                                  4'b1101:         out[7*iiiiii+6:7*iiiiii]= {7'b1000_010};
                                                                                                  4'b1110:         out[7*iiiiii+6:7*iiiiii]= {7'b0110_000};
                                                                                                  4'b1111:         out[7*iiiiii+6:7*iiiiii]= {7'b0111_000};
                                                                  endcase
           case(in[4*iiiiiii+3:4*iiiiiii])
                                                                                  4'b0000:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0000_001};
                                                                                                             4'b0001:         out[7*iiiiiii+6:7*iiiiiii]= {7'b1001_111};
                                                                                                             4'b0010:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0010_010};
                                                                                                             4'b0011:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0000_110};
                                                                                                             4'b0100:         out[7*iiiiiii+6:7*iiiiiii]= {7'b1001_100};
                                                                                                             4'b0101:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0100_100};
                                                                                                             4'b0110:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0100_000};
                                                                                                             4'b0111:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0001_111};
                                                                                                             4'b1000:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0000_000};
                                                                                                             4'b1001:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0001_100};
                                                                                                             4'b1010:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0001_000};
                                                                                                             4'b1011:         out[7*iiiiiii+6:7*iiiiiii]= {7'b1100_000};
                                                                                                             4'b1100:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0110_001};
                                                                                                             4'b1101:         out[7*iiiiiii+6:7*iiiiiii]= {7'b1000_010};
                                                                                                             4'b1110:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0110_000};
                                                                                                             4'b1111:         out[7*iiiiiii+6:7*iiiiiii]= {7'b0111_000};
                                                                             endcase
           case(in[4*iiiiiiii+3:4*iiiiiiii])
                                                                                             4'b0000:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0000_001};
                                                                                                                        4'b0001:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b1001_111};
                                                                                                                        4'b0010:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0010_010};
                                                                                                                        4'b0011:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0000_110};
                                                                                                                        4'b0100:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b1001_100};
                                                                                                                        4'b0101:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0100_100};
                                                                                                                        4'b0110:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0100_000};
                                                                                                                        4'b0111:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0001_111};
                                                                                                                        4'b1000:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0000_000};
                                                                                                                        4'b1001:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0001_100};
                                                                                                                        4'b1010:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0001_000};
                                                                                                                        4'b1011:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b1100_000};
                                                                                                                        4'b1100:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0110_001};
                                                                                                                        4'b1101:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b1000_010};
                                                                                                                        4'b1110:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0110_000};
                                                                                                                        4'b1111:         out[7*iiiiiiii+6:7*iiiiiiii]= {7'b0111_000};
                                                                                        endcase
    end
endmodule
