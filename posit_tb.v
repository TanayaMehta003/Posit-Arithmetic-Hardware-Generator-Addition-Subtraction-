`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 02:16:29
// Design Name: 
// Module Name: tb_decoder
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


module tb_decoder();
 reg ap_clk;
 reg ap_rst;
 wire [31:0]ap_return;
 reg[31:0] num1;
 reg[31:0] num2;
    
    
posit_check uut(.ap_clk(ap_clk),.ap_rst(ap_rst) , .num1(num1), .num2(num2),.ap_return(ap_return) );


initial begin
ap_clk = 0;
ap_rst = 'b1;
#10 ap_rst = 'b0;
forever
 #5 ap_clk = ~ap_clk;
end
initial begin
#10

num1 = 32'b00001100000100101010000000000110;
num2 = 32'b00010001000100000001000100010001;
end
endmodule
