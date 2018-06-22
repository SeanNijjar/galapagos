// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Jun 18 18:13:26 2018
// Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_ip_constant_block_inst_0_stub.v
// Design      : pr_ip_constant_block_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flva1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ip_constant_block,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ip, gateway, subnet, mac)
/* synthesis syn_black_box black_box_pad_pin="ip[31:0],gateway[31:0],subnet[31:0],mac[47:0]" */;
  output [31:0]ip;
  output [31:0]gateway;
  output [31:0]subnet;
  output [47:0]mac;
endmodule