`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 19:28:10
// Design Name: 
// Module Name: posit_check
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


module posit_check(input ap_clk

    );
     wire ap_rst; wire[31:0] num1 ; wire[31:0]num2; wire [31:0]  ap_return;
 
 vio_0 your_instance_name (
  .clk(ap_clk),                // input wire clk
  .probe_in0(ap_return),    // input wire [30 : 0] probe_in0
  .probe_out0(ap_rst),  // output wire [0 : 0] probe_out0
  .probe_out1(num2),  // output wire [31 : 0] probe_out1
  .probe_out2(num1)  // output wire [31 : 0] probe_out2
);    
     
    
  
decoder_0 execute (
  .ap_clk(ap_clk),        // input wire ap_clk
  .ap_rst(ap_rst),        // input wire ap_rst
  .ap_return(ap_return),  // output wire [31 : 0] ap_return
  .num1(num1),            // input wire [31 : 0] num1
  .num2(num2)            // input wire [31 : 0] num2
);

ila_0 your_instance_name2 (
	.clk(ap_clk), // input wire clk


	.probe0(ap_rst), // input wire [0:0]  probe0  
	.probe1(num1), // input wire [31:0]  probe1 
	.probe2(num2), // input wire [31:0]  probe2 
	.probe3(ap_return) // input wire [31:0]  probe3
);
endmodule
