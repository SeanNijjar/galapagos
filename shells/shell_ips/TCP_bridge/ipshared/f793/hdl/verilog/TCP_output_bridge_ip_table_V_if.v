// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1ns/1ps

module TCP_output_bridge_ip_table_V_if (
    // system singals
    input  wire        clk,
    input  wire        reset,
    // user signals
    input  wire [7:0]  ip_table_V_address0,
    input  wire        ip_table_V_ce0,
    input  wire [31:0] ip_table_V_d0,
    output wire [31:0] ip_table_V_q0,
    input  wire        ip_table_V_we0,
    input  wire [7:0]  ip_table_V_address1,
    input  wire        ip_table_V_ce1,
    input  wire [31:0] ip_table_V_d1,
    output wire [31:0] ip_table_V_q1,
    input  wire        ip_table_V_we1,
    // bus signals
    output wire        Clk_A,
    output wire        Rst_A,
    output wire        EN_A,
    output wire [3:0]  WEN_A,
    output wire [31:0] Addr_A,
    output wire [31:0] Dout_A,
    input  wire [31:0] Din_A,
    output wire        Clk_B,
    output wire        Rst_B,
    output wire        EN_B,
    output wire [3:0]  WEN_B,
    output wire [31:0] Addr_B,
    output wire [31:0] Dout_B,
    input  wire [31:0] Din_B
);
//------------------------Body---------------------------
assign Clk_A         = clk;
assign Rst_A         = reset;
assign EN_A          = ip_table_V_ce0;
assign Addr_A        = {ip_table_V_address0, 2'b0};
assign WEN_A         = {4{ip_table_V_we0}};
assign Dout_A        = ip_table_V_d0;
assign ip_table_V_q0 = Din_A[31:0];
assign Clk_B         = clk;
assign Rst_B         = reset;
assign EN_B          = ip_table_V_ce1;
assign Addr_B        = {ip_table_V_address1, 2'b0};
assign WEN_B         = {4{ip_table_V_we1}};
assign Dout_B        = ip_table_V_d1;
assign ip_table_V_q1 = Din_B[31:0];

endmodule