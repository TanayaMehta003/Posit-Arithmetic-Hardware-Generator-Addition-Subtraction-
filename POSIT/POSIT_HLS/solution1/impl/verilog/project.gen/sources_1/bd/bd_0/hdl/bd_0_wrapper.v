//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Nov  9 22:05:04 2024
//Host        : Believe running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_return,
    ap_rst,
    num1,
    num2);
  input ap_clk;
  output [31:0]ap_return;
  input ap_rst;
  input [31:0]num1;
  input [31:0]num2;

  wire ap_clk;
  wire [31:0]ap_return;
  wire ap_rst;
  wire [31:0]num1;
  wire [31:0]num2;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .num1(num1),
        .num2(num2));
endmodule
