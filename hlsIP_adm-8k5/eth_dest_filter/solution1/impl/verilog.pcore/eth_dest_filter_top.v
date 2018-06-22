// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module eth_dest_filter_top (
mac_table_V_Clk_A,
mac_table_V_Rst_A,
mac_table_V_EN_A,
mac_table_V_WEN_A,
mac_table_V_Addr_A,
mac_table_V_Dout_A,
mac_table_V_Din_A,
stream_in_V_TVALID,
stream_in_V_TREADY,
stream_in_V_TDATA,
stream_in_V_TLAST,
stream_in_V_TDEST,
stream_in_V_TKEEP,
stream_out_network_V_TVALID,
stream_out_network_V_TREADY,
stream_out_network_V_TDATA,
stream_out_network_V_TLAST,
stream_out_network_V_TDEST,
stream_out_network_V_TKEEP,
stream_out_switch_V_TVALID,
stream_out_switch_V_TREADY,
stream_out_switch_V_TDATA,
stream_out_switch_V_TLAST,
stream_out_switch_V_TDEST,
stream_out_switch_V_TKEEP,
aresetn,
aclk,
mac_addr
);

parameter RESET_ACTIVE_LOW = 1;

output mac_table_V_Clk_A ;
output mac_table_V_Rst_A ;
output mac_table_V_EN_A ;
output [4 - 1:0] mac_table_V_WEN_A ;
output [32 - 1:0] mac_table_V_Addr_A ;
output [32 - 1:0] mac_table_V_Dout_A ;
input [32 - 1:0] mac_table_V_Din_A ;


input stream_in_V_TVALID ;
output stream_in_V_TREADY ;
input [64 - 1:0] stream_in_V_TDATA ;
input [1 - 1:0] stream_in_V_TLAST ;
input [8 - 1:0] stream_in_V_TDEST ;
input [8 - 1:0] stream_in_V_TKEEP ;


output stream_out_network_V_TVALID ;
input stream_out_network_V_TREADY ;
output [64 - 1:0] stream_out_network_V_TDATA ;
output [1 - 1:0] stream_out_network_V_TLAST ;
output [8 - 1:0] stream_out_network_V_TDEST ;
output [8 - 1:0] stream_out_network_V_TKEEP ;


output stream_out_switch_V_TVALID ;
input stream_out_switch_V_TREADY ;
output [64 - 1:0] stream_out_switch_V_TDATA ;
output [1 - 1:0] stream_out_switch_V_TLAST ;
output [8 - 1:0] stream_out_switch_V_TDEST ;
output [8 - 1:0] stream_out_switch_V_TKEEP ;

input aresetn ;

input aclk ;

input [32 - 1:0] mac_addr ;


wire mac_table_V_Clk_A;
wire mac_table_V_Rst_A;
wire mac_table_V_EN_A;
wire [4 - 1:0] mac_table_V_WEN_A;
wire [32 - 1:0] mac_table_V_Addr_A;
wire [32 - 1:0] mac_table_V_Dout_A;
wire [32 - 1:0] mac_table_V_Din_A;


wire stream_in_V_TVALID;
wire stream_in_V_TREADY;
wire [64 - 1:0] stream_in_V_TDATA;
wire [1 - 1:0] stream_in_V_TLAST;
wire [8 - 1:0] stream_in_V_TDEST;
wire [8 - 1:0] stream_in_V_TKEEP;


wire stream_out_network_V_TVALID;
wire stream_out_network_V_TREADY;
wire [64 - 1:0] stream_out_network_V_TDATA;
wire [1 - 1:0] stream_out_network_V_TLAST;
wire [8 - 1:0] stream_out_network_V_TDEST;
wire [8 - 1:0] stream_out_network_V_TKEEP;


wire stream_out_switch_V_TVALID;
wire stream_out_switch_V_TREADY;
wire [64 - 1:0] stream_out_switch_V_TDATA;
wire [1 - 1:0] stream_out_switch_V_TLAST;
wire [8 - 1:0] stream_out_switch_V_TDEST;
wire [8 - 1:0] stream_out_switch_V_TKEEP;

wire aresetn;



wire [8 - 1:0] sig_eth_dest_filter_mac_table_V_address0;
wire sig_eth_dest_filter_mac_table_V_ce0;
wire [32 - 1:0] sig_eth_dest_filter_mac_table_V_q0;

wire [81 - 1:0] sig_eth_dest_filter_stream_in_V_dout;
wire sig_eth_dest_filter_stream_in_V_empty_n;
wire sig_eth_dest_filter_stream_in_V_read;

wire [81 - 1:0] sig_eth_dest_filter_stream_out_network_V_din;
wire sig_eth_dest_filter_stream_out_network_V_full_n;
wire sig_eth_dest_filter_stream_out_network_V_write;

wire [81 - 1:0] sig_eth_dest_filter_stream_out_switch_V_din;
wire sig_eth_dest_filter_stream_out_switch_V_full_n;
wire sig_eth_dest_filter_stream_out_switch_V_write;

wire sig_eth_dest_filter_ap_rst;



eth_dest_filter eth_dest_filter_U(
    .mac_table_V_address0(sig_eth_dest_filter_mac_table_V_address0),
    .mac_table_V_ce0(sig_eth_dest_filter_mac_table_V_ce0),
    .mac_table_V_q0(sig_eth_dest_filter_mac_table_V_q0),
    .stream_in_V_dout(sig_eth_dest_filter_stream_in_V_dout),
    .stream_in_V_empty_n(sig_eth_dest_filter_stream_in_V_empty_n),
    .stream_in_V_read(sig_eth_dest_filter_stream_in_V_read),
    .stream_out_network_V_din(sig_eth_dest_filter_stream_out_network_V_din),
    .stream_out_network_V_full_n(sig_eth_dest_filter_stream_out_network_V_full_n),
    .stream_out_network_V_write(sig_eth_dest_filter_stream_out_network_V_write),
    .stream_out_switch_V_din(sig_eth_dest_filter_stream_out_switch_V_din),
    .stream_out_switch_V_full_n(sig_eth_dest_filter_stream_out_switch_V_full_n),
    .stream_out_switch_V_write(sig_eth_dest_filter_stream_out_switch_V_write),
    .ap_rst(sig_eth_dest_filter_ap_rst),
    .ap_clk(aclk),
    .mac_addr(mac_addr)
);

eth_dest_filter_mac_table_V_if eth_dest_filter_mac_table_V_if_U(
    .clk(aclk),
    .reset(sig_eth_dest_filter_ap_rst_n),
    .mac_table_V_address0(sig_eth_dest_filter_mac_table_V_address0),
    .mac_table_V_ce0(sig_eth_dest_filter_mac_table_V_ce0),
    .mac_table_V_q0(sig_eth_dest_filter_mac_table_V_q0),
    .Clk_A(mac_table_V_Clk_A),
    .Rst_A(mac_table_V_Rst_A),
    .EN_A(mac_table_V_EN_A),
    .WEN_A(mac_table_V_WEN_A),
    .Addr_A(mac_table_V_Addr_A),
    .Dout_A(mac_table_V_Dout_A),
    .Din_A(mac_table_V_Din_A));

eth_dest_filter_stream_in_V_if eth_dest_filter_stream_in_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_in_V_dout(sig_eth_dest_filter_stream_in_V_dout),
    .stream_in_V_empty_n(sig_eth_dest_filter_stream_in_V_empty_n),
    .stream_in_V_read(sig_eth_dest_filter_stream_in_V_read),
    .TVALID(stream_in_V_TVALID),
    .TREADY(stream_in_V_TREADY),
    .TDATA(stream_in_V_TDATA),
    .TLAST(stream_in_V_TLAST),
    .TDEST(stream_in_V_TDEST),
    .TKEEP(stream_in_V_TKEEP));

eth_dest_filter_stream_out_network_V_if eth_dest_filter_stream_out_network_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_out_network_V_din(sig_eth_dest_filter_stream_out_network_V_din),
    .stream_out_network_V_full_n(sig_eth_dest_filter_stream_out_network_V_full_n),
    .stream_out_network_V_write(sig_eth_dest_filter_stream_out_network_V_write),
    .TVALID(stream_out_network_V_TVALID),
    .TREADY(stream_out_network_V_TREADY),
    .TDATA(stream_out_network_V_TDATA),
    .TLAST(stream_out_network_V_TLAST),
    .TDEST(stream_out_network_V_TDEST),
    .TKEEP(stream_out_network_V_TKEEP));

eth_dest_filter_stream_out_switch_V_if eth_dest_filter_stream_out_switch_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .stream_out_switch_V_din(sig_eth_dest_filter_stream_out_switch_V_din),
    .stream_out_switch_V_full_n(sig_eth_dest_filter_stream_out_switch_V_full_n),
    .stream_out_switch_V_write(sig_eth_dest_filter_stream_out_switch_V_write),
    .TVALID(stream_out_switch_V_TVALID),
    .TREADY(stream_out_switch_V_TREADY),
    .TDATA(stream_out_switch_V_TDATA),
    .TLAST(stream_out_switch_V_TLAST),
    .TDEST(stream_out_switch_V_TDEST),
    .TKEEP(stream_out_switch_V_TKEEP));

eth_dest_filter_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_eth_dest_filter_ap_rst),
    .din(aresetn));

endmodule