//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Sun May 13 22:48:21 2018
//Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target shell.bd
//Design      : shell
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_imp_107RYSW
   (CLK_IN_D_clk_n,
    CLK_IN_D_clk_p,
    M_AXI_LITE_araddr,
    M_AXI_LITE_arprot,
    M_AXI_LITE_arready,
    M_AXI_LITE_arvalid,
    M_AXI_LITE_awaddr,
    M_AXI_LITE_awprot,
    M_AXI_LITE_awready,
    M_AXI_LITE_awvalid,
    M_AXI_LITE_bready,
    M_AXI_LITE_bresp,
    M_AXI_LITE_bvalid,
    M_AXI_LITE_rdata,
    M_AXI_LITE_rready,
    M_AXI_LITE_rresp,
    M_AXI_LITE_rvalid,
    M_AXI_LITE_wdata,
    M_AXI_LITE_wready,
    M_AXI_LITE_wstrb,
    M_AXI_LITE_wvalid,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_rst_n);
  input [0:0]CLK_IN_D_clk_n;
  input [0:0]CLK_IN_D_clk_p;
  output [31:0]M_AXI_LITE_araddr;
  output [2:0]M_AXI_LITE_arprot;
  input M_AXI_LITE_arready;
  output M_AXI_LITE_arvalid;
  output [31:0]M_AXI_LITE_awaddr;
  output [2:0]M_AXI_LITE_awprot;
  input M_AXI_LITE_awready;
  output M_AXI_LITE_awvalid;
  output M_AXI_LITE_bready;
  input [1:0]M_AXI_LITE_bresp;
  input M_AXI_LITE_bvalid;
  input [31:0]M_AXI_LITE_rdata;
  output M_AXI_LITE_rready;
  input [1:0]M_AXI_LITE_rresp;
  input M_AXI_LITE_rvalid;
  output [31:0]M_AXI_LITE_wdata;
  input M_AXI_LITE_wready;
  output [3:0]M_AXI_LITE_wstrb;
  output M_AXI_LITE_wvalid;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input sys_rst_n;

  wire [7:0]Conn1_rxn;
  wire [7:0]Conn1_rxp;
  wire [7:0]Conn1_txn;
  wire [7:0]Conn1_txp;
  wire [63:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [3:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [63:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [3:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [3:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [255:0]Conn2_RDATA;
  wire [3:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [255:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [31:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [0:0]Conn3_CLK_N;
  wire [0:0]Conn3_CLK_P;
  wire [31:0]Conn4_ARADDR;
  wire [2:0]Conn4_ARPROT;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [31:0]Conn4_AWADDR;
  wire [2:0]Conn4_AWPROT;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire [3:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire sys_rst_n_1;
  wire [0:0]util_ds_buf_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_IBUF_OUT;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;

  assign Conn1_rxn = pcie_mgt_rxn[7:0];
  assign Conn1_rxp = pcie_mgt_rxp[7:0];
  assign Conn2_ARREADY = M_AXI_arready;
  assign Conn2_AWREADY = M_AXI_awready;
  assign Conn2_BID = M_AXI_bid[3:0];
  assign Conn2_BRESP = M_AXI_bresp[1:0];
  assign Conn2_BVALID = M_AXI_bvalid;
  assign Conn2_RDATA = M_AXI_rdata[255:0];
  assign Conn2_RID = M_AXI_rid[3:0];
  assign Conn2_RLAST = M_AXI_rlast;
  assign Conn2_RRESP = M_AXI_rresp[1:0];
  assign Conn2_RVALID = M_AXI_rvalid;
  assign Conn2_WREADY = M_AXI_wready;
  assign Conn3_CLK_N = CLK_IN_D_clk_n[0];
  assign Conn3_CLK_P = CLK_IN_D_clk_p[0];
  assign Conn4_ARREADY = M_AXI_LITE_arready;
  assign Conn4_AWREADY = M_AXI_LITE_awready;
  assign Conn4_BRESP = M_AXI_LITE_bresp[1:0];
  assign Conn4_BVALID = M_AXI_LITE_bvalid;
  assign Conn4_RDATA = M_AXI_LITE_rdata[31:0];
  assign Conn4_RRESP = M_AXI_LITE_rresp[1:0];
  assign Conn4_RVALID = M_AXI_LITE_rvalid;
  assign Conn4_WREADY = M_AXI_LITE_wready;
  assign M_AXI_LITE_araddr[31:0] = Conn4_ARADDR;
  assign M_AXI_LITE_arprot[2:0] = Conn4_ARPROT;
  assign M_AXI_LITE_arvalid = Conn4_ARVALID;
  assign M_AXI_LITE_awaddr[31:0] = Conn4_AWADDR;
  assign M_AXI_LITE_awprot[2:0] = Conn4_AWPROT;
  assign M_AXI_LITE_awvalid = Conn4_AWVALID;
  assign M_AXI_LITE_bready = Conn4_BREADY;
  assign M_AXI_LITE_rready = Conn4_RREADY;
  assign M_AXI_LITE_wdata[31:0] = Conn4_WDATA;
  assign M_AXI_LITE_wstrb[3:0] = Conn4_WSTRB;
  assign M_AXI_LITE_wvalid = Conn4_WVALID;
  assign M_AXI_araddr[63:0] = Conn2_ARADDR;
  assign M_AXI_arburst[1:0] = Conn2_ARBURST;
  assign M_AXI_arcache[3:0] = Conn2_ARCACHE;
  assign M_AXI_arid[3:0] = Conn2_ARID;
  assign M_AXI_arlen[7:0] = Conn2_ARLEN;
  assign M_AXI_arlock[0] = Conn2_ARLOCK;
  assign M_AXI_arprot[2:0] = Conn2_ARPROT;
  assign M_AXI_arsize[2:0] = Conn2_ARSIZE;
  assign M_AXI_arvalid = Conn2_ARVALID;
  assign M_AXI_awaddr[63:0] = Conn2_AWADDR;
  assign M_AXI_awburst[1:0] = Conn2_AWBURST;
  assign M_AXI_awcache[3:0] = Conn2_AWCACHE;
  assign M_AXI_awid[3:0] = Conn2_AWID;
  assign M_AXI_awlen[7:0] = Conn2_AWLEN;
  assign M_AXI_awlock[0] = Conn2_AWLOCK;
  assign M_AXI_awprot[2:0] = Conn2_AWPROT;
  assign M_AXI_awsize[2:0] = Conn2_AWSIZE;
  assign M_AXI_awvalid = Conn2_AWVALID;
  assign M_AXI_bready = Conn2_BREADY;
  assign M_AXI_rready = Conn2_RREADY;
  assign M_AXI_wdata[255:0] = Conn2_WDATA;
  assign M_AXI_wlast = Conn2_WLAST;
  assign M_AXI_wstrb[31:0] = Conn2_WSTRB;
  assign M_AXI_wvalid = Conn2_WVALID;
  assign axi_aclk = xdma_0_axi_aclk;
  assign axi_aresetn = xdma_0_axi_aresetn;
  assign pcie_mgt_txn[7:0] = Conn1_txn;
  assign pcie_mgt_txp[7:0] = Conn1_txp;
  assign sys_rst_n_1 = sys_rst_n;
  shell_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(Conn3_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_IBUF_DS_ODIV2),
        .IBUF_DS_P(Conn3_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
  shell_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(Conn2_ARADDR),
        .m_axi_arburst(Conn2_ARBURST),
        .m_axi_arcache(Conn2_ARCACHE),
        .m_axi_arid(Conn2_ARID),
        .m_axi_arlen(Conn2_ARLEN),
        .m_axi_arlock(Conn2_ARLOCK),
        .m_axi_arprot(Conn2_ARPROT),
        .m_axi_arready(Conn2_ARREADY),
        .m_axi_arsize(Conn2_ARSIZE),
        .m_axi_arvalid(Conn2_ARVALID),
        .m_axi_awaddr(Conn2_AWADDR),
        .m_axi_awburst(Conn2_AWBURST),
        .m_axi_awcache(Conn2_AWCACHE),
        .m_axi_awid(Conn2_AWID),
        .m_axi_awlen(Conn2_AWLEN),
        .m_axi_awlock(Conn2_AWLOCK),
        .m_axi_awprot(Conn2_AWPROT),
        .m_axi_awready(Conn2_AWREADY),
        .m_axi_awsize(Conn2_AWSIZE),
        .m_axi_awvalid(Conn2_AWVALID),
        .m_axi_bid(Conn2_BID),
        .m_axi_bready(Conn2_BREADY),
        .m_axi_bresp(Conn2_BRESP),
        .m_axi_bvalid(Conn2_BVALID),
        .m_axi_rdata(Conn2_RDATA),
        .m_axi_rid(Conn2_RID),
        .m_axi_rlast(Conn2_RLAST),
        .m_axi_rready(Conn2_RREADY),
        .m_axi_rresp(Conn2_RRESP),
        .m_axi_rvalid(Conn2_RVALID),
        .m_axi_wdata(Conn2_WDATA),
        .m_axi_wlast(Conn2_WLAST),
        .m_axi_wready(Conn2_WREADY),
        .m_axi_wstrb(Conn2_WSTRB),
        .m_axi_wvalid(Conn2_WVALID),
        .m_axil_araddr(Conn4_ARADDR),
        .m_axil_arprot(Conn4_ARPROT),
        .m_axil_arready(Conn4_ARREADY),
        .m_axil_arvalid(Conn4_ARVALID),
        .m_axil_awaddr(Conn4_AWADDR),
        .m_axil_awprot(Conn4_AWPROT),
        .m_axil_awready(Conn4_AWREADY),
        .m_axil_awvalid(Conn4_AWVALID),
        .m_axil_bready(Conn4_BREADY),
        .m_axil_bresp(Conn4_BRESP),
        .m_axil_bvalid(Conn4_BVALID),
        .m_axil_rdata(Conn4_RDATA),
        .m_axil_rready(Conn4_RREADY),
        .m_axil_rresp(Conn4_RRESP),
        .m_axil_rvalid(Conn4_RVALID),
        .m_axil_wdata(Conn4_WDATA),
        .m_axil_wready(Conn4_WREADY),
        .m_axil_wstrb(Conn4_WSTRB),
        .m_axil_wvalid(Conn4_WVALID),
        .pci_exp_rxn(Conn1_rxn),
        .pci_exp_rxp(Conn1_rxp),
        .pci_exp_txn(Conn1_txn),
        .pci_exp_txp(Conn1_txp),
        .sys_clk(util_ds_buf_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_IBUF_OUT),
        .sys_rst_n(sys_rst_n_1),
        .usr_irq_req(1'b0));
endmodule

module m00_couplers_imp_17RNK4V
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_1KWAT1H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_EN5S6P
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [32:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [32:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [32:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [1:0]auto_cc_to_m00_couplers_ARID;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [32:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [1:0]auto_cc_to_m00_couplers_AWID;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire [1:0]auto_cc_to_m00_couplers_BID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [511:0]auto_cc_to_m00_couplers_RDATA;
  wire [1:0]auto_cc_to_m00_couplers_RID;
  wire auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [511:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [63:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [1:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [63:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [1:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [1:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [511:0]m00_couplers_to_auto_cc_RDATA;
  wire [1:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [511:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [63:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[32:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = auto_cc_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[32:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = auto_cc_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BID = M_AXI_bid[1:0];
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m00_couplers_RID = M_AXI_rid[1:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m00_couplers_BID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m00_couplers_RID),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[32:0]),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[32:0]),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_A2B4UF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [31:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_WG87ZH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_ERMJ3Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [8:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [8:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [31:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[8:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[8:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module m03_couplers_imp_13219ZQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [0:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [0:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [0:0]auto_cc_to_m03_couplers_ARADDR;
  wire auto_cc_to_m03_couplers_ARREADY;
  wire auto_cc_to_m03_couplers_ARVALID;
  wire [0:0]auto_cc_to_m03_couplers_AWADDR;
  wire auto_cc_to_m03_couplers_AWREADY;
  wire auto_cc_to_m03_couplers_AWVALID;
  wire auto_cc_to_m03_couplers_BREADY;
  wire [1:0]auto_cc_to_m03_couplers_BRESP;
  wire auto_cc_to_m03_couplers_BVALID;
  wire [31:0]auto_cc_to_m03_couplers_RDATA;
  wire auto_cc_to_m03_couplers_RREADY;
  wire [1:0]auto_cc_to_m03_couplers_RRESP;
  wire auto_cc_to_m03_couplers_RVALID;
  wire [31:0]auto_cc_to_m03_couplers_WDATA;
  wire auto_cc_to_m03_couplers_WREADY;
  wire auto_cc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_cc_ARADDR;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [31:0]m03_couplers_to_auto_cc_AWADDR;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [31:0]m03_couplers_to_auto_cc_RDATA;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [31:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [3:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[0] = auto_cc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[0] = auto_cc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m03_couplers_WDATA;
  assign M_AXI_wvalid = auto_cc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m03_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m03_couplers_WREADY),
        .m_axi_wvalid(auto_cc_to_m03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[0]),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
endmodule

module mb_system_imp_VMXBLU
   (MB_AXI_araddr,
    MB_AXI_arprot,
    MB_AXI_arready,
    MB_AXI_arvalid,
    MB_AXI_awaddr,
    MB_AXI_awprot,
    MB_AXI_awready,
    MB_AXI_awvalid,
    MB_AXI_bready,
    MB_AXI_bresp,
    MB_AXI_bvalid,
    MB_AXI_rdata,
    MB_AXI_rready,
    MB_AXI_rresp,
    MB_AXI_rvalid,
    MB_AXI_wdata,
    MB_AXI_wready,
    MB_AXI_wstrb,
    MB_AXI_wvalid,
    clk100,
    ext_reset_in);
  output [31:0]MB_AXI_araddr;
  output [2:0]MB_AXI_arprot;
  input [0:0]MB_AXI_arready;
  output [0:0]MB_AXI_arvalid;
  output [31:0]MB_AXI_awaddr;
  output [2:0]MB_AXI_awprot;
  input [0:0]MB_AXI_awready;
  output [0:0]MB_AXI_awvalid;
  output [0:0]MB_AXI_bready;
  input [1:0]MB_AXI_bresp;
  input [0:0]MB_AXI_bvalid;
  input [31:0]MB_AXI_rdata;
  output [0:0]MB_AXI_rready;
  input [1:0]MB_AXI_rresp;
  input [0:0]MB_AXI_rvalid;
  output [31:0]MB_AXI_wdata;
  input [0:0]MB_AXI_wready;
  output [3:0]MB_AXI_wstrb;
  output [0:0]MB_AXI_wvalid;
  input clk100;
  input ext_reset_in;

  wire Clk_1;
  wire [0:0]ap_rst_n_1;
  wire ext_reset_in_1;
  wire mdm_1_Debug_SYS_Rst;
  wire mdm_1_MBDEBUG_0_CAPTURE;
  wire mdm_1_MBDEBUG_0_CLK;
  wire mdm_1_MBDEBUG_0_DISABLE;
  wire [0:7]mdm_1_MBDEBUG_0_REG_EN;
  wire mdm_1_MBDEBUG_0_RST;
  wire mdm_1_MBDEBUG_0_SHIFT;
  wire mdm_1_MBDEBUG_0_TDI;
  wire mdm_1_MBDEBUG_0_TDO;
  wire mdm_1_MBDEBUG_0_UPDATE;
  wire [0:31]microblaze_0_DLMB_ABUS;
  wire microblaze_0_DLMB_ADDRSTROBE;
  wire [0:3]microblaze_0_DLMB_BE;
  wire microblaze_0_DLMB_CE;
  wire [0:31]microblaze_0_DLMB_READDBUS;
  wire microblaze_0_DLMB_READSTROBE;
  wire microblaze_0_DLMB_READY;
  wire microblaze_0_DLMB_UE;
  wire microblaze_0_DLMB_WAIT;
  wire [0:31]microblaze_0_DLMB_WRITEDBUS;
  wire microblaze_0_DLMB_WRITESTROBE;
  wire [0:31]microblaze_0_ILMB_ABUS;
  wire microblaze_0_ILMB_ADDRSTROBE;
  wire microblaze_0_ILMB_CE;
  wire [0:31]microblaze_0_ILMB_READDBUS;
  wire microblaze_0_ILMB_READSTROBE;
  wire microblaze_0_ILMB_READY;
  wire microblaze_0_ILMB_UE;
  wire microblaze_0_ILMB_WAIT;
  wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  wire microblaze_0_M_AXI_DP_ARREADY;
  wire microblaze_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  wire microblaze_0_M_AXI_DP_AWREADY;
  wire microblaze_0_M_AXI_DP_AWVALID;
  wire microblaze_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  wire microblaze_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  wire microblaze_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  wire microblaze_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  wire microblaze_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  wire microblaze_0_M_AXI_DP_WVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_ARADDR;
  wire microblaze_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_AWADDR;
  wire microblaze_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]microblaze_0_axi_periph_M00_AXI_BRESP;
  wire microblaze_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]microblaze_0_axi_periph_M00_AXI_RRESP;
  wire microblaze_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]microblaze_0_axi_periph_M00_AXI_WDATA;
  wire microblaze_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]microblaze_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]microblaze_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_ARADDR;
  wire [2:0]microblaze_0_axi_periph_M01_AXI_ARPROT;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_AWADDR;
  wire [2:0]microblaze_0_axi_periph_M01_AXI_AWPROT;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_0_axi_periph_M01_AXI_BRESP;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_0_axi_periph_M01_AXI_RRESP;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_0_axi_periph_M01_AXI_WDATA;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]microblaze_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]microblaze_0_axi_periph_M01_AXI_WVALID;
  wire [0:0]rst_clk_wiz_0_100M_bus_struct_reset;
  wire [0:0]rst_clk_wiz_0_100M_interconnect_aresetn;
  wire rst_clk_wiz_0_100M_mb_reset;

  assign Clk_1 = clk100;
  assign MB_AXI_araddr[31:0] = microblaze_0_axi_periph_M01_AXI_ARADDR;
  assign MB_AXI_arprot[2:0] = microblaze_0_axi_periph_M01_AXI_ARPROT;
  assign MB_AXI_arvalid[0] = microblaze_0_axi_periph_M01_AXI_ARVALID;
  assign MB_AXI_awaddr[31:0] = microblaze_0_axi_periph_M01_AXI_AWADDR;
  assign MB_AXI_awprot[2:0] = microblaze_0_axi_periph_M01_AXI_AWPROT;
  assign MB_AXI_awvalid[0] = microblaze_0_axi_periph_M01_AXI_AWVALID;
  assign MB_AXI_bready[0] = microblaze_0_axi_periph_M01_AXI_BREADY;
  assign MB_AXI_rready[0] = microblaze_0_axi_periph_M01_AXI_RREADY;
  assign MB_AXI_wdata[31:0] = microblaze_0_axi_periph_M01_AXI_WDATA;
  assign MB_AXI_wstrb[3:0] = microblaze_0_axi_periph_M01_AXI_WSTRB;
  assign MB_AXI_wvalid[0] = microblaze_0_axi_periph_M01_AXI_WVALID;
  assign ext_reset_in_1 = ext_reset_in;
  assign microblaze_0_axi_periph_M01_AXI_ARREADY = MB_AXI_arready[0];
  assign microblaze_0_axi_periph_M01_AXI_AWREADY = MB_AXI_awready[0];
  assign microblaze_0_axi_periph_M01_AXI_BRESP = MB_AXI_bresp[1:0];
  assign microblaze_0_axi_periph_M01_AXI_BVALID = MB_AXI_bvalid[0];
  assign microblaze_0_axi_periph_M01_AXI_RDATA = MB_AXI_rdata[31:0];
  assign microblaze_0_axi_periph_M01_AXI_RRESP = MB_AXI_rresp[1:0];
  assign microblaze_0_axi_periph_M01_AXI_RVALID = MB_AXI_rvalid[0];
  assign microblaze_0_axi_periph_M01_AXI_WREADY = MB_AXI_wready[0];
  shell_mdm_1_0 mdm_1
       (.Dbg_Capture_0(mdm_1_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mdm_1_MBDEBUG_0_CLK),
        .Dbg_Disable_0(mdm_1_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mdm_1_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(mdm_1_MBDEBUG_0_RST),
        .Dbg_Shift_0(mdm_1_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(mdm_1_MBDEBUG_0_TDI),
        .Dbg_TDO_0(mdm_1_MBDEBUG_0_TDO),
        .Dbg_Update_0(mdm_1_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mdm_1_Debug_SYS_Rst),
        .S_AXI_ACLK(Clk_1),
        .S_AXI_ARADDR(microblaze_0_axi_periph_M00_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(ap_rst_n_1),
        .S_AXI_ARREADY(microblaze_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI_ARVALID(microblaze_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI_AWADDR(microblaze_0_axi_periph_M00_AXI_AWADDR[3:0]),
        .S_AXI_AWREADY(microblaze_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI_AWVALID(microblaze_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI_BREADY(microblaze_0_axi_periph_M00_AXI_BREADY),
        .S_AXI_BRESP(microblaze_0_axi_periph_M00_AXI_BRESP),
        .S_AXI_BVALID(microblaze_0_axi_periph_M00_AXI_BVALID),
        .S_AXI_RDATA(microblaze_0_axi_periph_M00_AXI_RDATA),
        .S_AXI_RREADY(microblaze_0_axi_periph_M00_AXI_RREADY),
        .S_AXI_RRESP(microblaze_0_axi_periph_M00_AXI_RRESP),
        .S_AXI_RVALID(microblaze_0_axi_periph_M00_AXI_RVALID),
        .S_AXI_WDATA(microblaze_0_axi_periph_M00_AXI_WDATA),
        .S_AXI_WREADY(microblaze_0_axi_periph_M00_AXI_WREADY),
        .S_AXI_WSTRB(microblaze_0_axi_periph_M00_AXI_WSTRB),
        .S_AXI_WVALID(microblaze_0_axi_periph_M00_AXI_WVALID));
  (* BMM_INFO_PROCESSOR = "microblaze-le > shell mb_system/microblaze_0_local_memory/dlmb_bram_if_cntlr shell axi_bram_ctrl_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  shell_microblaze_0_0 microblaze_0
       (.Byte_Enable(microblaze_0_DLMB_BE),
        .Clk(Clk_1),
        .DCE(microblaze_0_DLMB_CE),
        .DReady(microblaze_0_DLMB_READY),
        .DUE(microblaze_0_DLMB_UE),
        .DWait(microblaze_0_DLMB_WAIT),
        .D_AS(microblaze_0_DLMB_ADDRSTROBE),
        .Data_Addr(microblaze_0_DLMB_ABUS),
        .Data_Read(microblaze_0_DLMB_READDBUS),
        .Data_Write(microblaze_0_DLMB_WRITEDBUS),
        .Dbg_Capture(mdm_1_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(mdm_1_MBDEBUG_0_CLK),
        .Dbg_Disable(mdm_1_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(mdm_1_MBDEBUG_0_REG_EN),
        .Dbg_Shift(mdm_1_MBDEBUG_0_SHIFT),
        .Dbg_TDI(mdm_1_MBDEBUG_0_TDI),
        .Dbg_TDO(mdm_1_MBDEBUG_0_TDO),
        .Dbg_Update(mdm_1_MBDEBUG_0_UPDATE),
        .Debug_Rst(mdm_1_MBDEBUG_0_RST),
        .ICE(microblaze_0_ILMB_CE),
        .IFetch(microblaze_0_ILMB_READSTROBE),
        .IReady(microblaze_0_ILMB_READY),
        .IUE(microblaze_0_ILMB_UE),
        .IWAIT(microblaze_0_ILMB_WAIT),
        .I_AS(microblaze_0_ILMB_ADDRSTROBE),
        .Instr(microblaze_0_ILMB_READDBUS),
        .Instr_Addr(microblaze_0_ILMB_ABUS),
        .Interrupt(1'b0),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_0_DLMB_READSTROBE),
        .Reset(rst_clk_wiz_0_100M_mb_reset),
        .Write_Strobe(microblaze_0_DLMB_WRITESTROBE));
  shell_microblaze_0_axi_periph_0 microblaze_0_axi_periph
       (.ACLK(Clk_1),
        .ARESETN(rst_clk_wiz_0_100M_interconnect_aresetn),
        .M00_ACLK(Clk_1),
        .M00_ARESETN(ap_rst_n_1),
        .M00_AXI_araddr(microblaze_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(microblaze_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(microblaze_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(microblaze_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(microblaze_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(microblaze_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(microblaze_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(microblaze_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(microblaze_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(microblaze_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(microblaze_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(microblaze_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(microblaze_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(microblaze_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(microblaze_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(microblaze_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(microblaze_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(Clk_1),
        .M01_ARESETN(ap_rst_n_1),
        .M01_AXI_araddr(microblaze_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arprot(microblaze_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(microblaze_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(microblaze_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awprot(microblaze_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(microblaze_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(microblaze_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(microblaze_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(microblaze_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(microblaze_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(microblaze_0_axi_periph_M01_AXI_WVALID),
        .S00_ACLK(Clk_1),
        .S00_ARESETN(ap_rst_n_1),
        .S00_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID));
  microblaze_0_local_memory_imp_1HEYJGJ microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_DLMB_ABUS),
        .DLMB_addrstrobe(microblaze_0_DLMB_ADDRSTROBE),
        .DLMB_be(microblaze_0_DLMB_BE),
        .DLMB_ce(microblaze_0_DLMB_CE),
        .DLMB_readdbus(microblaze_0_DLMB_READDBUS),
        .DLMB_readstrobe(microblaze_0_DLMB_READSTROBE),
        .DLMB_ready(microblaze_0_DLMB_READY),
        .DLMB_ue(microblaze_0_DLMB_UE),
        .DLMB_wait(microblaze_0_DLMB_WAIT),
        .DLMB_writedbus(microblaze_0_DLMB_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_DLMB_WRITESTROBE),
        .ILMB_abus(microblaze_0_ILMB_ABUS),
        .ILMB_addrstrobe(microblaze_0_ILMB_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ILMB_CE),
        .ILMB_readdbus(microblaze_0_ILMB_READDBUS),
        .ILMB_readstrobe(microblaze_0_ILMB_READSTROBE),
        .ILMB_ready(microblaze_0_ILMB_READY),
        .ILMB_ue(microblaze_0_ILMB_UE),
        .ILMB_wait(microblaze_0_ILMB_WAIT),
        .LMB_Clk(Clk_1),
        .SYS_Rst(rst_clk_wiz_0_100M_bus_struct_reset));
  shell_rst_clk_wiz_0_100M_0 rst_clk_wiz_0_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_0_100M_bus_struct_reset),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(rst_clk_wiz_0_100M_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_Debug_SYS_Rst),
        .mb_reset(rst_clk_wiz_0_100M_mb_reset),
        .peripheral_aresetn(ap_rst_n_1),
        .slowest_sync_clk(Clk_1));
endmodule

module mem_interface_imp_1EJ895G
   (MEM_AXI_araddr,
    MEM_AXI_arburst,
    MEM_AXI_arcache,
    MEM_AXI_arid,
    MEM_AXI_arlen,
    MEM_AXI_arlock,
    MEM_AXI_arprot,
    MEM_AXI_arqos,
    MEM_AXI_arready,
    MEM_AXI_arregion,
    MEM_AXI_arsize,
    MEM_AXI_arvalid,
    MEM_AXI_awaddr,
    MEM_AXI_awburst,
    MEM_AXI_awcache,
    MEM_AXI_awid,
    MEM_AXI_awlen,
    MEM_AXI_awlock,
    MEM_AXI_awprot,
    MEM_AXI_awqos,
    MEM_AXI_awready,
    MEM_AXI_awregion,
    MEM_AXI_awsize,
    MEM_AXI_awvalid,
    MEM_AXI_bid,
    MEM_AXI_bready,
    MEM_AXI_bresp,
    MEM_AXI_bvalid,
    MEM_AXI_rdata,
    MEM_AXI_rid,
    MEM_AXI_rlast,
    MEM_AXI_rready,
    MEM_AXI_rresp,
    MEM_AXI_rvalid,
    MEM_AXI_wdata,
    MEM_AXI_wlast,
    MEM_AXI_wready,
    MEM_AXI_wstrb,
    MEM_AXI_wvalid,
    PCIE_ACLK,
    PCIE_AXI_araddr,
    PCIE_AXI_arburst,
    PCIE_AXI_arcache,
    PCIE_AXI_arid,
    PCIE_AXI_arlen,
    PCIE_AXI_arlock,
    PCIE_AXI_arprot,
    PCIE_AXI_arready,
    PCIE_AXI_arsize,
    PCIE_AXI_arvalid,
    PCIE_AXI_awaddr,
    PCIE_AXI_awburst,
    PCIE_AXI_awcache,
    PCIE_AXI_awid,
    PCIE_AXI_awlen,
    PCIE_AXI_awlock,
    PCIE_AXI_awprot,
    PCIE_AXI_awready,
    PCIE_AXI_awsize,
    PCIE_AXI_awvalid,
    PCIE_AXI_bid,
    PCIE_AXI_bready,
    PCIE_AXI_bresp,
    PCIE_AXI_bvalid,
    PCIE_AXI_rdata,
    PCIE_AXI_rid,
    PCIE_AXI_rlast,
    PCIE_AXI_rready,
    PCIE_AXI_rresp,
    PCIE_AXI_rvalid,
    PCIE_AXI_wdata,
    PCIE_AXI_wlast,
    PCIE_AXI_wready,
    PCIE_AXI_wstrb,
    PCIE_AXI_wvalid,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dg,
    c0_ddr4_dm_dbi_n,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_reset_n,
    c0_sys_clk_n,
    c0_sys_clk_p,
    clk156_25,
    m_axi_mm2s_aresetn,
    sys_rst);
  input [31:0]MEM_AXI_araddr;
  input [1:0]MEM_AXI_arburst;
  input [3:0]MEM_AXI_arcache;
  input [0:0]MEM_AXI_arid;
  input [7:0]MEM_AXI_arlen;
  input [0:0]MEM_AXI_arlock;
  input [2:0]MEM_AXI_arprot;
  input [3:0]MEM_AXI_arqos;
  output MEM_AXI_arready;
  input [3:0]MEM_AXI_arregion;
  input [2:0]MEM_AXI_arsize;
  input MEM_AXI_arvalid;
  input [31:0]MEM_AXI_awaddr;
  input [1:0]MEM_AXI_awburst;
  input [3:0]MEM_AXI_awcache;
  input [0:0]MEM_AXI_awid;
  input [7:0]MEM_AXI_awlen;
  input [0:0]MEM_AXI_awlock;
  input [2:0]MEM_AXI_awprot;
  input [3:0]MEM_AXI_awqos;
  output MEM_AXI_awready;
  input [3:0]MEM_AXI_awregion;
  input [2:0]MEM_AXI_awsize;
  input MEM_AXI_awvalid;
  output [0:0]MEM_AXI_bid;
  input MEM_AXI_bready;
  output [1:0]MEM_AXI_bresp;
  output MEM_AXI_bvalid;
  output [511:0]MEM_AXI_rdata;
  output [0:0]MEM_AXI_rid;
  output MEM_AXI_rlast;
  input MEM_AXI_rready;
  output [1:0]MEM_AXI_rresp;
  output MEM_AXI_rvalid;
  input [511:0]MEM_AXI_wdata;
  input MEM_AXI_wlast;
  output MEM_AXI_wready;
  input [63:0]MEM_AXI_wstrb;
  input MEM_AXI_wvalid;
  input PCIE_ACLK;
  input [63:0]PCIE_AXI_araddr;
  input [1:0]PCIE_AXI_arburst;
  input [3:0]PCIE_AXI_arcache;
  input [3:0]PCIE_AXI_arid;
  input [7:0]PCIE_AXI_arlen;
  input [0:0]PCIE_AXI_arlock;
  input [2:0]PCIE_AXI_arprot;
  output PCIE_AXI_arready;
  input [2:0]PCIE_AXI_arsize;
  input PCIE_AXI_arvalid;
  input [63:0]PCIE_AXI_awaddr;
  input [1:0]PCIE_AXI_awburst;
  input [3:0]PCIE_AXI_awcache;
  input [3:0]PCIE_AXI_awid;
  input [7:0]PCIE_AXI_awlen;
  input [0:0]PCIE_AXI_awlock;
  input [2:0]PCIE_AXI_awprot;
  output PCIE_AXI_awready;
  input [2:0]PCIE_AXI_awsize;
  input PCIE_AXI_awvalid;
  output [3:0]PCIE_AXI_bid;
  input PCIE_AXI_bready;
  output [1:0]PCIE_AXI_bresp;
  output PCIE_AXI_bvalid;
  output [255:0]PCIE_AXI_rdata;
  output [3:0]PCIE_AXI_rid;
  output PCIE_AXI_rlast;
  input PCIE_AXI_rready;
  output [1:0]PCIE_AXI_rresp;
  output PCIE_AXI_rvalid;
  input [255:0]PCIE_AXI_wdata;
  input PCIE_AXI_wlast;
  output PCIE_AXI_wready;
  input [31:0]PCIE_AXI_wstrb;
  input PCIE_AXI_wvalid;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_ck_c;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_cs_n;
  inout [63:0]c0_ddr4_dg;
  inout [7:0]c0_ddr4_dm_dbi_n;
  inout [7:0]c0_ddr4_dqs_c;
  inout [7:0]c0_ddr4_dqs_t;
  output [0:0]c0_ddr4_odt;
  output c0_ddr4_reset_n;
  input c0_sys_clk_n;
  input c0_sys_clk_p;
  input clk156_25;
  input m_axi_mm2s_aresetn;
  input [0:0]sys_rst;

  wire [63:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [63:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [3:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [255:0]Conn1_RDATA;
  wire [3:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [255:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [31:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [0:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [0:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [0:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire [0:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [7:0]Net4;
  wire [7:0]Net5;
  wire [7:0]Net6;
  wire [63:0]Net7;
  wire S00_ACLK_1;
  wire c1_sys_clk_n_1;
  wire c1_sys_clk_p_1;
  wire ddr4_1_c0_ddr4_act_n;
  wire [16:0]ddr4_1_c0_ddr4_adr;
  wire [1:0]ddr4_1_c0_ddr4_ba;
  wire [1:0]ddr4_1_c0_ddr4_bg;
  wire [0:0]ddr4_1_c0_ddr4_ck_c;
  wire [0:0]ddr4_1_c0_ddr4_ck_t;
  wire [0:0]ddr4_1_c0_ddr4_cke;
  wire [0:0]ddr4_1_c0_ddr4_cs_n;
  wire [0:0]ddr4_1_c0_ddr4_odt;
  wire ddr4_1_c0_ddr4_reset_n;
  wire ddr4_1_c0_ddr4_ui_clk;
  wire ddr4_1_c0_ddr4_ui_clk_sync_rst;
  wire m_axi_mm2s_aclk_1;
  wire m_axi_mm2s_aresetn_1;
  wire [32:0]pcie_interconnect_M00_AXI_ARADDR;
  wire [1:0]pcie_interconnect_M00_AXI_ARBURST;
  wire [3:0]pcie_interconnect_M00_AXI_ARCACHE;
  wire [1:0]pcie_interconnect_M00_AXI_ARID;
  wire [7:0]pcie_interconnect_M00_AXI_ARLEN;
  wire [0:0]pcie_interconnect_M00_AXI_ARLOCK;
  wire [2:0]pcie_interconnect_M00_AXI_ARPROT;
  wire [3:0]pcie_interconnect_M00_AXI_ARQOS;
  wire pcie_interconnect_M00_AXI_ARREADY;
  wire [2:0]pcie_interconnect_M00_AXI_ARSIZE;
  wire pcie_interconnect_M00_AXI_ARVALID;
  wire [32:0]pcie_interconnect_M00_AXI_AWADDR;
  wire [1:0]pcie_interconnect_M00_AXI_AWBURST;
  wire [3:0]pcie_interconnect_M00_AXI_AWCACHE;
  wire [1:0]pcie_interconnect_M00_AXI_AWID;
  wire [7:0]pcie_interconnect_M00_AXI_AWLEN;
  wire [0:0]pcie_interconnect_M00_AXI_AWLOCK;
  wire [2:0]pcie_interconnect_M00_AXI_AWPROT;
  wire [3:0]pcie_interconnect_M00_AXI_AWQOS;
  wire pcie_interconnect_M00_AXI_AWREADY;
  wire [2:0]pcie_interconnect_M00_AXI_AWSIZE;
  wire pcie_interconnect_M00_AXI_AWVALID;
  wire [1:0]pcie_interconnect_M00_AXI_BID;
  wire pcie_interconnect_M00_AXI_BREADY;
  wire [1:0]pcie_interconnect_M00_AXI_BRESP;
  wire pcie_interconnect_M00_AXI_BVALID;
  wire [511:0]pcie_interconnect_M00_AXI_RDATA;
  wire [1:0]pcie_interconnect_M00_AXI_RID;
  wire pcie_interconnect_M00_AXI_RLAST;
  wire pcie_interconnect_M00_AXI_RREADY;
  wire [1:0]pcie_interconnect_M00_AXI_RRESP;
  wire pcie_interconnect_M00_AXI_RVALID;
  wire [511:0]pcie_interconnect_M00_AXI_WDATA;
  wire pcie_interconnect_M00_AXI_WLAST;
  wire pcie_interconnect_M00_AXI_WREADY;
  wire [63:0]pcie_interconnect_M00_AXI_WSTRB;
  wire pcie_interconnect_M00_AXI_WVALID;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]sys_rst_1;

  assign Conn1_ARADDR = PCIE_AXI_araddr[63:0];
  assign Conn1_ARBURST = PCIE_AXI_arburst[1:0];
  assign Conn1_ARCACHE = PCIE_AXI_arcache[3:0];
  assign Conn1_ARID = PCIE_AXI_arid[3:0];
  assign Conn1_ARLEN = PCIE_AXI_arlen[7:0];
  assign Conn1_ARLOCK = PCIE_AXI_arlock[0];
  assign Conn1_ARPROT = PCIE_AXI_arprot[2:0];
  assign Conn1_ARSIZE = PCIE_AXI_arsize[2:0];
  assign Conn1_ARVALID = PCIE_AXI_arvalid;
  assign Conn1_AWADDR = PCIE_AXI_awaddr[63:0];
  assign Conn1_AWBURST = PCIE_AXI_awburst[1:0];
  assign Conn1_AWCACHE = PCIE_AXI_awcache[3:0];
  assign Conn1_AWID = PCIE_AXI_awid[3:0];
  assign Conn1_AWLEN = PCIE_AXI_awlen[7:0];
  assign Conn1_AWLOCK = PCIE_AXI_awlock[0];
  assign Conn1_AWPROT = PCIE_AXI_awprot[2:0];
  assign Conn1_AWSIZE = PCIE_AXI_awsize[2:0];
  assign Conn1_AWVALID = PCIE_AXI_awvalid;
  assign Conn1_BREADY = PCIE_AXI_bready;
  assign Conn1_RREADY = PCIE_AXI_rready;
  assign Conn1_WDATA = PCIE_AXI_wdata[255:0];
  assign Conn1_WLAST = PCIE_AXI_wlast;
  assign Conn1_WSTRB = PCIE_AXI_wstrb[31:0];
  assign Conn1_WVALID = PCIE_AXI_wvalid;
  assign Conn2_ARADDR = MEM_AXI_araddr[31:0];
  assign Conn2_ARBURST = MEM_AXI_arburst[1:0];
  assign Conn2_ARCACHE = MEM_AXI_arcache[3:0];
  assign Conn2_ARID = MEM_AXI_arid[0];
  assign Conn2_ARLEN = MEM_AXI_arlen[7:0];
  assign Conn2_ARLOCK = MEM_AXI_arlock[0];
  assign Conn2_ARPROT = MEM_AXI_arprot[2:0];
  assign Conn2_ARQOS = MEM_AXI_arqos[3:0];
  assign Conn2_ARREGION = MEM_AXI_arregion[3:0];
  assign Conn2_ARSIZE = MEM_AXI_arsize[2:0];
  assign Conn2_ARVALID = MEM_AXI_arvalid;
  assign Conn2_AWADDR = MEM_AXI_awaddr[31:0];
  assign Conn2_AWBURST = MEM_AXI_awburst[1:0];
  assign Conn2_AWCACHE = MEM_AXI_awcache[3:0];
  assign Conn2_AWID = MEM_AXI_awid[0];
  assign Conn2_AWLEN = MEM_AXI_awlen[7:0];
  assign Conn2_AWLOCK = MEM_AXI_awlock[0];
  assign Conn2_AWPROT = MEM_AXI_awprot[2:0];
  assign Conn2_AWQOS = MEM_AXI_awqos[3:0];
  assign Conn2_AWREGION = MEM_AXI_awregion[3:0];
  assign Conn2_AWSIZE = MEM_AXI_awsize[2:0];
  assign Conn2_AWVALID = MEM_AXI_awvalid;
  assign Conn2_BREADY = MEM_AXI_bready;
  assign Conn2_RREADY = MEM_AXI_rready;
  assign Conn2_WDATA = MEM_AXI_wdata[511:0];
  assign Conn2_WLAST = MEM_AXI_wlast;
  assign Conn2_WSTRB = MEM_AXI_wstrb[63:0];
  assign Conn2_WVALID = MEM_AXI_wvalid;
  assign MEM_AXI_arready = Conn2_ARREADY;
  assign MEM_AXI_awready = Conn2_AWREADY;
  assign MEM_AXI_bid[0] = Conn2_BID;
  assign MEM_AXI_bresp[1:0] = Conn2_BRESP;
  assign MEM_AXI_bvalid = Conn2_BVALID;
  assign MEM_AXI_rdata[511:0] = Conn2_RDATA;
  assign MEM_AXI_rid[0] = Conn2_RID;
  assign MEM_AXI_rlast = Conn2_RLAST;
  assign MEM_AXI_rresp[1:0] = Conn2_RRESP;
  assign MEM_AXI_rvalid = Conn2_RVALID;
  assign MEM_AXI_wready = Conn2_WREADY;
  assign PCIE_AXI_arready = Conn1_ARREADY;
  assign PCIE_AXI_awready = Conn1_AWREADY;
  assign PCIE_AXI_bid[3:0] = Conn1_BID;
  assign PCIE_AXI_bresp[1:0] = Conn1_BRESP;
  assign PCIE_AXI_bvalid = Conn1_BVALID;
  assign PCIE_AXI_rdata[255:0] = Conn1_RDATA;
  assign PCIE_AXI_rid[3:0] = Conn1_RID;
  assign PCIE_AXI_rlast = Conn1_RLAST;
  assign PCIE_AXI_rresp[1:0] = Conn1_RRESP;
  assign PCIE_AXI_rvalid = Conn1_RVALID;
  assign PCIE_AXI_wready = Conn1_WREADY;
  assign S00_ACLK_1 = PCIE_ACLK;
  assign c0_ddr4_act_n = ddr4_1_c0_ddr4_act_n;
  assign c0_ddr4_adr[16:0] = ddr4_1_c0_ddr4_adr;
  assign c0_ddr4_ba[1:0] = ddr4_1_c0_ddr4_ba;
  assign c0_ddr4_bg[1:0] = ddr4_1_c0_ddr4_bg;
  assign c0_ddr4_ck_c[0] = ddr4_1_c0_ddr4_ck_c;
  assign c0_ddr4_ck_t[0] = ddr4_1_c0_ddr4_ck_t;
  assign c0_ddr4_cke[0] = ddr4_1_c0_ddr4_cke;
  assign c0_ddr4_cs_n[0] = ddr4_1_c0_ddr4_cs_n;
  assign c0_ddr4_odt[0] = ddr4_1_c0_ddr4_odt;
  assign c0_ddr4_reset_n = ddr4_1_c0_ddr4_reset_n;
  assign c1_sys_clk_n_1 = c0_sys_clk_n;
  assign c1_sys_clk_p_1 = c0_sys_clk_p;
  assign m_axi_mm2s_aclk_1 = clk156_25;
  assign m_axi_mm2s_aresetn_1 = m_axi_mm2s_aresetn;
  assign sys_rst_1 = sys_rst[0];
  shell_ddr4_0_0 ddr4_0
       (.c0_ddr4_act_n(ddr4_1_c0_ddr4_act_n),
        .c0_ddr4_adr(ddr4_1_c0_ddr4_adr),
        .c0_ddr4_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .c0_ddr4_ba(ddr4_1_c0_ddr4_ba),
        .c0_ddr4_bg(ddr4_1_c0_ddr4_bg),
        .c0_ddr4_ck_c(ddr4_1_c0_ddr4_ck_c),
        .c0_ddr4_ck_t(ddr4_1_c0_ddr4_ck_t),
        .c0_ddr4_cke(ddr4_1_c0_ddr4_cke),
        .c0_ddr4_cs_n(ddr4_1_c0_ddr4_cs_n),
        .c0_ddr4_dm_dbi_n(c0_ddr4_dm_dbi_n[7:0]),
        .c0_ddr4_dq(c0_ddr4_dg[63:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[7:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[7:0]),
        .c0_ddr4_odt(ddr4_1_c0_ddr4_odt),
        .c0_ddr4_reset_n(ddr4_1_c0_ddr4_reset_n),
        .c0_ddr4_s_axi_araddr(pcie_interconnect_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(pcie_interconnect_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(pcie_interconnect_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(pcie_interconnect_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(pcie_interconnect_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(pcie_interconnect_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(pcie_interconnect_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(pcie_interconnect_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(pcie_interconnect_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(pcie_interconnect_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(pcie_interconnect_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(pcie_interconnect_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(pcie_interconnect_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(pcie_interconnect_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(pcie_interconnect_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(pcie_interconnect_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(pcie_interconnect_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(pcie_interconnect_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(pcie_interconnect_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(pcie_interconnect_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(pcie_interconnect_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(pcie_interconnect_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(pcie_interconnect_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(pcie_interconnect_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(pcie_interconnect_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(pcie_interconnect_M00_AXI_BVALID),
        .c0_ddr4_s_axi_rdata(pcie_interconnect_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(pcie_interconnect_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(pcie_interconnect_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(pcie_interconnect_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(pcie_interconnect_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(pcie_interconnect_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(pcie_interconnect_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(pcie_interconnect_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(pcie_interconnect_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(pcie_interconnect_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(pcie_interconnect_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_1_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_1_c0_ddr4_ui_clk_sync_rst),
        .c0_sys_clk_n(c1_sys_clk_n_1),
        .c0_sys_clk_p(c1_sys_clk_p_1),
        .sys_rst(sys_rst_1));
  shell_mem_interconnect_0 mem_interconnect
       (.ACLK(m_axi_mm2s_aclk_1),
        .ARESETN(m_axi_mm2s_aresetn_1),
        .M00_ACLK(ddr4_1_c0_ddr4_ui_clk),
        .M00_ARESETN(1'b0),
        .M00_AXI_araddr(pcie_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(pcie_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(pcie_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arid(pcie_interconnect_M00_AXI_ARID),
        .M00_AXI_arlen(pcie_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(pcie_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(pcie_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(pcie_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(pcie_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(pcie_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(pcie_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(pcie_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(pcie_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(pcie_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awid(pcie_interconnect_M00_AXI_AWID),
        .M00_AXI_awlen(pcie_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(pcie_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(pcie_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(pcie_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(pcie_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(pcie_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(pcie_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(pcie_interconnect_M00_AXI_BID),
        .M00_AXI_bready(pcie_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(pcie_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(pcie_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(pcie_interconnect_M00_AXI_RDATA),
        .M00_AXI_rid(pcie_interconnect_M00_AXI_RID),
        .M00_AXI_rlast(pcie_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(pcie_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(pcie_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(pcie_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(pcie_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(pcie_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(pcie_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(pcie_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(pcie_interconnect_M00_AXI_WVALID),
        .S00_ACLK(S00_ACLK_1),
        .S00_ARESETN(proc_sys_reset_1_interconnect_aresetn),
        .S00_AXI_araddr(Conn1_ARADDR),
        .S00_AXI_arburst(Conn1_ARBURST),
        .S00_AXI_arcache(Conn1_ARCACHE),
        .S00_AXI_arid(Conn1_ARID),
        .S00_AXI_arlen(Conn1_ARLEN),
        .S00_AXI_arlock(Conn1_ARLOCK),
        .S00_AXI_arprot(Conn1_ARPROT),
        .S00_AXI_arready(Conn1_ARREADY),
        .S00_AXI_arsize(Conn1_ARSIZE),
        .S00_AXI_arvalid(Conn1_ARVALID),
        .S00_AXI_awaddr(Conn1_AWADDR),
        .S00_AXI_awburst(Conn1_AWBURST),
        .S00_AXI_awcache(Conn1_AWCACHE),
        .S00_AXI_awid(Conn1_AWID),
        .S00_AXI_awlen(Conn1_AWLEN),
        .S00_AXI_awlock(Conn1_AWLOCK),
        .S00_AXI_awprot(Conn1_AWPROT),
        .S00_AXI_awready(Conn1_AWREADY),
        .S00_AXI_awsize(Conn1_AWSIZE),
        .S00_AXI_awvalid(Conn1_AWVALID),
        .S00_AXI_bid(Conn1_BID),
        .S00_AXI_bready(Conn1_BREADY),
        .S00_AXI_bresp(Conn1_BRESP),
        .S00_AXI_bvalid(Conn1_BVALID),
        .S00_AXI_rdata(Conn1_RDATA),
        .S00_AXI_rid(Conn1_RID),
        .S00_AXI_rlast(Conn1_RLAST),
        .S00_AXI_rready(Conn1_RREADY),
        .S00_AXI_rresp(Conn1_RRESP),
        .S00_AXI_rvalid(Conn1_RVALID),
        .S00_AXI_wdata(Conn1_WDATA),
        .S00_AXI_wlast(Conn1_WLAST),
        .S00_AXI_wready(Conn1_WREADY),
        .S00_AXI_wstrb(Conn1_WSTRB),
        .S00_AXI_wvalid(Conn1_WVALID),
        .S01_ACLK(m_axi_mm2s_aclk_1),
        .S01_ARESETN(m_axi_mm2s_aresetn_1),
        .S01_AXI_araddr(Conn2_ARADDR),
        .S01_AXI_arburst(Conn2_ARBURST),
        .S01_AXI_arcache(Conn2_ARCACHE),
        .S01_AXI_arid(Conn2_ARID),
        .S01_AXI_arlen(Conn2_ARLEN),
        .S01_AXI_arlock(Conn2_ARLOCK),
        .S01_AXI_arprot(Conn2_ARPROT),
        .S01_AXI_arqos(Conn2_ARQOS),
        .S01_AXI_arready(Conn2_ARREADY),
        .S01_AXI_arregion(Conn2_ARREGION),
        .S01_AXI_arsize(Conn2_ARSIZE),
        .S01_AXI_arvalid(Conn2_ARVALID),
        .S01_AXI_awaddr(Conn2_AWADDR),
        .S01_AXI_awburst(Conn2_AWBURST),
        .S01_AXI_awcache(Conn2_AWCACHE),
        .S01_AXI_awid(Conn2_AWID),
        .S01_AXI_awlen(Conn2_AWLEN),
        .S01_AXI_awlock(Conn2_AWLOCK),
        .S01_AXI_awprot(Conn2_AWPROT),
        .S01_AXI_awqos(Conn2_AWQOS),
        .S01_AXI_awready(Conn2_AWREADY),
        .S01_AXI_awregion(Conn2_AWREGION),
        .S01_AXI_awsize(Conn2_AWSIZE),
        .S01_AXI_awvalid(Conn2_AWVALID),
        .S01_AXI_bid(Conn2_BID),
        .S01_AXI_bready(Conn2_BREADY),
        .S01_AXI_bresp(Conn2_BRESP),
        .S01_AXI_bvalid(Conn2_BVALID),
        .S01_AXI_rdata(Conn2_RDATA),
        .S01_AXI_rid(Conn2_RID),
        .S01_AXI_rlast(Conn2_RLAST),
        .S01_AXI_rready(Conn2_RREADY),
        .S01_AXI_rresp(Conn2_RRESP),
        .S01_AXI_rvalid(Conn2_RVALID),
        .S01_AXI_wdata(Conn2_WDATA),
        .S01_AXI_wlast(Conn2_WLAST),
        .S01_AXI_wready(Conn2_WREADY),
        .S01_AXI_wstrb(Conn2_WSTRB),
        .S01_AXI_wvalid(Conn2_WVALID));
  shell_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(ddr4_1_c0_ddr4_ui_clk_sync_rst),
        .dcm_locked(1'b1),
        .ext_reset_in(m_axi_mm2s_aresetn_1),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(ddr4_1_c0_ddr4_ui_clk));
endmodule

module microblaze_0_local_memory_imp_1HEYJGJ
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > shell mb_system/microblaze_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  shell_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  shell_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  shell_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  shell_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  shell_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule

module network_imp_10F7WL8
   (M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    aresetn,
    clk_100,
    clk_156,
    network_reset_done,
    refclk_n,
    refclk_p,
    reset,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    tx_statistics_valid,
    tx_statistics_vector,
    txn,
    txp);
  output [63:0]M_AXIS_tdata;
  output [7:0]M_AXIS_tkeep;
  output [0:0]M_AXIS_tlast;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  input [63:0]S_AXIS_tdata;
  input [7:0]S_AXIS_tkeep;
  input [0:0]S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input aresetn;
  input clk_100;
  output clk_156;
  output network_reset_done;
  input refclk_n;
  input refclk_p;
  input [0:0]reset;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txn;
  output txp;

  wire [63:0]Conn1_TDATA;
  wire [7:0]Conn1_TKEEP;
  wire [0:0]Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [63:0]axi_10g_ethernet_0_m_axis_rx_TDATA;
  wire [7:0]axi_10g_ethernet_0_m_axis_rx_TKEEP;
  wire axi_10g_ethernet_0_m_axis_rx_TLAST;
  wire axi_10g_ethernet_0_m_axis_rx_TVALID;
  wire axi_10g_ethernet_0_resetdone_out;
  wire axi_10g_ethernet_0_rx_statistics_valid;
  wire [29:0]axi_10g_ethernet_0_rx_statistics_vector;
  wire axi_10g_ethernet_0_tx_statistics_valid;
  wire [25:0]axi_10g_ethernet_0_tx_statistics_vector;
  wire axi_10g_ethernet_0_txn;
  wire axi_10g_ethernet_0_txp;
  wire axi_10g_ethernet_0_txusrclk2_out;
  wire [63:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire [7:0]axis_data_fifo_0_M_AXIS_TKEEP;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [63:0]axis_register_slice_0_M_AXIS_TDATA;
  wire [7:0]axis_register_slice_0_M_AXIS_TKEEP;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire [63:0]axis_register_slice_1_M_AXIS_TDATA;
  wire [7:0]axis_register_slice_1_M_AXIS_TKEEP;
  wire axis_register_slice_1_M_AXIS_TLAST;
  wire axis_register_slice_1_M_AXIS_TVALID;
  wire dclk_1;
  wire [0:0]gnd_dout;
  wire [7:0]ifg_delay_dout;
  wire [79:0]mac_config_vector_dout;
  wire [535:0]pcs_config_vector_dout;
  wire refclk_n_1;
  wire refclk_p_1;
  wire [0:0]reset_1;
  wire [63:0]rx_data_fifo_1_M_AXIS_TDATA;
  wire [7:0]rx_data_fifo_1_M_AXIS_TKEEP;
  wire rx_data_fifo_1_M_AXIS_TLAST;
  wire rx_data_fifo_1_M_AXIS_TREADY;
  wire rx_data_fifo_1_M_AXIS_TVALID;
  wire rxn_1;
  wire rxp_1;
  wire tx_axis_aresetn_1;
  wire [15:0]tx_ifg_tuser_dout;
  wire [0:0]vcc_dout;

  assign Conn1_TDATA = S_AXIS_tdata[63:0];
  assign Conn1_TKEEP = S_AXIS_tkeep[7:0];
  assign Conn1_TLAST = S_AXIS_tlast[0];
  assign Conn1_TVALID = S_AXIS_tvalid;
  assign M_AXIS_tdata[63:0] = rx_data_fifo_1_M_AXIS_TDATA;
  assign M_AXIS_tkeep[7:0] = rx_data_fifo_1_M_AXIS_TKEEP;
  assign M_AXIS_tlast[0] = rx_data_fifo_1_M_AXIS_TLAST;
  assign M_AXIS_tvalid = rx_data_fifo_1_M_AXIS_TVALID;
  assign S_AXIS_tready = Conn1_TREADY;
  assign clk_156 = axi_10g_ethernet_0_txusrclk2_out;
  assign dclk_1 = clk_100;
  assign network_reset_done = axi_10g_ethernet_0_resetdone_out;
  assign refclk_n_1 = refclk_n;
  assign refclk_p_1 = refclk_p;
  assign reset_1 = reset[0];
  assign rx_data_fifo_1_M_AXIS_TREADY = M_AXIS_tready;
  assign rx_statistics_valid = axi_10g_ethernet_0_rx_statistics_valid;
  assign rx_statistics_vector[29:0] = axi_10g_ethernet_0_rx_statistics_vector;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign tx_axis_aresetn_1 = aresetn;
  assign tx_statistics_valid = axi_10g_ethernet_0_tx_statistics_valid;
  assign tx_statistics_vector[25:0] = axi_10g_ethernet_0_tx_statistics_vector;
  assign txn = axi_10g_ethernet_0_txn;
  assign txp = axi_10g_ethernet_0_txp;
  shell_axi_10g_ethernet_0_0 axi_10g_ethernet_0
       (.dclk(dclk_1),
        .m_axis_rx_tdata(axi_10g_ethernet_0_m_axis_rx_TDATA),
        .m_axis_rx_tkeep(axi_10g_ethernet_0_m_axis_rx_TKEEP),
        .m_axis_rx_tlast(axi_10g_ethernet_0_m_axis_rx_TLAST),
        .m_axis_rx_tvalid(axi_10g_ethernet_0_m_axis_rx_TVALID),
        .mac_rx_configuration_vector(mac_config_vector_dout),
        .mac_tx_configuration_vector(mac_config_vector_dout),
        .pcs_pma_configuration_vector(pcs_config_vector_dout),
        .refclk_n(refclk_n_1),
        .refclk_p(refclk_p_1),
        .reset(reset_1),
        .resetdone_out(axi_10g_ethernet_0_resetdone_out),
        .rx_axis_aresetn(tx_axis_aresetn_1),
        .rx_statistics_valid(axi_10g_ethernet_0_rx_statistics_valid),
        .rx_statistics_vector(axi_10g_ethernet_0_rx_statistics_vector),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .s_axis_pause_tdata(tx_ifg_tuser_dout),
        .s_axis_pause_tvalid(gnd_dout),
        .s_axis_tx_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .s_axis_tx_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .s_axis_tx_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .s_axis_tx_tready(axis_register_slice_0_M_AXIS_TREADY),
        .s_axis_tx_tuser(1'b0),
        .s_axis_tx_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .signal_detect(vcc_dout),
        .sim_speedup_control(gnd_dout),
        .tx_axis_aresetn(tx_axis_aresetn_1),
        .tx_fault(gnd_dout),
        .tx_ifg_delay(ifg_delay_dout),
        .tx_statistics_valid(axi_10g_ethernet_0_tx_statistics_valid),
        .tx_statistics_vector(axi_10g_ethernet_0_tx_statistics_vector),
        .txn(axi_10g_ethernet_0_txn),
        .txp(axi_10g_ethernet_0_txp),
        .txusrclk2_out(axi_10g_ethernet_0_txusrclk2_out));
  shell_gnd_1 gnd
       (.dout(gnd_dout));
  shell_ifg_delay_0 ifg_delay
       (.dout(ifg_delay_dout));
  shell_mac_config_vector_0 mac_config_vector
       (.dout(mac_config_vector_dout));
  shell_pcs_config_vector_0 pcs_config_vector
       (.dout(pcs_config_vector_dout));
  shell_rx_data_fifo_1_0 rx_data_fifo_1
       (.m_axis_tdata(rx_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tkeep(rx_data_fifo_1_M_AXIS_TKEEP),
        .m_axis_tlast(rx_data_fifo_1_M_AXIS_TLAST),
        .m_axis_tready(rx_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tvalid(rx_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(axi_10g_ethernet_0_txusrclk2_out),
        .s_axis_aresetn(tx_axis_aresetn_1),
        .s_axis_tdata(axis_register_slice_1_M_AXIS_TDATA),
        .s_axis_tkeep(axis_register_slice_1_M_AXIS_TKEEP),
        .s_axis_tlast(axis_register_slice_1_M_AXIS_TLAST),
        .s_axis_tvalid(axis_register_slice_1_M_AXIS_TVALID));
  shell_rx_register_slice_1_0 rx_register_slice_1
       (.aclk(axi_10g_ethernet_0_txusrclk2_out),
        .aresetn(tx_axis_aresetn_1),
        .m_axis_tdata(axis_register_slice_1_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_1_M_AXIS_TLAST),
        .m_axis_tvalid(axis_register_slice_1_M_AXIS_TVALID),
        .s_axis_tdata(axi_10g_ethernet_0_m_axis_rx_TDATA),
        .s_axis_tkeep(axi_10g_ethernet_0_m_axis_rx_TKEEP),
        .s_axis_tlast(axi_10g_ethernet_0_m_axis_rx_TLAST),
        .s_axis_tvalid(axi_10g_ethernet_0_m_axis_rx_TVALID));
  shell_tx_data_fifo_0_0 tx_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(axi_10g_ethernet_0_txusrclk2_out),
        .s_axis_aresetn(tx_axis_aresetn_1),
        .s_axis_tdata(Conn1_TDATA),
        .s_axis_tkeep(Conn1_TKEEP),
        .s_axis_tlast(Conn1_TLAST),
        .s_axis_tready(Conn1_TREADY),
        .s_axis_tvalid(Conn1_TVALID));
  shell_tx_ifg_tuser_0 tx_ifg_tuser
       (.dout(tx_ifg_tuser_dout));
  shell_tx_register_slice_0_0 tx_register_slice_0
       (.aclk(axi_10g_ethernet_0_txusrclk2_out),
        .aresetn(tx_axis_aresetn_1),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tkeep(axis_data_fifo_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  shell_vcc_0 vcc
       (.dout(vcc_dout));
endmodule

module s00_couplers_imp_1751KRY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1KJMYX0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_RDWXZU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_cc_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s00_couplers_ARQOS;
  wire auto_us_cc_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s00_couplers_ARSIZE;
  wire auto_us_cc_df_to_s00_couplers_ARVALID;
  wire [63:0]auto_us_cc_df_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s00_couplers_AWQOS;
  wire auto_us_cc_df_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s00_couplers_AWSIZE;
  wire auto_us_cc_df_to_s00_couplers_AWVALID;
  wire auto_us_cc_df_to_s00_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s00_couplers_BRESP;
  wire auto_us_cc_df_to_s00_couplers_BVALID;
  wire [511:0]auto_us_cc_df_to_s00_couplers_RDATA;
  wire auto_us_cc_df_to_s00_couplers_RLAST;
  wire auto_us_cc_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s00_couplers_RRESP;
  wire auto_us_cc_df_to_s00_couplers_RVALID;
  wire [511:0]auto_us_cc_df_to_s00_couplers_WDATA;
  wire auto_us_cc_df_to_s00_couplers_WLAST;
  wire auto_us_cc_df_to_s00_couplers_WREADY;
  wire [63:0]auto_us_cc_df_to_s00_couplers_WSTRB;
  wire auto_us_cc_df_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_auto_us_cc_df_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_cc_df_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_cc_df_ARCACHE;
  wire [3:0]s00_couplers_to_auto_us_cc_df_ARID;
  wire [7:0]s00_couplers_to_auto_us_cc_df_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_cc_df_ARPROT;
  wire s00_couplers_to_auto_us_cc_df_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_cc_df_ARSIZE;
  wire s00_couplers_to_auto_us_cc_df_ARVALID;
  wire [63:0]s00_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_cc_df_AWCACHE;
  wire [3:0]s00_couplers_to_auto_us_cc_df_AWID;
  wire [7:0]s00_couplers_to_auto_us_cc_df_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_cc_df_AWPROT;
  wire s00_couplers_to_auto_us_cc_df_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_cc_df_AWSIZE;
  wire s00_couplers_to_auto_us_cc_df_AWVALID;
  wire [3:0]s00_couplers_to_auto_us_cc_df_BID;
  wire s00_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s00_couplers_to_auto_us_cc_df_BRESP;
  wire s00_couplers_to_auto_us_cc_df_BVALID;
  wire [255:0]s00_couplers_to_auto_us_cc_df_RDATA;
  wire [3:0]s00_couplers_to_auto_us_cc_df_RID;
  wire s00_couplers_to_auto_us_cc_df_RLAST;
  wire s00_couplers_to_auto_us_cc_df_RREADY;
  wire [1:0]s00_couplers_to_auto_us_cc_df_RRESP;
  wire s00_couplers_to_auto_us_cc_df_RVALID;
  wire [255:0]s00_couplers_to_auto_us_cc_df_WDATA;
  wire s00_couplers_to_auto_us_cc_df_WLAST;
  wire s00_couplers_to_auto_us_cc_df_WREADY;
  wire [31:0]s00_couplers_to_auto_us_cc_df_WSTRB;
  wire s00_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_cc_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_us_cc_df_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_cc_df_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_cc_df_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_cc_df_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bid[3:0] = s00_couplers_to_auto_us_cc_df_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_rdata[255:0] = s00_couplers_to_auto_us_cc_df_RDATA;
  assign S_AXI_rid[3:0] = s00_couplers_to_auto_us_cc_df_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_us_cc_df_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_cc_df_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_cc_df_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_cc_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_cc_df_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_auto_us_cc_df_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_cc_df_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_cc_df_ARID = S_AXI_arid[3:0];
  assign s00_couplers_to_auto_us_cc_df_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_cc_df_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_cc_df_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_cc_df_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_cc_df_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_cc_df_AWID = S_AXI_awid[3:0];
  assign s00_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_cc_df_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_cc_df_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[255:0];
  assign s00_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[31:0];
  assign s00_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  shell_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_us_cc_df_ARID),
        .s_axi_arlen(s00_couplers_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_us_cc_df_AWID),
        .s_axi_awlen(s00_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_us_cc_df_BID),
        .s_axi_bready(s00_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_cc_df_RDATA),
        .s_axi_rid(s00_couplers_to_auto_us_cc_df_RID),
        .s_axi_rlast(s00_couplers_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_cc_df_WVALID));
endmodule

module s01_couplers_imp_1OUCIK2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]s01_couplers_to_s01_data_fifo_ARADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_ARBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARCACHE;
  wire [0:0]s01_couplers_to_s01_data_fifo_ARID;
  wire [7:0]s01_couplers_to_s01_data_fifo_ARLEN;
  wire [0:0]s01_couplers_to_s01_data_fifo_ARLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARPROT;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARQOS;
  wire s01_couplers_to_s01_data_fifo_ARREADY;
  wire [3:0]s01_couplers_to_s01_data_fifo_ARREGION;
  wire [2:0]s01_couplers_to_s01_data_fifo_ARSIZE;
  wire s01_couplers_to_s01_data_fifo_ARVALID;
  wire [31:0]s01_couplers_to_s01_data_fifo_AWADDR;
  wire [1:0]s01_couplers_to_s01_data_fifo_AWBURST;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWCACHE;
  wire [0:0]s01_couplers_to_s01_data_fifo_AWID;
  wire [7:0]s01_couplers_to_s01_data_fifo_AWLEN;
  wire [0:0]s01_couplers_to_s01_data_fifo_AWLOCK;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWPROT;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWQOS;
  wire s01_couplers_to_s01_data_fifo_AWREADY;
  wire [3:0]s01_couplers_to_s01_data_fifo_AWREGION;
  wire [2:0]s01_couplers_to_s01_data_fifo_AWSIZE;
  wire s01_couplers_to_s01_data_fifo_AWVALID;
  wire [0:0]s01_couplers_to_s01_data_fifo_BID;
  wire s01_couplers_to_s01_data_fifo_BREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_BRESP;
  wire s01_couplers_to_s01_data_fifo_BVALID;
  wire [511:0]s01_couplers_to_s01_data_fifo_RDATA;
  wire [0:0]s01_couplers_to_s01_data_fifo_RID;
  wire s01_couplers_to_s01_data_fifo_RLAST;
  wire s01_couplers_to_s01_data_fifo_RREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_RRESP;
  wire s01_couplers_to_s01_data_fifo_RVALID;
  wire [511:0]s01_couplers_to_s01_data_fifo_WDATA;
  wire s01_couplers_to_s01_data_fifo_WLAST;
  wire s01_couplers_to_s01_data_fifo_WREADY;
  wire [63:0]s01_couplers_to_s01_data_fifo_WSTRB;
  wire s01_couplers_to_s01_data_fifo_WVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARID;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWID;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire [1:0]s01_data_fifo_to_s01_couplers_BID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [511:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire [1:0]s01_data_fifo_to_s01_couplers_RID;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [511:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [63:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[0] = s01_data_fifo_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[0] = s01_data_fifo_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_AXI_arready = s01_couplers_to_s01_data_fifo_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_data_fifo_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_s01_data_fifo_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_data_fifo_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_data_fifo_BVALID;
  assign S_AXI_rdata[511:0] = s01_couplers_to_s01_data_fifo_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_s01_data_fifo_RID;
  assign S_AXI_rlast = s01_couplers_to_s01_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_data_fifo_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_data_fifo_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_data_fifo_WREADY;
  assign s01_couplers_to_s01_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_data_fifo_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_data_fifo_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_data_fifo_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_data_fifo_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_data_fifo_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_data_fifo_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_data_fifo_WDATA = S_AXI_wdata[511:0];
  assign s01_couplers_to_s01_data_fifo_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_data_fifo_WSTRB = S_AXI_wstrb[63:0];
  assign s01_couplers_to_s01_data_fifo_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BID = M_AXI_bid[1:0];
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign s01_data_fifo_to_s01_couplers_RID = M_AXI_rid[1:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  shell_s01_data_fifo_0 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arid(s01_data_fifo_to_s01_couplers_ARID),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awid(s01_data_fifo_to_s01_couplers_AWID),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bid(s01_data_fifo_to_s01_couplers_BID[0]),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rid(s01_data_fifo_to_s01_couplers_RID[0]),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_data_fifo_ARCACHE),
        .s_axi_arid(s01_couplers_to_s01_data_fifo_ARID),
        .s_axi_arlen(s01_couplers_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_data_fifo_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_data_fifo_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_data_fifo_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_data_fifo_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_data_fifo_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_data_fifo_AWCACHE),
        .s_axi_awid(s01_couplers_to_s01_data_fifo_AWID),
        .s_axi_awlen(s01_couplers_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_data_fifo_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_data_fifo_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_data_fifo_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_data_fifo_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_data_fifo_AWVALID),
        .s_axi_bid(s01_couplers_to_s01_data_fifo_BID),
        .s_axi_bready(s01_couplers_to_s01_data_fifo_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_data_fifo_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_data_fifo_RDATA),
        .s_axi_rid(s01_couplers_to_s01_data_fifo_RID),
        .s_axi_rlast(s01_couplers_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_couplers_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_data_fifo_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_data_fifo_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_data_fifo_WLAST),
        .s_axi_wready(s01_couplers_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_data_fifo_WVALID));
endmodule

module s01_couplers_imp_VOMHM4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_s01_couplers_ARADDR;
  wire [2:0]auto_cc_to_s01_couplers_ARPROT;
  wire auto_cc_to_s01_couplers_ARREADY;
  wire auto_cc_to_s01_couplers_ARVALID;
  wire [31:0]auto_cc_to_s01_couplers_AWADDR;
  wire [2:0]auto_cc_to_s01_couplers_AWPROT;
  wire auto_cc_to_s01_couplers_AWREADY;
  wire auto_cc_to_s01_couplers_AWVALID;
  wire auto_cc_to_s01_couplers_BREADY;
  wire [1:0]auto_cc_to_s01_couplers_BRESP;
  wire auto_cc_to_s01_couplers_BVALID;
  wire [31:0]auto_cc_to_s01_couplers_RDATA;
  wire auto_cc_to_s01_couplers_RREADY;
  wire [1:0]auto_cc_to_s01_couplers_RRESP;
  wire auto_cc_to_s01_couplers_RVALID;
  wire [31:0]auto_cc_to_s01_couplers_WDATA;
  wire auto_cc_to_s01_couplers_WREADY;
  wire [3:0]auto_cc_to_s01_couplers_WSTRB;
  wire auto_cc_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_cc_ARADDR;
  wire [2:0]s01_couplers_to_auto_cc_ARPROT;
  wire s01_couplers_to_auto_cc_ARREADY;
  wire s01_couplers_to_auto_cc_ARVALID;
  wire [31:0]s01_couplers_to_auto_cc_AWADDR;
  wire [2:0]s01_couplers_to_auto_cc_AWPROT;
  wire s01_couplers_to_auto_cc_AWREADY;
  wire s01_couplers_to_auto_cc_AWVALID;
  wire s01_couplers_to_auto_cc_BREADY;
  wire [1:0]s01_couplers_to_auto_cc_BRESP;
  wire s01_couplers_to_auto_cc_BVALID;
  wire [31:0]s01_couplers_to_auto_cc_RDATA;
  wire s01_couplers_to_auto_cc_RREADY;
  wire [1:0]s01_couplers_to_auto_cc_RRESP;
  wire s01_couplers_to_auto_cc_RVALID;
  wire [31:0]s01_couplers_to_auto_cc_WDATA;
  wire s01_couplers_to_auto_cc_WREADY;
  wire [3:0]s01_couplers_to_auto_cc_WSTRB;
  wire s01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  shell_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_cc_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(s01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(s01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(s01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_cc_AWADDR),
        .s_axi_awprot(s01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(s01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(s01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(s01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(s01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_cc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "shell,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=shell,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=64,numReposBlks=44,numNonXlnxBlks=0,numHierBlks=20,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "shell.hwdef" *) 
module shell
   (ARESETN,
    CLK_DATA,
    M_AXIS_tdata,
    M_AXIS_tkeep,
    M_AXIS_tlast,
    M_AXIS_tready,
    M_AXIS_tvalid,
    M_AXI_CONTROL_araddr,
    M_AXI_CONTROL_arprot,
    M_AXI_CONTROL_arqos,
    M_AXI_CONTROL_arready,
    M_AXI_CONTROL_arregion,
    M_AXI_CONTROL_arvalid,
    M_AXI_CONTROL_awaddr,
    M_AXI_CONTROL_awprot,
    M_AXI_CONTROL_awqos,
    M_AXI_CONTROL_awready,
    M_AXI_CONTROL_awregion,
    M_AXI_CONTROL_awvalid,
    M_AXI_CONTROL_bready,
    M_AXI_CONTROL_bresp,
    M_AXI_CONTROL_bvalid,
    M_AXI_CONTROL_rdata,
    M_AXI_CONTROL_rready,
    M_AXI_CONTROL_rresp,
    M_AXI_CONTROL_rvalid,
    M_AXI_CONTROL_wdata,
    M_AXI_CONTROL_wready,
    M_AXI_CONTROL_wstrb,
    M_AXI_CONTROL_wvalid,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_MEM_araddr,
    S_AXI_MEM_arburst,
    S_AXI_MEM_arcache,
    S_AXI_MEM_arid,
    S_AXI_MEM_arlen,
    S_AXI_MEM_arlock,
    S_AXI_MEM_arprot,
    S_AXI_MEM_arqos,
    S_AXI_MEM_arready,
    S_AXI_MEM_arregion,
    S_AXI_MEM_arsize,
    S_AXI_MEM_arvalid,
    S_AXI_MEM_awaddr,
    S_AXI_MEM_awburst,
    S_AXI_MEM_awcache,
    S_AXI_MEM_awid,
    S_AXI_MEM_awlen,
    S_AXI_MEM_awlock,
    S_AXI_MEM_awprot,
    S_AXI_MEM_awqos,
    S_AXI_MEM_awready,
    S_AXI_MEM_awregion,
    S_AXI_MEM_awsize,
    S_AXI_MEM_awvalid,
    S_AXI_MEM_bid,
    S_AXI_MEM_bready,
    S_AXI_MEM_bresp,
    S_AXI_MEM_bvalid,
    S_AXI_MEM_rdata,
    S_AXI_MEM_rid,
    S_AXI_MEM_rlast,
    S_AXI_MEM_rready,
    S_AXI_MEM_rresp,
    S_AXI_MEM_rvalid,
    S_AXI_MEM_wdata,
    S_AXI_MEM_wid,
    S_AXI_MEM_wlast,
    S_AXI_MEM_wready,
    S_AXI_MEM_wstrb,
    S_AXI_MEM_wvalid,
    c0_ddr4_act_n_0,
    c0_ddr4_adr_0,
    c0_ddr4_ba_0,
    c0_ddr4_bg_0,
    c0_ddr4_ck_c_0,
    c0_ddr4_ck_t_0,
    c0_ddr4_cke_0,
    c0_ddr4_cs_n_0,
    c0_ddr4_dg_0,
    c0_ddr4_dm_dbi_n_0,
    c0_ddr4_dqs_c_0,
    c0_ddr4_dqs_t_0,
    c0_ddr4_odt_0,
    c0_ddr4_reset_n_0,
    c0_sys_clk_n_0,
    c0_sys_clk_p_0,
    diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    pcie_7x_mgt_rtl_rxn,
    pcie_7x_mgt_rtl_rxp,
    pcie_7x_mgt_rtl_txn,
    pcie_7x_mgt_rtl_txp,
    perst_n,
    refclk200,
    refclk_n,
    refclk_p,
    rxn,
    rxp,
    sfp_tx_disable,
    txn,
    txp);
  output [0:0]ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_DATA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_DATA, ASSOCIATED_BUSIF M_AXIS:S_AXIS:S_AXI_MEM:M_AXI_CONTROL, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, PHASE 0.000" *) output CLK_DATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [7:0]M_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_CONTROL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, DATA_WIDTH 32, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_CONTROL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARPROT" *) output [2:0]M_AXI_CONTROL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARQOS" *) output [3:0]M_AXI_CONTROL_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARREADY" *) input M_AXI_CONTROL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARREGION" *) output [3:0]M_AXI_CONTROL_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL ARVALID" *) output M_AXI_CONTROL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWADDR" *) output [31:0]M_AXI_CONTROL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWPROT" *) output [2:0]M_AXI_CONTROL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWQOS" *) output [3:0]M_AXI_CONTROL_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWREADY" *) input M_AXI_CONTROL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWREGION" *) output [3:0]M_AXI_CONTROL_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL AWVALID" *) output M_AXI_CONTROL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL BREADY" *) output M_AXI_CONTROL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL BRESP" *) input [1:0]M_AXI_CONTROL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL BVALID" *) input M_AXI_CONTROL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RDATA" *) input [31:0]M_AXI_CONTROL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RREADY" *) output M_AXI_CONTROL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RRESP" *) input [1:0]M_AXI_CONTROL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL RVALID" *) input M_AXI_CONTROL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WDATA" *) output [31:0]M_AXI_CONTROL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WREADY" *) input M_AXI_CONTROL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WSTRB" *) output [3:0]M_AXI_CONTROL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_CONTROL WVALID" *) output M_AXI_CONTROL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [7:0]S_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MEM, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, DATA_WIDTH 512, FREQ_HZ 156250000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_MEM_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARBURST" *) input [1:0]S_AXI_MEM_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARCACHE" *) input [3:0]S_AXI_MEM_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARID" *) input [0:0]S_AXI_MEM_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLEN" *) input [7:0]S_AXI_MEM_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARLOCK" *) input [0:0]S_AXI_MEM_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARPROT" *) input [2:0]S_AXI_MEM_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARQOS" *) input [3:0]S_AXI_MEM_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREADY" *) output S_AXI_MEM_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARREGION" *) input [3:0]S_AXI_MEM_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARSIZE" *) input [2:0]S_AXI_MEM_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM ARVALID" *) input S_AXI_MEM_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWADDR" *) input [31:0]S_AXI_MEM_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWBURST" *) input [1:0]S_AXI_MEM_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWCACHE" *) input [3:0]S_AXI_MEM_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWID" *) input [0:0]S_AXI_MEM_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLEN" *) input [7:0]S_AXI_MEM_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWLOCK" *) input [0:0]S_AXI_MEM_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWPROT" *) input [2:0]S_AXI_MEM_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWQOS" *) input [3:0]S_AXI_MEM_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREADY" *) output S_AXI_MEM_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWREGION" *) input [3:0]S_AXI_MEM_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWSIZE" *) input [2:0]S_AXI_MEM_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM AWVALID" *) input S_AXI_MEM_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BID" *) output [0:0]S_AXI_MEM_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BREADY" *) input S_AXI_MEM_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BRESP" *) output [1:0]S_AXI_MEM_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM BVALID" *) output S_AXI_MEM_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RDATA" *) output [511:0]S_AXI_MEM_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RID" *) output [0:0]S_AXI_MEM_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RLAST" *) output S_AXI_MEM_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RREADY" *) input S_AXI_MEM_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RRESP" *) output [1:0]S_AXI_MEM_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM RVALID" *) output S_AXI_MEM_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WDATA" *) input [511:0]S_AXI_MEM_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WID" *) input [0:0]S_AXI_MEM_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WLAST" *) input S_AXI_MEM_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WREADY" *) output S_AXI_MEM_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WSTRB" *) input [63:0]S_AXI_MEM_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MEM WVALID" *) input S_AXI_MEM_wvalid;
  output c0_ddr4_act_n_0;
  output [16:0]c0_ddr4_adr_0;
  output [1:0]c0_ddr4_ba_0;
  output [1:0]c0_ddr4_bg_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_DDR4_CK_C_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_DDR4_CK_C_0, FREQ_HZ 100000000, PHASE 0.000" *) output [0:0]c0_ddr4_ck_c_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_DDR4_CK_T_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_DDR4_CK_T_0, FREQ_HZ 100000000, PHASE 0.000" *) output [0:0]c0_ddr4_ck_t_0;
  output [0:0]c0_ddr4_cke_0;
  output [0:0]c0_ddr4_cs_n_0;
  inout [63:0]c0_ddr4_dg_0;
  inout [7:0]c0_ddr4_dm_dbi_n_0;
  inout [7:0]c0_ddr4_dqs_c_0;
  inout [7:0]c0_ddr4_dqs_t_0;
  output [0:0]c0_ddr4_odt_0;
  output c0_ddr4_reset_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_SYS_CLK_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_SYS_CLK_N_0, CLK_DOMAIN shell_c0_sys_clk_n_0, FREQ_HZ 100000000, PHASE 0.000" *) input c0_sys_clk_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_SYS_CLK_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_SYS_CLK_P_0, CLK_DOMAIN shell_c0_sys_clk_p_0, FREQ_HZ 100000000, PHASE 0.000" *) input c0_sys_clk_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 diff_clock_rtl CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME diff_clock_rtl, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]diff_clock_rtl_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 diff_clock_rtl CLK_P" *) input [0:0]diff_clock_rtl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl rxn" *) input [7:0]pcie_7x_mgt_rtl_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl rxp" *) input [7:0]pcie_7x_mgt_rtl_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl txn" *) output [7:0]pcie_7x_mgt_rtl_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt_rtl txp" *) output [7:0]pcie_7x_mgt_rtl_txp;
  input perst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.REFCLK200 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.REFCLK200, CLK_DOMAIN shell_refclk200, FREQ_HZ 200000000, PHASE 0.000" *) input refclk200;
  input refclk_n;
  input refclk_p;
  input rxn;
  input rxp;
  output [1:0]sfp_tx_disable;
  output txn;
  output txp;

  wire [63:0]Net;
  wire [7:0]Net1;
  wire [7:0]Net2;
  wire [7:0]Net3;
  wire [63:0]PCIe_M_AXI_ARADDR;
  wire [1:0]PCIe_M_AXI_ARBURST;
  wire [3:0]PCIe_M_AXI_ARCACHE;
  wire [3:0]PCIe_M_AXI_ARID;
  wire [7:0]PCIe_M_AXI_ARLEN;
  wire [0:0]PCIe_M_AXI_ARLOCK;
  wire [2:0]PCIe_M_AXI_ARPROT;
  wire PCIe_M_AXI_ARREADY;
  wire [2:0]PCIe_M_AXI_ARSIZE;
  wire PCIe_M_AXI_ARVALID;
  wire [63:0]PCIe_M_AXI_AWADDR;
  wire [1:0]PCIe_M_AXI_AWBURST;
  wire [3:0]PCIe_M_AXI_AWCACHE;
  wire [3:0]PCIe_M_AXI_AWID;
  wire [7:0]PCIe_M_AXI_AWLEN;
  wire [0:0]PCIe_M_AXI_AWLOCK;
  wire [2:0]PCIe_M_AXI_AWPROT;
  wire PCIe_M_AXI_AWREADY;
  wire [2:0]PCIe_M_AXI_AWSIZE;
  wire PCIe_M_AXI_AWVALID;
  wire [3:0]PCIe_M_AXI_BID;
  wire PCIe_M_AXI_BREADY;
  wire [1:0]PCIe_M_AXI_BRESP;
  wire PCIe_M_AXI_BVALID;
  wire [255:0]PCIe_M_AXI_RDATA;
  wire [3:0]PCIe_M_AXI_RID;
  wire PCIe_M_AXI_RLAST;
  wire PCIe_M_AXI_RREADY;
  wire [1:0]PCIe_M_AXI_RRESP;
  wire PCIe_M_AXI_RVALID;
  wire [255:0]PCIe_M_AXI_WDATA;
  wire PCIe_M_AXI_WLAST;
  wire PCIe_M_AXI_WREADY;
  wire [31:0]PCIe_M_AXI_WSTRB;
  wire PCIe_M_AXI_WVALID;
  wire PCIe_axi_aclk;
  wire PCIe_axi_aresetn;
  wire [7:0]PCIe_pcie_mgt_rxn;
  wire [7:0]PCIe_pcie_mgt_rxp;
  wire [7:0]PCIe_pcie_mgt_txn;
  wire [7:0]PCIe_pcie_mgt_txp;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [0:0]S00_AXI_1_AWREADY;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [2:0]S01_AXI_1_AWPROT;
  wire S01_AXI_1_AWREADY;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [63:0]S_AXIS_1_TDATA;
  wire [7:0]S_AXIS_1_TKEEP;
  wire S_AXIS_1_TLAST;
  wire S_AXIS_1_TREADY;
  wire S_AXIS_1_TVALID;
  wire [31:0]S_AXI_MEM_1_ARADDR;
  wire [1:0]S_AXI_MEM_1_ARBURST;
  wire [3:0]S_AXI_MEM_1_ARCACHE;
  wire [0:0]S_AXI_MEM_1_ARID;
  wire [7:0]S_AXI_MEM_1_ARLEN;
  wire [0:0]S_AXI_MEM_1_ARLOCK;
  wire [2:0]S_AXI_MEM_1_ARPROT;
  wire [3:0]S_AXI_MEM_1_ARQOS;
  wire S_AXI_MEM_1_ARREADY;
  wire [3:0]S_AXI_MEM_1_ARREGION;
  wire [2:0]S_AXI_MEM_1_ARSIZE;
  wire S_AXI_MEM_1_ARVALID;
  wire [31:0]S_AXI_MEM_1_AWADDR;
  wire [1:0]S_AXI_MEM_1_AWBURST;
  wire [3:0]S_AXI_MEM_1_AWCACHE;
  wire [0:0]S_AXI_MEM_1_AWID;
  wire [7:0]S_AXI_MEM_1_AWLEN;
  wire [0:0]S_AXI_MEM_1_AWLOCK;
  wire [2:0]S_AXI_MEM_1_AWPROT;
  wire [3:0]S_AXI_MEM_1_AWQOS;
  wire S_AXI_MEM_1_AWREADY;
  wire [3:0]S_AXI_MEM_1_AWREGION;
  wire [2:0]S_AXI_MEM_1_AWSIZE;
  wire S_AXI_MEM_1_AWVALID;
  wire [0:0]S_AXI_MEM_1_BID;
  wire S_AXI_MEM_1_BREADY;
  wire [1:0]S_AXI_MEM_1_BRESP;
  wire S_AXI_MEM_1_BVALID;
  wire [511:0]S_AXI_MEM_1_RDATA;
  wire [0:0]S_AXI_MEM_1_RID;
  wire S_AXI_MEM_1_RLAST;
  wire S_AXI_MEM_1_RREADY;
  wire [1:0]S_AXI_MEM_1_RRESP;
  wire S_AXI_MEM_1_RVALID;
  wire [511:0]S_AXI_MEM_1_WDATA;
  wire [0:0]S_AXI_MEM_1_WID;
  wire S_AXI_MEM_1_WLAST;
  wire S_AXI_MEM_1_WREADY;
  wire [63:0]S_AXI_MEM_1_WSTRB;
  wire S_AXI_MEM_1_WVALID;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M01_AXI_ARPROT;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M01_AXI_AWPROT;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [8:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [8:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [0:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire axi_interconnect_0_M03_AXI_ARVALID;
  wire [0:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire axi_interconnect_0_M03_AXI_AWREADY;
  wire axi_interconnect_0_M03_AXI_AWVALID;
  wire axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire axi_interconnect_0_M03_AXI_WREADY;
  wire axi_interconnect_0_M03_AXI_WVALID;
  wire c0_sys_clk_n_0_1;
  wire c0_sys_clk_p_0_1;
  wire [0:0]diff_clock_rtl_1_CLK_N;
  wire [0:0]diff_clock_rtl_1_CLK_P;
  wire [1:0]gnd_dout;
  wire mem_interface_c0_ddr4_act_n;
  wire [16:0]mem_interface_c0_ddr4_adr;
  wire [1:0]mem_interface_c0_ddr4_ba;
  wire [1:0]mem_interface_c0_ddr4_bg;
  wire [0:0]mem_interface_c0_ddr4_ck_c;
  wire [0:0]mem_interface_c0_ddr4_ck_t;
  wire [0:0]mem_interface_c0_ddr4_cke;
  wire [0:0]mem_interface_c0_ddr4_cs_n;
  wire [0:0]mem_interface_c0_ddr4_odt;
  wire mem_interface_c0_ddr4_reset_n;
  wire microblaze_0_Clk;
  wire [63:0]network_M_AXIS_TDATA;
  wire [7:0]network_M_AXIS_TKEEP;
  wire [0:0]network_M_AXIS_TLAST;
  wire network_M_AXIS_TREADY;
  wire network_M_AXIS_TVALID;
  wire network_clk_156;
  wire network_network_reset_done;
  wire network_txn;
  wire network_txp;
  wire perst_n_1;
  wire [31:0]pr_decoupler_0_rp_control_ARADDR;
  wire [2:0]pr_decoupler_0_rp_control_ARPROT;
  wire [3:0]pr_decoupler_0_rp_control_ARQOS;
  wire pr_decoupler_0_rp_control_ARREADY;
  wire [3:0]pr_decoupler_0_rp_control_ARREGION;
  wire pr_decoupler_0_rp_control_ARVALID;
  wire [31:0]pr_decoupler_0_rp_control_AWADDR;
  wire [2:0]pr_decoupler_0_rp_control_AWPROT;
  wire [3:0]pr_decoupler_0_rp_control_AWQOS;
  wire pr_decoupler_0_rp_control_AWREADY;
  wire [3:0]pr_decoupler_0_rp_control_AWREGION;
  wire pr_decoupler_0_rp_control_AWVALID;
  wire pr_decoupler_0_rp_control_BREADY;
  wire [1:0]pr_decoupler_0_rp_control_BRESP;
  wire pr_decoupler_0_rp_control_BVALID;
  wire [31:0]pr_decoupler_0_rp_control_RDATA;
  wire pr_decoupler_0_rp_control_RREADY;
  wire [1:0]pr_decoupler_0_rp_control_RRESP;
  wire pr_decoupler_0_rp_control_RVALID;
  wire [31:0]pr_decoupler_0_rp_control_WDATA;
  wire pr_decoupler_0_rp_control_WREADY;
  wire [3:0]pr_decoupler_0_rp_control_WSTRB;
  wire pr_decoupler_0_rp_control_WVALID;
  wire [63:0]pr_decoupler_0_rp_stream_out_TDATA;
  wire [7:0]pr_decoupler_0_rp_stream_out_TKEEP;
  wire pr_decoupler_0_rp_stream_out_TLAST;
  wire pr_decoupler_0_rp_stream_out_TREADY;
  wire pr_decoupler_0_rp_stream_out_TVALID;
  wire [31:0]pr_decoupler_0_s_pr_axi_mem_ARADDR;
  wire [1:0]pr_decoupler_0_s_pr_axi_mem_ARBURST;
  wire [3:0]pr_decoupler_0_s_pr_axi_mem_ARCACHE;
  wire [0:0]pr_decoupler_0_s_pr_axi_mem_ARID;
  wire [7:0]pr_decoupler_0_s_pr_axi_mem_ARLEN;
  wire [0:0]pr_decoupler_0_s_pr_axi_mem_ARLOCK;
  wire [2:0]pr_decoupler_0_s_pr_axi_mem_ARPROT;
  wire [3:0]pr_decoupler_0_s_pr_axi_mem_ARQOS;
  wire pr_decoupler_0_s_pr_axi_mem_ARREADY;
  wire [3:0]pr_decoupler_0_s_pr_axi_mem_ARREGION;
  wire [2:0]pr_decoupler_0_s_pr_axi_mem_ARSIZE;
  wire pr_decoupler_0_s_pr_axi_mem_ARVALID;
  wire [31:0]pr_decoupler_0_s_pr_axi_mem_AWADDR;
  wire [1:0]pr_decoupler_0_s_pr_axi_mem_AWBURST;
  wire [3:0]pr_decoupler_0_s_pr_axi_mem_AWCACHE;
  wire [0:0]pr_decoupler_0_s_pr_axi_mem_AWID;
  wire [7:0]pr_decoupler_0_s_pr_axi_mem_AWLEN;
  wire [0:0]pr_decoupler_0_s_pr_axi_mem_AWLOCK;
  wire [2:0]pr_decoupler_0_s_pr_axi_mem_AWPROT;
  wire [3:0]pr_decoupler_0_s_pr_axi_mem_AWQOS;
  wire pr_decoupler_0_s_pr_axi_mem_AWREADY;
  wire [3:0]pr_decoupler_0_s_pr_axi_mem_AWREGION;
  wire [2:0]pr_decoupler_0_s_pr_axi_mem_AWSIZE;
  wire pr_decoupler_0_s_pr_axi_mem_AWVALID;
  wire [0:0]pr_decoupler_0_s_pr_axi_mem_BID;
  wire pr_decoupler_0_s_pr_axi_mem_BREADY;
  wire [1:0]pr_decoupler_0_s_pr_axi_mem_BRESP;
  wire pr_decoupler_0_s_pr_axi_mem_BVALID;
  wire [511:0]pr_decoupler_0_s_pr_axi_mem_RDATA;
  wire [0:0]pr_decoupler_0_s_pr_axi_mem_RID;
  wire pr_decoupler_0_s_pr_axi_mem_RLAST;
  wire pr_decoupler_0_s_pr_axi_mem_RREADY;
  wire [1:0]pr_decoupler_0_s_pr_axi_mem_RRESP;
  wire pr_decoupler_0_s_pr_axi_mem_RVALID;
  wire [511:0]pr_decoupler_0_s_pr_axi_mem_WDATA;
  wire pr_decoupler_0_s_pr_axi_mem_WLAST;
  wire pr_decoupler_0_s_pr_axi_mem_WREADY;
  wire [63:0]pr_decoupler_0_s_pr_axi_mem_WSTRB;
  wire pr_decoupler_0_s_pr_axi_mem_WVALID;
  wire [63:0]pr_decoupler_0_s_stream_in_TDATA;
  wire [7:0]pr_decoupler_0_s_stream_in_TKEEP;
  wire pr_decoupler_0_s_stream_in_TLAST;
  wire pr_decoupler_0_s_stream_in_TREADY;
  wire pr_decoupler_0_s_stream_in_TVALID;
  wire refclk200_1;
  wire refclk_n_1;
  wire refclk_p_1;
  wire [63:0]reverseEndian64_0_stream_out_TDATA;
  wire [7:0]reverseEndian64_0_stream_out_TKEEP;
  wire [0:0]reverseEndian64_0_stream_out_TLAST;
  wire reverseEndian64_0_stream_out_TREADY;
  wire reverseEndian64_0_stream_out_TVALID;
  wire [63:0]reverseEndian64_1_stream_out_TDATA;
  wire [7:0]reverseEndian64_1_stream_out_TKEEP;
  wire [0:0]reverseEndian64_1_stream_out_TLAST;
  wire reverseEndian64_1_stream_out_TREADY;
  wire reverseEndian64_1_stream_out_TVALID;
  wire rxn_1;
  wire rxp_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign ARESETN[0] = util_vector_logic_2_Res;
  assign CLK_DATA = network_clk_156;
  assign M_AXIS_tdata[63:0] = pr_decoupler_0_rp_stream_out_TDATA;
  assign M_AXIS_tkeep[7:0] = pr_decoupler_0_rp_stream_out_TKEEP;
  assign M_AXIS_tlast = pr_decoupler_0_rp_stream_out_TLAST;
  assign M_AXIS_tvalid = pr_decoupler_0_rp_stream_out_TVALID;
  assign M_AXI_CONTROL_araddr[31:0] = pr_decoupler_0_rp_control_ARADDR;
  assign M_AXI_CONTROL_arprot[2:0] = pr_decoupler_0_rp_control_ARPROT;
  assign M_AXI_CONTROL_arqos[3:0] = pr_decoupler_0_rp_control_ARQOS;
  assign M_AXI_CONTROL_arregion[3:0] = pr_decoupler_0_rp_control_ARREGION;
  assign M_AXI_CONTROL_arvalid = pr_decoupler_0_rp_control_ARVALID;
  assign M_AXI_CONTROL_awaddr[31:0] = pr_decoupler_0_rp_control_AWADDR;
  assign M_AXI_CONTROL_awprot[2:0] = pr_decoupler_0_rp_control_AWPROT;
  assign M_AXI_CONTROL_awqos[3:0] = pr_decoupler_0_rp_control_AWQOS;
  assign M_AXI_CONTROL_awregion[3:0] = pr_decoupler_0_rp_control_AWREGION;
  assign M_AXI_CONTROL_awvalid = pr_decoupler_0_rp_control_AWVALID;
  assign M_AXI_CONTROL_bready = pr_decoupler_0_rp_control_BREADY;
  assign M_AXI_CONTROL_rready = pr_decoupler_0_rp_control_RREADY;
  assign M_AXI_CONTROL_wdata[31:0] = pr_decoupler_0_rp_control_WDATA;
  assign M_AXI_CONTROL_wstrb[3:0] = pr_decoupler_0_rp_control_WSTRB;
  assign M_AXI_CONTROL_wvalid = pr_decoupler_0_rp_control_WVALID;
  assign PCIe_pcie_mgt_rxn = pcie_7x_mgt_rtl_rxn[7:0];
  assign PCIe_pcie_mgt_rxp = pcie_7x_mgt_rtl_rxp[7:0];
  assign S_AXIS_1_TDATA = S_AXIS_tdata[63:0];
  assign S_AXIS_1_TKEEP = S_AXIS_tkeep[7:0];
  assign S_AXIS_1_TLAST = S_AXIS_tlast;
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXIS_tready = S_AXIS_1_TREADY;
  assign S_AXI_MEM_1_ARADDR = S_AXI_MEM_araddr[31:0];
  assign S_AXI_MEM_1_ARBURST = S_AXI_MEM_arburst[1:0];
  assign S_AXI_MEM_1_ARCACHE = S_AXI_MEM_arcache[3:0];
  assign S_AXI_MEM_1_ARID = S_AXI_MEM_arid[0];
  assign S_AXI_MEM_1_ARLEN = S_AXI_MEM_arlen[7:0];
  assign S_AXI_MEM_1_ARLOCK = S_AXI_MEM_arlock[0];
  assign S_AXI_MEM_1_ARPROT = S_AXI_MEM_arprot[2:0];
  assign S_AXI_MEM_1_ARQOS = S_AXI_MEM_arqos[3:0];
  assign S_AXI_MEM_1_ARREGION = S_AXI_MEM_arregion[3:0];
  assign S_AXI_MEM_1_ARSIZE = S_AXI_MEM_arsize[2:0];
  assign S_AXI_MEM_1_ARVALID = S_AXI_MEM_arvalid;
  assign S_AXI_MEM_1_AWADDR = S_AXI_MEM_awaddr[31:0];
  assign S_AXI_MEM_1_AWBURST = S_AXI_MEM_awburst[1:0];
  assign S_AXI_MEM_1_AWCACHE = S_AXI_MEM_awcache[3:0];
  assign S_AXI_MEM_1_AWID = S_AXI_MEM_awid[0];
  assign S_AXI_MEM_1_AWLEN = S_AXI_MEM_awlen[7:0];
  assign S_AXI_MEM_1_AWLOCK = S_AXI_MEM_awlock[0];
  assign S_AXI_MEM_1_AWPROT = S_AXI_MEM_awprot[2:0];
  assign S_AXI_MEM_1_AWQOS = S_AXI_MEM_awqos[3:0];
  assign S_AXI_MEM_1_AWREGION = S_AXI_MEM_awregion[3:0];
  assign S_AXI_MEM_1_AWSIZE = S_AXI_MEM_awsize[2:0];
  assign S_AXI_MEM_1_AWVALID = S_AXI_MEM_awvalid;
  assign S_AXI_MEM_1_BREADY = S_AXI_MEM_bready;
  assign S_AXI_MEM_1_RREADY = S_AXI_MEM_rready;
  assign S_AXI_MEM_1_WDATA = S_AXI_MEM_wdata[511:0];
  assign S_AXI_MEM_1_WID = S_AXI_MEM_wid[0];
  assign S_AXI_MEM_1_WLAST = S_AXI_MEM_wlast;
  assign S_AXI_MEM_1_WSTRB = S_AXI_MEM_wstrb[63:0];
  assign S_AXI_MEM_1_WVALID = S_AXI_MEM_wvalid;
  assign S_AXI_MEM_arready = S_AXI_MEM_1_ARREADY;
  assign S_AXI_MEM_awready = S_AXI_MEM_1_AWREADY;
  assign S_AXI_MEM_bid[0] = S_AXI_MEM_1_BID;
  assign S_AXI_MEM_bresp[1:0] = S_AXI_MEM_1_BRESP;
  assign S_AXI_MEM_bvalid = S_AXI_MEM_1_BVALID;
  assign S_AXI_MEM_rdata[511:0] = S_AXI_MEM_1_RDATA;
  assign S_AXI_MEM_rid[0] = S_AXI_MEM_1_RID;
  assign S_AXI_MEM_rlast = S_AXI_MEM_1_RLAST;
  assign S_AXI_MEM_rresp[1:0] = S_AXI_MEM_1_RRESP;
  assign S_AXI_MEM_rvalid = S_AXI_MEM_1_RVALID;
  assign S_AXI_MEM_wready = S_AXI_MEM_1_WREADY;
  assign c0_ddr4_act_n_0 = mem_interface_c0_ddr4_act_n;
  assign c0_ddr4_adr_0[16:0] = mem_interface_c0_ddr4_adr;
  assign c0_ddr4_ba_0[1:0] = mem_interface_c0_ddr4_ba;
  assign c0_ddr4_bg_0[1:0] = mem_interface_c0_ddr4_bg;
  assign c0_ddr4_ck_c_0[0] = mem_interface_c0_ddr4_ck_c;
  assign c0_ddr4_ck_t_0[0] = mem_interface_c0_ddr4_ck_t;
  assign c0_ddr4_cke_0[0] = mem_interface_c0_ddr4_cke;
  assign c0_ddr4_cs_n_0[0] = mem_interface_c0_ddr4_cs_n;
  assign c0_ddr4_odt_0[0] = mem_interface_c0_ddr4_odt;
  assign c0_ddr4_reset_n_0 = mem_interface_c0_ddr4_reset_n;
  assign c0_sys_clk_n_0_1 = c0_sys_clk_n_0;
  assign c0_sys_clk_p_0_1 = c0_sys_clk_p_0;
  assign diff_clock_rtl_1_CLK_N = diff_clock_rtl_clk_n[0];
  assign diff_clock_rtl_1_CLK_P = diff_clock_rtl_clk_p[0];
  assign pcie_7x_mgt_rtl_txn[7:0] = PCIe_pcie_mgt_txn;
  assign pcie_7x_mgt_rtl_txp[7:0] = PCIe_pcie_mgt_txp;
  assign perst_n_1 = perst_n;
  assign pr_decoupler_0_rp_control_ARREADY = M_AXI_CONTROL_arready;
  assign pr_decoupler_0_rp_control_AWREADY = M_AXI_CONTROL_awready;
  assign pr_decoupler_0_rp_control_BRESP = M_AXI_CONTROL_bresp[1:0];
  assign pr_decoupler_0_rp_control_BVALID = M_AXI_CONTROL_bvalid;
  assign pr_decoupler_0_rp_control_RDATA = M_AXI_CONTROL_rdata[31:0];
  assign pr_decoupler_0_rp_control_RRESP = M_AXI_CONTROL_rresp[1:0];
  assign pr_decoupler_0_rp_control_RVALID = M_AXI_CONTROL_rvalid;
  assign pr_decoupler_0_rp_control_WREADY = M_AXI_CONTROL_wready;
  assign pr_decoupler_0_rp_stream_out_TREADY = M_AXIS_tready;
  assign refclk200_1 = refclk200;
  assign refclk_n_1 = refclk_n;
  assign refclk_p_1 = refclk_p;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign sfp_tx_disable[1:0] = gnd_dout;
  assign txn = network_txn;
  assign txp = network_txp;
  PCIe_imp_107RYSW PCIe
       (.CLK_IN_D_clk_n(diff_clock_rtl_1_CLK_N),
        .CLK_IN_D_clk_p(diff_clock_rtl_1_CLK_P),
        .M_AXI_LITE_araddr(S01_AXI_1_ARADDR),
        .M_AXI_LITE_arprot(S01_AXI_1_ARPROT),
        .M_AXI_LITE_arready(S01_AXI_1_ARREADY),
        .M_AXI_LITE_arvalid(S01_AXI_1_ARVALID),
        .M_AXI_LITE_awaddr(S01_AXI_1_AWADDR),
        .M_AXI_LITE_awprot(S01_AXI_1_AWPROT),
        .M_AXI_LITE_awready(S01_AXI_1_AWREADY),
        .M_AXI_LITE_awvalid(S01_AXI_1_AWVALID),
        .M_AXI_LITE_bready(S01_AXI_1_BREADY),
        .M_AXI_LITE_bresp(S01_AXI_1_BRESP),
        .M_AXI_LITE_bvalid(S01_AXI_1_BVALID),
        .M_AXI_LITE_rdata(S01_AXI_1_RDATA),
        .M_AXI_LITE_rready(S01_AXI_1_RREADY),
        .M_AXI_LITE_rresp(S01_AXI_1_RRESP),
        .M_AXI_LITE_rvalid(S01_AXI_1_RVALID),
        .M_AXI_LITE_wdata(S01_AXI_1_WDATA),
        .M_AXI_LITE_wready(S01_AXI_1_WREADY),
        .M_AXI_LITE_wstrb(S01_AXI_1_WSTRB),
        .M_AXI_LITE_wvalid(S01_AXI_1_WVALID),
        .M_AXI_araddr(PCIe_M_AXI_ARADDR),
        .M_AXI_arburst(PCIe_M_AXI_ARBURST),
        .M_AXI_arcache(PCIe_M_AXI_ARCACHE),
        .M_AXI_arid(PCIe_M_AXI_ARID),
        .M_AXI_arlen(PCIe_M_AXI_ARLEN),
        .M_AXI_arlock(PCIe_M_AXI_ARLOCK),
        .M_AXI_arprot(PCIe_M_AXI_ARPROT),
        .M_AXI_arready(PCIe_M_AXI_ARREADY),
        .M_AXI_arsize(PCIe_M_AXI_ARSIZE),
        .M_AXI_arvalid(PCIe_M_AXI_ARVALID),
        .M_AXI_awaddr(PCIe_M_AXI_AWADDR),
        .M_AXI_awburst(PCIe_M_AXI_AWBURST),
        .M_AXI_awcache(PCIe_M_AXI_AWCACHE),
        .M_AXI_awid(PCIe_M_AXI_AWID),
        .M_AXI_awlen(PCIe_M_AXI_AWLEN),
        .M_AXI_awlock(PCIe_M_AXI_AWLOCK),
        .M_AXI_awprot(PCIe_M_AXI_AWPROT),
        .M_AXI_awready(PCIe_M_AXI_AWREADY),
        .M_AXI_awsize(PCIe_M_AXI_AWSIZE),
        .M_AXI_awvalid(PCIe_M_AXI_AWVALID),
        .M_AXI_bid(PCIe_M_AXI_BID),
        .M_AXI_bready(PCIe_M_AXI_BREADY),
        .M_AXI_bresp(PCIe_M_AXI_BRESP),
        .M_AXI_bvalid(PCIe_M_AXI_BVALID),
        .M_AXI_rdata(PCIe_M_AXI_RDATA),
        .M_AXI_rid(PCIe_M_AXI_RID),
        .M_AXI_rlast(PCIe_M_AXI_RLAST),
        .M_AXI_rready(PCIe_M_AXI_RREADY),
        .M_AXI_rresp(PCIe_M_AXI_RRESP),
        .M_AXI_rvalid(PCIe_M_AXI_RVALID),
        .M_AXI_wdata(PCIe_M_AXI_WDATA),
        .M_AXI_wlast(PCIe_M_AXI_WLAST),
        .M_AXI_wready(PCIe_M_AXI_WREADY),
        .M_AXI_wstrb(PCIe_M_AXI_WSTRB),
        .M_AXI_wvalid(PCIe_M_AXI_WVALID),
        .axi_aclk(PCIe_axi_aclk),
        .axi_aresetn(PCIe_axi_aresetn),
        .pcie_mgt_rxn(PCIe_pcie_mgt_rxn),
        .pcie_mgt_rxp(PCIe_pcie_mgt_rxp),
        .pcie_mgt_txn(PCIe_pcie_mgt_txn),
        .pcie_mgt_txp(PCIe_pcie_mgt_txp),
        .sys_rst_n(perst_n_1));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC0000000 32 > shell blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  shell_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[11:0]),
        .s_axi_aresetn(util_vector_logic_2_Res),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[11:0]),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  shell_axi_hwicap_0_0 axi_hwicap_0
       (.eos_in(1'b1),
        .icap_clk(microblaze_0_Clk),
        .s_axi_aclk(network_clk_156),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_aresetn(util_vector_logic_2_Res),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID));
  shell_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(microblaze_0_Clk),
        .ARESETN(util_vector_logic_2_Res),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(util_vector_logic_2_Res),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(network_clk_156),
        .M01_ARESETN(PCIe_axi_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_interconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_interconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(network_clk_156),
        .M02_ARESETN(util_vector_logic_2_Res),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(network_clk_156),
        .M03_ARESETN(util_vector_logic_2_Res),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(util_vector_logic_2_Res),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S01_ACLK(PCIe_axi_aclk),
        .S01_ARESETN(PCIe_axi_aresetn),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID));
  shell_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  shell_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(refclk200_1),
        .clk_out1(microblaze_0_Clk));
  shell_gnd_0 gnd
       (.dout(gnd_dout));
  mb_system_imp_VMXBLU mb_system
       (.MB_AXI_araddr(S00_AXI_1_ARADDR),
        .MB_AXI_arprot(S00_AXI_1_ARPROT),
        .MB_AXI_arready(S00_AXI_1_ARREADY),
        .MB_AXI_arvalid(S00_AXI_1_ARVALID),
        .MB_AXI_awaddr(S00_AXI_1_AWADDR),
        .MB_AXI_awprot(S00_AXI_1_AWPROT),
        .MB_AXI_awready(S00_AXI_1_AWREADY),
        .MB_AXI_awvalid(S00_AXI_1_AWVALID),
        .MB_AXI_bready(S00_AXI_1_BREADY),
        .MB_AXI_bresp(S00_AXI_1_BRESP),
        .MB_AXI_bvalid(S00_AXI_1_BVALID),
        .MB_AXI_rdata(S00_AXI_1_RDATA),
        .MB_AXI_rready(S00_AXI_1_RREADY),
        .MB_AXI_rresp(S00_AXI_1_RRESP),
        .MB_AXI_rvalid(S00_AXI_1_RVALID),
        .MB_AXI_wdata(S00_AXI_1_WDATA),
        .MB_AXI_wready(S00_AXI_1_WREADY),
        .MB_AXI_wstrb(S00_AXI_1_WSTRB),
        .MB_AXI_wvalid(S00_AXI_1_WVALID),
        .clk100(microblaze_0_Clk),
        .ext_reset_in(util_vector_logic_2_Res));
  mem_interface_imp_1EJ895G mem_interface
       (.MEM_AXI_araddr(pr_decoupler_0_s_pr_axi_mem_ARADDR),
        .MEM_AXI_arburst(pr_decoupler_0_s_pr_axi_mem_ARBURST),
        .MEM_AXI_arcache(pr_decoupler_0_s_pr_axi_mem_ARCACHE),
        .MEM_AXI_arid(pr_decoupler_0_s_pr_axi_mem_ARID),
        .MEM_AXI_arlen(pr_decoupler_0_s_pr_axi_mem_ARLEN),
        .MEM_AXI_arlock(pr_decoupler_0_s_pr_axi_mem_ARLOCK),
        .MEM_AXI_arprot(pr_decoupler_0_s_pr_axi_mem_ARPROT),
        .MEM_AXI_arqos(pr_decoupler_0_s_pr_axi_mem_ARQOS),
        .MEM_AXI_arready(pr_decoupler_0_s_pr_axi_mem_ARREADY),
        .MEM_AXI_arregion(pr_decoupler_0_s_pr_axi_mem_ARREGION),
        .MEM_AXI_arsize(pr_decoupler_0_s_pr_axi_mem_ARSIZE),
        .MEM_AXI_arvalid(pr_decoupler_0_s_pr_axi_mem_ARVALID),
        .MEM_AXI_awaddr(pr_decoupler_0_s_pr_axi_mem_AWADDR),
        .MEM_AXI_awburst(pr_decoupler_0_s_pr_axi_mem_AWBURST),
        .MEM_AXI_awcache(pr_decoupler_0_s_pr_axi_mem_AWCACHE),
        .MEM_AXI_awid(pr_decoupler_0_s_pr_axi_mem_AWID),
        .MEM_AXI_awlen(pr_decoupler_0_s_pr_axi_mem_AWLEN),
        .MEM_AXI_awlock(pr_decoupler_0_s_pr_axi_mem_AWLOCK),
        .MEM_AXI_awprot(pr_decoupler_0_s_pr_axi_mem_AWPROT),
        .MEM_AXI_awqos(pr_decoupler_0_s_pr_axi_mem_AWQOS),
        .MEM_AXI_awready(pr_decoupler_0_s_pr_axi_mem_AWREADY),
        .MEM_AXI_awregion(pr_decoupler_0_s_pr_axi_mem_AWREGION),
        .MEM_AXI_awsize(pr_decoupler_0_s_pr_axi_mem_AWSIZE),
        .MEM_AXI_awvalid(pr_decoupler_0_s_pr_axi_mem_AWVALID),
        .MEM_AXI_bid(pr_decoupler_0_s_pr_axi_mem_BID),
        .MEM_AXI_bready(pr_decoupler_0_s_pr_axi_mem_BREADY),
        .MEM_AXI_bresp(pr_decoupler_0_s_pr_axi_mem_BRESP),
        .MEM_AXI_bvalid(pr_decoupler_0_s_pr_axi_mem_BVALID),
        .MEM_AXI_rdata(pr_decoupler_0_s_pr_axi_mem_RDATA),
        .MEM_AXI_rid(pr_decoupler_0_s_pr_axi_mem_RID),
        .MEM_AXI_rlast(pr_decoupler_0_s_pr_axi_mem_RLAST),
        .MEM_AXI_rready(pr_decoupler_0_s_pr_axi_mem_RREADY),
        .MEM_AXI_rresp(pr_decoupler_0_s_pr_axi_mem_RRESP),
        .MEM_AXI_rvalid(pr_decoupler_0_s_pr_axi_mem_RVALID),
        .MEM_AXI_wdata(pr_decoupler_0_s_pr_axi_mem_WDATA),
        .MEM_AXI_wlast(pr_decoupler_0_s_pr_axi_mem_WLAST),
        .MEM_AXI_wready(pr_decoupler_0_s_pr_axi_mem_WREADY),
        .MEM_AXI_wstrb(pr_decoupler_0_s_pr_axi_mem_WSTRB),
        .MEM_AXI_wvalid(pr_decoupler_0_s_pr_axi_mem_WVALID),
        .PCIE_ACLK(PCIe_axi_aclk),
        .PCIE_AXI_araddr(PCIe_M_AXI_ARADDR),
        .PCIE_AXI_arburst(PCIe_M_AXI_ARBURST),
        .PCIE_AXI_arcache(PCIe_M_AXI_ARCACHE),
        .PCIE_AXI_arid(PCIe_M_AXI_ARID),
        .PCIE_AXI_arlen(PCIe_M_AXI_ARLEN),
        .PCIE_AXI_arlock(PCIe_M_AXI_ARLOCK),
        .PCIE_AXI_arprot(PCIe_M_AXI_ARPROT),
        .PCIE_AXI_arready(PCIe_M_AXI_ARREADY),
        .PCIE_AXI_arsize(PCIe_M_AXI_ARSIZE),
        .PCIE_AXI_arvalid(PCIe_M_AXI_ARVALID),
        .PCIE_AXI_awaddr(PCIe_M_AXI_AWADDR),
        .PCIE_AXI_awburst(PCIe_M_AXI_AWBURST),
        .PCIE_AXI_awcache(PCIe_M_AXI_AWCACHE),
        .PCIE_AXI_awid(PCIe_M_AXI_AWID),
        .PCIE_AXI_awlen(PCIe_M_AXI_AWLEN),
        .PCIE_AXI_awlock(PCIe_M_AXI_AWLOCK),
        .PCIE_AXI_awprot(PCIe_M_AXI_AWPROT),
        .PCIE_AXI_awready(PCIe_M_AXI_AWREADY),
        .PCIE_AXI_awsize(PCIe_M_AXI_AWSIZE),
        .PCIE_AXI_awvalid(PCIe_M_AXI_AWVALID),
        .PCIE_AXI_bid(PCIe_M_AXI_BID),
        .PCIE_AXI_bready(PCIe_M_AXI_BREADY),
        .PCIE_AXI_bresp(PCIe_M_AXI_BRESP),
        .PCIE_AXI_bvalid(PCIe_M_AXI_BVALID),
        .PCIE_AXI_rdata(PCIe_M_AXI_RDATA),
        .PCIE_AXI_rid(PCIe_M_AXI_RID),
        .PCIE_AXI_rlast(PCIe_M_AXI_RLAST),
        .PCIE_AXI_rready(PCIe_M_AXI_RREADY),
        .PCIE_AXI_rresp(PCIe_M_AXI_RRESP),
        .PCIE_AXI_rvalid(PCIe_M_AXI_RVALID),
        .PCIE_AXI_wdata(PCIe_M_AXI_WDATA),
        .PCIE_AXI_wlast(PCIe_M_AXI_WLAST),
        .PCIE_AXI_wready(PCIe_M_AXI_WREADY),
        .PCIE_AXI_wstrb(PCIe_M_AXI_WSTRB),
        .PCIE_AXI_wvalid(PCIe_M_AXI_WVALID),
        .c0_ddr4_act_n(mem_interface_c0_ddr4_act_n),
        .c0_ddr4_adr(mem_interface_c0_ddr4_adr),
        .c0_ddr4_ba(mem_interface_c0_ddr4_ba),
        .c0_ddr4_bg(mem_interface_c0_ddr4_bg),
        .c0_ddr4_ck_c(mem_interface_c0_ddr4_ck_c),
        .c0_ddr4_ck_t(mem_interface_c0_ddr4_ck_t),
        .c0_ddr4_cke(mem_interface_c0_ddr4_cke),
        .c0_ddr4_cs_n(mem_interface_c0_ddr4_cs_n),
        .c0_ddr4_dg(c0_ddr4_dg_0[63:0]),
        .c0_ddr4_dm_dbi_n(c0_ddr4_dm_dbi_n_0[7:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c_0[7:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t_0[7:0]),
        .c0_ddr4_odt(mem_interface_c0_ddr4_odt),
        .c0_ddr4_reset_n(mem_interface_c0_ddr4_reset_n),
        .c0_sys_clk_n(c0_sys_clk_n_0_1),
        .c0_sys_clk_p(c0_sys_clk_p_0_1),
        .clk156_25(network_clk_156),
        .m_axi_mm2s_aresetn(util_vector_logic_2_Res),
        .sys_rst(util_vector_logic_2_Res));
  network_imp_10F7WL8 network
       (.M_AXIS_tdata(network_M_AXIS_TDATA),
        .M_AXIS_tkeep(network_M_AXIS_TKEEP),
        .M_AXIS_tlast(network_M_AXIS_TLAST),
        .M_AXIS_tready(network_M_AXIS_TREADY),
        .M_AXIS_tvalid(network_M_AXIS_TVALID),
        .S_AXIS_tdata(reverseEndian64_0_stream_out_TDATA),
        .S_AXIS_tkeep(reverseEndian64_0_stream_out_TKEEP),
        .S_AXIS_tlast(reverseEndian64_0_stream_out_TLAST),
        .S_AXIS_tready(reverseEndian64_0_stream_out_TREADY),
        .S_AXIS_tvalid(reverseEndian64_0_stream_out_TVALID),
        .aresetn(util_vector_logic_2_Res),
        .clk_100(microblaze_0_Clk),
        .clk_156(network_clk_156),
        .network_reset_done(network_network_reset_done),
        .refclk_n(refclk_n_1),
        .refclk_p(refclk_p_1),
        .reset(util_vector_logic_1_Res),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .txn(network_txn),
        .txp(network_txp));
  shell_pr_decoupler_0_0 pr_decoupler_0
       (.aclk(network_clk_156),
        .rp_control_ARADDR(pr_decoupler_0_rp_control_ARADDR),
        .rp_control_ARPROT(pr_decoupler_0_rp_control_ARPROT),
        .rp_control_ARQOS(pr_decoupler_0_rp_control_ARQOS),
        .rp_control_ARREADY(pr_decoupler_0_rp_control_ARREADY),
        .rp_control_ARREGION(pr_decoupler_0_rp_control_ARREGION),
        .rp_control_ARVALID(pr_decoupler_0_rp_control_ARVALID),
        .rp_control_AWADDR(pr_decoupler_0_rp_control_AWADDR),
        .rp_control_AWPROT(pr_decoupler_0_rp_control_AWPROT),
        .rp_control_AWQOS(pr_decoupler_0_rp_control_AWQOS),
        .rp_control_AWREADY(pr_decoupler_0_rp_control_AWREADY),
        .rp_control_AWREGION(pr_decoupler_0_rp_control_AWREGION),
        .rp_control_AWVALID(pr_decoupler_0_rp_control_AWVALID),
        .rp_control_BREADY(pr_decoupler_0_rp_control_BREADY),
        .rp_control_BRESP(pr_decoupler_0_rp_control_BRESP),
        .rp_control_BVALID(pr_decoupler_0_rp_control_BVALID),
        .rp_control_RDATA(pr_decoupler_0_rp_control_RDATA),
        .rp_control_RREADY(pr_decoupler_0_rp_control_RREADY),
        .rp_control_RRESP(pr_decoupler_0_rp_control_RRESP),
        .rp_control_RVALID(pr_decoupler_0_rp_control_RVALID),
        .rp_control_WDATA(pr_decoupler_0_rp_control_WDATA),
        .rp_control_WREADY(pr_decoupler_0_rp_control_WREADY),
        .rp_control_WSTRB(pr_decoupler_0_rp_control_WSTRB),
        .rp_control_WVALID(pr_decoupler_0_rp_control_WVALID),
        .rp_pr_axi_mem_ARADDR(S_AXI_MEM_1_ARADDR),
        .rp_pr_axi_mem_ARBURST(S_AXI_MEM_1_ARBURST),
        .rp_pr_axi_mem_ARCACHE(S_AXI_MEM_1_ARCACHE),
        .rp_pr_axi_mem_ARID(S_AXI_MEM_1_ARID),
        .rp_pr_axi_mem_ARLEN(S_AXI_MEM_1_ARLEN),
        .rp_pr_axi_mem_ARLOCK(S_AXI_MEM_1_ARLOCK),
        .rp_pr_axi_mem_ARPROT(S_AXI_MEM_1_ARPROT),
        .rp_pr_axi_mem_ARQOS(S_AXI_MEM_1_ARQOS),
        .rp_pr_axi_mem_ARREADY(S_AXI_MEM_1_ARREADY),
        .rp_pr_axi_mem_ARREGION(S_AXI_MEM_1_ARREGION),
        .rp_pr_axi_mem_ARSIZE(S_AXI_MEM_1_ARSIZE),
        .rp_pr_axi_mem_ARVALID(S_AXI_MEM_1_ARVALID),
        .rp_pr_axi_mem_AWADDR(S_AXI_MEM_1_AWADDR),
        .rp_pr_axi_mem_AWBURST(S_AXI_MEM_1_AWBURST),
        .rp_pr_axi_mem_AWCACHE(S_AXI_MEM_1_AWCACHE),
        .rp_pr_axi_mem_AWID(S_AXI_MEM_1_AWID),
        .rp_pr_axi_mem_AWLEN(S_AXI_MEM_1_AWLEN),
        .rp_pr_axi_mem_AWLOCK(S_AXI_MEM_1_AWLOCK),
        .rp_pr_axi_mem_AWPROT(S_AXI_MEM_1_AWPROT),
        .rp_pr_axi_mem_AWQOS(S_AXI_MEM_1_AWQOS),
        .rp_pr_axi_mem_AWREADY(S_AXI_MEM_1_AWREADY),
        .rp_pr_axi_mem_AWREGION(S_AXI_MEM_1_AWREGION),
        .rp_pr_axi_mem_AWSIZE(S_AXI_MEM_1_AWSIZE),
        .rp_pr_axi_mem_AWVALID(S_AXI_MEM_1_AWVALID),
        .rp_pr_axi_mem_BID(S_AXI_MEM_1_BID),
        .rp_pr_axi_mem_BREADY(S_AXI_MEM_1_BREADY),
        .rp_pr_axi_mem_BRESP(S_AXI_MEM_1_BRESP),
        .rp_pr_axi_mem_BVALID(S_AXI_MEM_1_BVALID),
        .rp_pr_axi_mem_RDATA(S_AXI_MEM_1_RDATA),
        .rp_pr_axi_mem_RID(S_AXI_MEM_1_RID),
        .rp_pr_axi_mem_RLAST(S_AXI_MEM_1_RLAST),
        .rp_pr_axi_mem_RREADY(S_AXI_MEM_1_RREADY),
        .rp_pr_axi_mem_RRESP(S_AXI_MEM_1_RRESP),
        .rp_pr_axi_mem_RVALID(S_AXI_MEM_1_RVALID),
        .rp_pr_axi_mem_WDATA(S_AXI_MEM_1_WDATA),
        .rp_pr_axi_mem_WID(S_AXI_MEM_1_WID),
        .rp_pr_axi_mem_WLAST(S_AXI_MEM_1_WLAST),
        .rp_pr_axi_mem_WREADY(S_AXI_MEM_1_WREADY),
        .rp_pr_axi_mem_WSTRB(S_AXI_MEM_1_WSTRB),
        .rp_pr_axi_mem_WVALID(S_AXI_MEM_1_WVALID),
        .rp_stream_in_TDATA(S_AXIS_1_TDATA),
        .rp_stream_in_TKEEP(S_AXIS_1_TKEEP),
        .rp_stream_in_TLAST(S_AXIS_1_TLAST),
        .rp_stream_in_TREADY(S_AXIS_1_TREADY),
        .rp_stream_in_TVALID(S_AXIS_1_TVALID),
        .rp_stream_out_TDATA(pr_decoupler_0_rp_stream_out_TDATA),
        .rp_stream_out_TKEEP(pr_decoupler_0_rp_stream_out_TKEEP),
        .rp_stream_out_TLAST(pr_decoupler_0_rp_stream_out_TLAST),
        .rp_stream_out_TREADY(pr_decoupler_0_rp_stream_out_TREADY),
        .rp_stream_out_TVALID(pr_decoupler_0_rp_stream_out_TVALID),
        .s_axi_reg_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .s_axi_reg_aresetn(util_vector_logic_2_Res),
        .s_axi_reg_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_reg_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_reg_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .s_axi_reg_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_reg_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_reg_bready(axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_reg_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_reg_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_reg_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_reg_rready(axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_reg_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_reg_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_reg_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_reg_wready(axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_reg_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .s_control_ARADDR(axi_interconnect_0_M01_AXI_ARADDR),
        .s_control_ARPROT(axi_interconnect_0_M01_AXI_ARPROT),
        .s_control_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .s_control_ARREADY(axi_interconnect_0_M01_AXI_ARREADY),
        .s_control_ARREGION({1'b0,1'b0,1'b0,1'b0}),
        .s_control_ARVALID(axi_interconnect_0_M01_AXI_ARVALID),
        .s_control_AWADDR(axi_interconnect_0_M01_AXI_AWADDR),
        .s_control_AWPROT(axi_interconnect_0_M01_AXI_AWPROT),
        .s_control_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .s_control_AWREADY(axi_interconnect_0_M01_AXI_AWREADY),
        .s_control_AWREGION({1'b0,1'b0,1'b0,1'b0}),
        .s_control_AWVALID(axi_interconnect_0_M01_AXI_AWVALID),
        .s_control_BREADY(axi_interconnect_0_M01_AXI_BREADY),
        .s_control_BRESP(axi_interconnect_0_M01_AXI_BRESP),
        .s_control_BVALID(axi_interconnect_0_M01_AXI_BVALID),
        .s_control_RDATA(axi_interconnect_0_M01_AXI_RDATA),
        .s_control_RREADY(axi_interconnect_0_M01_AXI_RREADY),
        .s_control_RRESP(axi_interconnect_0_M01_AXI_RRESP),
        .s_control_RVALID(axi_interconnect_0_M01_AXI_RVALID),
        .s_control_WDATA(axi_interconnect_0_M01_AXI_WDATA),
        .s_control_WREADY(axi_interconnect_0_M01_AXI_WREADY),
        .s_control_WSTRB(axi_interconnect_0_M01_AXI_WSTRB),
        .s_control_WVALID(axi_interconnect_0_M01_AXI_WVALID),
        .s_pr_axi_mem_ARADDR(pr_decoupler_0_s_pr_axi_mem_ARADDR),
        .s_pr_axi_mem_ARBURST(pr_decoupler_0_s_pr_axi_mem_ARBURST),
        .s_pr_axi_mem_ARCACHE(pr_decoupler_0_s_pr_axi_mem_ARCACHE),
        .s_pr_axi_mem_ARID(pr_decoupler_0_s_pr_axi_mem_ARID),
        .s_pr_axi_mem_ARLEN(pr_decoupler_0_s_pr_axi_mem_ARLEN),
        .s_pr_axi_mem_ARLOCK(pr_decoupler_0_s_pr_axi_mem_ARLOCK),
        .s_pr_axi_mem_ARPROT(pr_decoupler_0_s_pr_axi_mem_ARPROT),
        .s_pr_axi_mem_ARQOS(pr_decoupler_0_s_pr_axi_mem_ARQOS),
        .s_pr_axi_mem_ARREADY(pr_decoupler_0_s_pr_axi_mem_ARREADY),
        .s_pr_axi_mem_ARREGION(pr_decoupler_0_s_pr_axi_mem_ARREGION),
        .s_pr_axi_mem_ARSIZE(pr_decoupler_0_s_pr_axi_mem_ARSIZE),
        .s_pr_axi_mem_ARVALID(pr_decoupler_0_s_pr_axi_mem_ARVALID),
        .s_pr_axi_mem_AWADDR(pr_decoupler_0_s_pr_axi_mem_AWADDR),
        .s_pr_axi_mem_AWBURST(pr_decoupler_0_s_pr_axi_mem_AWBURST),
        .s_pr_axi_mem_AWCACHE(pr_decoupler_0_s_pr_axi_mem_AWCACHE),
        .s_pr_axi_mem_AWID(pr_decoupler_0_s_pr_axi_mem_AWID),
        .s_pr_axi_mem_AWLEN(pr_decoupler_0_s_pr_axi_mem_AWLEN),
        .s_pr_axi_mem_AWLOCK(pr_decoupler_0_s_pr_axi_mem_AWLOCK),
        .s_pr_axi_mem_AWPROT(pr_decoupler_0_s_pr_axi_mem_AWPROT),
        .s_pr_axi_mem_AWQOS(pr_decoupler_0_s_pr_axi_mem_AWQOS),
        .s_pr_axi_mem_AWREADY(pr_decoupler_0_s_pr_axi_mem_AWREADY),
        .s_pr_axi_mem_AWREGION(pr_decoupler_0_s_pr_axi_mem_AWREGION),
        .s_pr_axi_mem_AWSIZE(pr_decoupler_0_s_pr_axi_mem_AWSIZE),
        .s_pr_axi_mem_AWVALID(pr_decoupler_0_s_pr_axi_mem_AWVALID),
        .s_pr_axi_mem_BID(pr_decoupler_0_s_pr_axi_mem_BID),
        .s_pr_axi_mem_BREADY(pr_decoupler_0_s_pr_axi_mem_BREADY),
        .s_pr_axi_mem_BRESP(pr_decoupler_0_s_pr_axi_mem_BRESP),
        .s_pr_axi_mem_BVALID(pr_decoupler_0_s_pr_axi_mem_BVALID),
        .s_pr_axi_mem_RDATA(pr_decoupler_0_s_pr_axi_mem_RDATA),
        .s_pr_axi_mem_RID(pr_decoupler_0_s_pr_axi_mem_RID),
        .s_pr_axi_mem_RLAST(pr_decoupler_0_s_pr_axi_mem_RLAST),
        .s_pr_axi_mem_RREADY(pr_decoupler_0_s_pr_axi_mem_RREADY),
        .s_pr_axi_mem_RRESP(pr_decoupler_0_s_pr_axi_mem_RRESP),
        .s_pr_axi_mem_RVALID(pr_decoupler_0_s_pr_axi_mem_RVALID),
        .s_pr_axi_mem_WDATA(pr_decoupler_0_s_pr_axi_mem_WDATA),
        .s_pr_axi_mem_WLAST(pr_decoupler_0_s_pr_axi_mem_WLAST),
        .s_pr_axi_mem_WREADY(pr_decoupler_0_s_pr_axi_mem_WREADY),
        .s_pr_axi_mem_WSTRB(pr_decoupler_0_s_pr_axi_mem_WSTRB),
        .s_pr_axi_mem_WVALID(pr_decoupler_0_s_pr_axi_mem_WVALID),
        .s_stream_in_TDATA(pr_decoupler_0_s_stream_in_TDATA),
        .s_stream_in_TKEEP(pr_decoupler_0_s_stream_in_TKEEP),
        .s_stream_in_TLAST(pr_decoupler_0_s_stream_in_TLAST),
        .s_stream_in_TREADY(pr_decoupler_0_s_stream_in_TREADY),
        .s_stream_in_TVALID(pr_decoupler_0_s_stream_in_TVALID),
        .s_stream_out_TDATA(reverseEndian64_1_stream_out_TDATA),
        .s_stream_out_TKEEP(reverseEndian64_1_stream_out_TKEEP),
        .s_stream_out_TLAST(reverseEndian64_1_stream_out_TLAST),
        .s_stream_out_TREADY(reverseEndian64_1_stream_out_TREADY),
        .s_stream_out_TVALID(reverseEndian64_1_stream_out_TVALID));
  shell_reverseEndian64_0_0 reverseEndian64_0
       (.ap_clk(network_clk_156),
        .ap_rst_n(util_vector_logic_2_Res),
        .stream_in_TDATA(pr_decoupler_0_s_stream_in_TDATA),
        .stream_in_TKEEP(pr_decoupler_0_s_stream_in_TKEEP),
        .stream_in_TLAST(pr_decoupler_0_s_stream_in_TLAST),
        .stream_in_TREADY(pr_decoupler_0_s_stream_in_TREADY),
        .stream_in_TVALID(pr_decoupler_0_s_stream_in_TVALID),
        .stream_out_TDATA(reverseEndian64_0_stream_out_TDATA),
        .stream_out_TKEEP(reverseEndian64_0_stream_out_TKEEP),
        .stream_out_TLAST(reverseEndian64_0_stream_out_TLAST),
        .stream_out_TREADY(reverseEndian64_0_stream_out_TREADY),
        .stream_out_TVALID(reverseEndian64_0_stream_out_TVALID));
  shell_reverseEndian64_1_0 reverseEndian64_1
       (.ap_clk(network_clk_156),
        .ap_rst_n(util_vector_logic_2_Res),
        .stream_in_TDATA(network_M_AXIS_TDATA),
        .stream_in_TKEEP(network_M_AXIS_TKEEP),
        .stream_in_TLAST(network_M_AXIS_TLAST),
        .stream_in_TREADY(network_M_AXIS_TREADY),
        .stream_in_TVALID(network_M_AXIS_TVALID),
        .stream_out_TDATA(reverseEndian64_1_stream_out_TDATA),
        .stream_out_TKEEP(reverseEndian64_1_stream_out_TKEEP),
        .stream_out_TLAST(reverseEndian64_1_stream_out_TLAST),
        .stream_out_TREADY(reverseEndian64_1_stream_out_TREADY),
        .stream_out_TVALID(reverseEndian64_1_stream_out_TVALID));
  shell_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(perst_n_1),
        .Op2(network_network_reset_done),
        .Res(util_vector_logic_0_Res));
  shell_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(perst_n_1),
        .Res(util_vector_logic_1_Res));
  shell_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(PCIe_axi_aresetn),
        .Op2(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
endmodule

module shell_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [8:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [8:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [0:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [0:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_ARADDR;
  wire [2:0]axi_interconnect_0_to_s01_couplers_ARPROT;
  wire axi_interconnect_0_to_s01_couplers_ARREADY;
  wire axi_interconnect_0_to_s01_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_AWADDR;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWPROT;
  wire axi_interconnect_0_to_s01_couplers_AWREADY;
  wire axi_interconnect_0_to_s01_couplers_AWVALID;
  wire axi_interconnect_0_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_BRESP;
  wire axi_interconnect_0_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_RDATA;
  wire axi_interconnect_0_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_RRESP;
  wire axi_interconnect_0_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_WDATA;
  wire axi_interconnect_0_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_WSTRB;
  wire axi_interconnect_0_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_0_ARPROT;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_0_AWPROT;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire m03_couplers_to_axi_interconnect_0_ARREADY;
  wire m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire m03_couplers_to_axi_interconnect_0_AWREADY;
  wire m03_couplers_to_axi_interconnect_0_AWVALID;
  wire m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire m03_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire m03_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire m03_couplers_to_axi_interconnect_0_WREADY;
  wire m03_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_interconnect_0_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_interconnect_0_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[8:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[8:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wvalid = m03_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_interconnect_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = axi_interconnect_0_to_s01_couplers_RDATA;
  assign S01_AXI_rresp[1:0] = axi_interconnect_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_0_to_s01_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign axi_interconnect_0_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready;
  m00_couplers_imp_17RNK4V m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_A2B4UF m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_ERMJ3Y m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_13219ZQ m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_1KJMYX0 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  s01_couplers_imp_VOMHM4 s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s01_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_0_to_s01_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s01_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s01_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s01_couplers_WVALID));
  shell_xbar_1 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module shell_mem_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [32:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [32:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [1:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [255:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [255:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [31:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire [32:0]m00_couplers_to_mem_interconnect_ARADDR;
  wire [1:0]m00_couplers_to_mem_interconnect_ARBURST;
  wire [3:0]m00_couplers_to_mem_interconnect_ARCACHE;
  wire [1:0]m00_couplers_to_mem_interconnect_ARID;
  wire [7:0]m00_couplers_to_mem_interconnect_ARLEN;
  wire [0:0]m00_couplers_to_mem_interconnect_ARLOCK;
  wire [2:0]m00_couplers_to_mem_interconnect_ARPROT;
  wire [3:0]m00_couplers_to_mem_interconnect_ARQOS;
  wire m00_couplers_to_mem_interconnect_ARREADY;
  wire [2:0]m00_couplers_to_mem_interconnect_ARSIZE;
  wire m00_couplers_to_mem_interconnect_ARVALID;
  wire [32:0]m00_couplers_to_mem_interconnect_AWADDR;
  wire [1:0]m00_couplers_to_mem_interconnect_AWBURST;
  wire [3:0]m00_couplers_to_mem_interconnect_AWCACHE;
  wire [1:0]m00_couplers_to_mem_interconnect_AWID;
  wire [7:0]m00_couplers_to_mem_interconnect_AWLEN;
  wire [0:0]m00_couplers_to_mem_interconnect_AWLOCK;
  wire [2:0]m00_couplers_to_mem_interconnect_AWPROT;
  wire [3:0]m00_couplers_to_mem_interconnect_AWQOS;
  wire m00_couplers_to_mem_interconnect_AWREADY;
  wire [2:0]m00_couplers_to_mem_interconnect_AWSIZE;
  wire m00_couplers_to_mem_interconnect_AWVALID;
  wire [1:0]m00_couplers_to_mem_interconnect_BID;
  wire m00_couplers_to_mem_interconnect_BREADY;
  wire [1:0]m00_couplers_to_mem_interconnect_BRESP;
  wire m00_couplers_to_mem_interconnect_BVALID;
  wire [511:0]m00_couplers_to_mem_interconnect_RDATA;
  wire [1:0]m00_couplers_to_mem_interconnect_RID;
  wire m00_couplers_to_mem_interconnect_RLAST;
  wire m00_couplers_to_mem_interconnect_RREADY;
  wire [1:0]m00_couplers_to_mem_interconnect_RRESP;
  wire m00_couplers_to_mem_interconnect_RVALID;
  wire [511:0]m00_couplers_to_mem_interconnect_WDATA;
  wire m00_couplers_to_mem_interconnect_WLAST;
  wire m00_couplers_to_mem_interconnect_WREADY;
  wire [63:0]m00_couplers_to_mem_interconnect_WSTRB;
  wire m00_couplers_to_mem_interconnect_WVALID;
  wire mem_interconnect_ACLK_net;
  wire mem_interconnect_ARESETN_net;
  wire [63:0]mem_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]mem_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]mem_interconnect_to_s00_couplers_ARCACHE;
  wire [3:0]mem_interconnect_to_s00_couplers_ARID;
  wire [7:0]mem_interconnect_to_s00_couplers_ARLEN;
  wire [0:0]mem_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]mem_interconnect_to_s00_couplers_ARPROT;
  wire mem_interconnect_to_s00_couplers_ARREADY;
  wire [2:0]mem_interconnect_to_s00_couplers_ARSIZE;
  wire mem_interconnect_to_s00_couplers_ARVALID;
  wire [63:0]mem_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]mem_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]mem_interconnect_to_s00_couplers_AWCACHE;
  wire [3:0]mem_interconnect_to_s00_couplers_AWID;
  wire [7:0]mem_interconnect_to_s00_couplers_AWLEN;
  wire [0:0]mem_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]mem_interconnect_to_s00_couplers_AWPROT;
  wire mem_interconnect_to_s00_couplers_AWREADY;
  wire [2:0]mem_interconnect_to_s00_couplers_AWSIZE;
  wire mem_interconnect_to_s00_couplers_AWVALID;
  wire [3:0]mem_interconnect_to_s00_couplers_BID;
  wire mem_interconnect_to_s00_couplers_BREADY;
  wire [1:0]mem_interconnect_to_s00_couplers_BRESP;
  wire mem_interconnect_to_s00_couplers_BVALID;
  wire [255:0]mem_interconnect_to_s00_couplers_RDATA;
  wire [3:0]mem_interconnect_to_s00_couplers_RID;
  wire mem_interconnect_to_s00_couplers_RLAST;
  wire mem_interconnect_to_s00_couplers_RREADY;
  wire [1:0]mem_interconnect_to_s00_couplers_RRESP;
  wire mem_interconnect_to_s00_couplers_RVALID;
  wire [255:0]mem_interconnect_to_s00_couplers_WDATA;
  wire mem_interconnect_to_s00_couplers_WLAST;
  wire mem_interconnect_to_s00_couplers_WREADY;
  wire [31:0]mem_interconnect_to_s00_couplers_WSTRB;
  wire mem_interconnect_to_s00_couplers_WVALID;
  wire [31:0]mem_interconnect_to_s01_couplers_ARADDR;
  wire [1:0]mem_interconnect_to_s01_couplers_ARBURST;
  wire [3:0]mem_interconnect_to_s01_couplers_ARCACHE;
  wire [0:0]mem_interconnect_to_s01_couplers_ARID;
  wire [7:0]mem_interconnect_to_s01_couplers_ARLEN;
  wire [0:0]mem_interconnect_to_s01_couplers_ARLOCK;
  wire [2:0]mem_interconnect_to_s01_couplers_ARPROT;
  wire [3:0]mem_interconnect_to_s01_couplers_ARQOS;
  wire mem_interconnect_to_s01_couplers_ARREADY;
  wire [3:0]mem_interconnect_to_s01_couplers_ARREGION;
  wire [2:0]mem_interconnect_to_s01_couplers_ARSIZE;
  wire mem_interconnect_to_s01_couplers_ARVALID;
  wire [31:0]mem_interconnect_to_s01_couplers_AWADDR;
  wire [1:0]mem_interconnect_to_s01_couplers_AWBURST;
  wire [3:0]mem_interconnect_to_s01_couplers_AWCACHE;
  wire [0:0]mem_interconnect_to_s01_couplers_AWID;
  wire [7:0]mem_interconnect_to_s01_couplers_AWLEN;
  wire [0:0]mem_interconnect_to_s01_couplers_AWLOCK;
  wire [2:0]mem_interconnect_to_s01_couplers_AWPROT;
  wire [3:0]mem_interconnect_to_s01_couplers_AWQOS;
  wire mem_interconnect_to_s01_couplers_AWREADY;
  wire [3:0]mem_interconnect_to_s01_couplers_AWREGION;
  wire [2:0]mem_interconnect_to_s01_couplers_AWSIZE;
  wire mem_interconnect_to_s01_couplers_AWVALID;
  wire [0:0]mem_interconnect_to_s01_couplers_BID;
  wire mem_interconnect_to_s01_couplers_BREADY;
  wire [1:0]mem_interconnect_to_s01_couplers_BRESP;
  wire mem_interconnect_to_s01_couplers_BVALID;
  wire [511:0]mem_interconnect_to_s01_couplers_RDATA;
  wire [0:0]mem_interconnect_to_s01_couplers_RID;
  wire mem_interconnect_to_s01_couplers_RLAST;
  wire mem_interconnect_to_s01_couplers_RREADY;
  wire [1:0]mem_interconnect_to_s01_couplers_RRESP;
  wire mem_interconnect_to_s01_couplers_RVALID;
  wire [511:0]mem_interconnect_to_s01_couplers_WDATA;
  wire mem_interconnect_to_s01_couplers_WLAST;
  wire mem_interconnect_to_s01_couplers_WREADY;
  wire [63:0]mem_interconnect_to_s01_couplers_WSTRB;
  wire mem_interconnect_to_s01_couplers_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [0:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [0:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [3:2]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [3:2]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [3:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [3:0]NLW_xbar_s_axi_rid_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[32:0] = m00_couplers_to_mem_interconnect_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_mem_interconnect_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_mem_interconnect_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_mem_interconnect_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_mem_interconnect_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_mem_interconnect_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_mem_interconnect_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_mem_interconnect_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_mem_interconnect_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_mem_interconnect_ARVALID;
  assign M00_AXI_awaddr[32:0] = m00_couplers_to_mem_interconnect_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_mem_interconnect_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_mem_interconnect_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_mem_interconnect_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_mem_interconnect_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_mem_interconnect_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_mem_interconnect_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_mem_interconnect_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_mem_interconnect_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_mem_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_mem_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_mem_interconnect_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_mem_interconnect_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_mem_interconnect_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_mem_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_mem_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = mem_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = mem_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[3:0] = mem_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = mem_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = mem_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[255:0] = mem_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[3:0] = mem_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = mem_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = mem_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = mem_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = mem_interconnect_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = mem_interconnect_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = mem_interconnect_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = mem_interconnect_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = mem_interconnect_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = mem_interconnect_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[511:0] = mem_interconnect_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = mem_interconnect_to_s01_couplers_RID;
  assign S01_AXI_rlast = mem_interconnect_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = mem_interconnect_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = mem_interconnect_to_s01_couplers_RVALID;
  assign S01_AXI_wready = mem_interconnect_to_s01_couplers_WREADY;
  assign m00_couplers_to_mem_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_mem_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_mem_interconnect_BID = M00_AXI_bid[1:0];
  assign m00_couplers_to_mem_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_mem_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_mem_interconnect_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_mem_interconnect_RID = M00_AXI_rid[1:0];
  assign m00_couplers_to_mem_interconnect_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_mem_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_mem_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_mem_interconnect_WREADY = M00_AXI_wready;
  assign mem_interconnect_ACLK_net = ACLK;
  assign mem_interconnect_ARESETN_net = ARESETN;
  assign mem_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign mem_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign mem_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign mem_interconnect_to_s00_couplers_ARID = S00_AXI_arid[3:0];
  assign mem_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign mem_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign mem_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign mem_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign mem_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign mem_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign mem_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign mem_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign mem_interconnect_to_s00_couplers_AWID = S00_AXI_awid[3:0];
  assign mem_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign mem_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign mem_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign mem_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign mem_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign mem_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign mem_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign mem_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[255:0];
  assign mem_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign mem_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[31:0];
  assign mem_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign mem_interconnect_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign mem_interconnect_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign mem_interconnect_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign mem_interconnect_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign mem_interconnect_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign mem_interconnect_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign mem_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign mem_interconnect_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign mem_interconnect_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign mem_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign mem_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign mem_interconnect_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign mem_interconnect_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign mem_interconnect_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign mem_interconnect_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign mem_interconnect_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign mem_interconnect_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign mem_interconnect_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign mem_interconnect_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign mem_interconnect_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign mem_interconnect_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign mem_interconnect_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign mem_interconnect_to_s01_couplers_BREADY = S01_AXI_bready;
  assign mem_interconnect_to_s01_couplers_RREADY = S01_AXI_rready;
  assign mem_interconnect_to_s01_couplers_WDATA = S01_AXI_wdata[511:0];
  assign mem_interconnect_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign mem_interconnect_to_s01_couplers_WSTRB = S01_AXI_wstrb[63:0];
  assign mem_interconnect_to_s01_couplers_WVALID = S01_AXI_wvalid;
  m00_couplers_imp_EN5S6P m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_mem_interconnect_ARADDR),
        .M_AXI_arburst(m00_couplers_to_mem_interconnect_ARBURST),
        .M_AXI_arcache(m00_couplers_to_mem_interconnect_ARCACHE),
        .M_AXI_arid(m00_couplers_to_mem_interconnect_ARID),
        .M_AXI_arlen(m00_couplers_to_mem_interconnect_ARLEN),
        .M_AXI_arlock(m00_couplers_to_mem_interconnect_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_mem_interconnect_ARPROT),
        .M_AXI_arqos(m00_couplers_to_mem_interconnect_ARQOS),
        .M_AXI_arready(m00_couplers_to_mem_interconnect_ARREADY),
        .M_AXI_arsize(m00_couplers_to_mem_interconnect_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_mem_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_mem_interconnect_AWADDR),
        .M_AXI_awburst(m00_couplers_to_mem_interconnect_AWBURST),
        .M_AXI_awcache(m00_couplers_to_mem_interconnect_AWCACHE),
        .M_AXI_awid(m00_couplers_to_mem_interconnect_AWID),
        .M_AXI_awlen(m00_couplers_to_mem_interconnect_AWLEN),
        .M_AXI_awlock(m00_couplers_to_mem_interconnect_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_mem_interconnect_AWPROT),
        .M_AXI_awqos(m00_couplers_to_mem_interconnect_AWQOS),
        .M_AXI_awready(m00_couplers_to_mem_interconnect_AWREADY),
        .M_AXI_awsize(m00_couplers_to_mem_interconnect_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_mem_interconnect_AWVALID),
        .M_AXI_bid(m00_couplers_to_mem_interconnect_BID),
        .M_AXI_bready(m00_couplers_to_mem_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_mem_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_mem_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_mem_interconnect_RDATA),
        .M_AXI_rid(m00_couplers_to_mem_interconnect_RID),
        .M_AXI_rlast(m00_couplers_to_mem_interconnect_RLAST),
        .M_AXI_rready(m00_couplers_to_mem_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_mem_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_mem_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_mem_interconnect_WDATA),
        .M_AXI_wlast(m00_couplers_to_mem_interconnect_WLAST),
        .M_AXI_wready(m00_couplers_to_mem_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_mem_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_mem_interconnect_WVALID),
        .S_ACLK(mem_interconnect_ACLK_net),
        .S_ARESETN(mem_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_RDWXZU s00_couplers
       (.M_ACLK(mem_interconnect_ACLK_net),
        .M_ARESETN(mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(mem_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(mem_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(mem_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(mem_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(mem_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(mem_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(mem_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(mem_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arsize(mem_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(mem_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(mem_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(mem_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(mem_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(mem_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(mem_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(mem_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(mem_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(mem_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awsize(mem_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(mem_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(mem_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(mem_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(mem_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(mem_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(mem_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(mem_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(mem_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(mem_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(mem_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(mem_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(mem_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(mem_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(mem_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(mem_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(mem_interconnect_to_s00_couplers_WVALID));
  s01_couplers_imp_1OUCIK2 s01_couplers
       (.M_ACLK(mem_interconnect_ACLK_net),
        .M_ARESETN(mem_interconnect_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(mem_interconnect_to_s01_couplers_ARADDR),
        .S_AXI_arburst(mem_interconnect_to_s01_couplers_ARBURST),
        .S_AXI_arcache(mem_interconnect_to_s01_couplers_ARCACHE),
        .S_AXI_arid(mem_interconnect_to_s01_couplers_ARID),
        .S_AXI_arlen(mem_interconnect_to_s01_couplers_ARLEN),
        .S_AXI_arlock(mem_interconnect_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(mem_interconnect_to_s01_couplers_ARPROT),
        .S_AXI_arqos(mem_interconnect_to_s01_couplers_ARQOS),
        .S_AXI_arready(mem_interconnect_to_s01_couplers_ARREADY),
        .S_AXI_arregion(mem_interconnect_to_s01_couplers_ARREGION),
        .S_AXI_arsize(mem_interconnect_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(mem_interconnect_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(mem_interconnect_to_s01_couplers_AWADDR),
        .S_AXI_awburst(mem_interconnect_to_s01_couplers_AWBURST),
        .S_AXI_awcache(mem_interconnect_to_s01_couplers_AWCACHE),
        .S_AXI_awid(mem_interconnect_to_s01_couplers_AWID),
        .S_AXI_awlen(mem_interconnect_to_s01_couplers_AWLEN),
        .S_AXI_awlock(mem_interconnect_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(mem_interconnect_to_s01_couplers_AWPROT),
        .S_AXI_awqos(mem_interconnect_to_s01_couplers_AWQOS),
        .S_AXI_awready(mem_interconnect_to_s01_couplers_AWREADY),
        .S_AXI_awregion(mem_interconnect_to_s01_couplers_AWREGION),
        .S_AXI_awsize(mem_interconnect_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(mem_interconnect_to_s01_couplers_AWVALID),
        .S_AXI_bid(mem_interconnect_to_s01_couplers_BID),
        .S_AXI_bready(mem_interconnect_to_s01_couplers_BREADY),
        .S_AXI_bresp(mem_interconnect_to_s01_couplers_BRESP),
        .S_AXI_bvalid(mem_interconnect_to_s01_couplers_BVALID),
        .S_AXI_rdata(mem_interconnect_to_s01_couplers_RDATA),
        .S_AXI_rid(mem_interconnect_to_s01_couplers_RID),
        .S_AXI_rlast(mem_interconnect_to_s01_couplers_RLAST),
        .S_AXI_rready(mem_interconnect_to_s01_couplers_RREADY),
        .S_AXI_rresp(mem_interconnect_to_s01_couplers_RRESP),
        .S_AXI_rvalid(mem_interconnect_to_s01_couplers_RVALID),
        .S_AXI_wdata(mem_interconnect_to_s01_couplers_WDATA),
        .S_AXI_wlast(mem_interconnect_to_s01_couplers_WLAST),
        .S_AXI_wready(mem_interconnect_to_s01_couplers_WREADY),
        .S_AXI_wstrb(mem_interconnect_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(mem_interconnect_to_s01_couplers_WVALID));
  shell_xbar_0 xbar
       (.aclk(mem_interconnect_ACLK_net),
        .aresetn(mem_interconnect_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,s01_couplers_to_xbar_ARID,1'b0,1'b0}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,s01_couplers_to_xbar_AWID,1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[1:0]}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[1:0]}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module shell_microblaze_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_microblaze_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_ARADDR;
  wire [2:0]m01_couplers_to_microblaze_0_axi_periph_ARPROT;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_AWADDR;
  wire [2:0]m01_couplers_to_microblaze_0_axi_periph_AWPROT;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_microblaze_0_axi_periph_WVALID;
  wire microblaze_0_axi_periph_ACLK_net;
  wire microblaze_0_axi_periph_ARESETN_net;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_0_axi_periph_to_s00_couplers_ARPROT;
  wire microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  wire microblaze_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_0_axi_periph_to_s00_couplers_AWPROT;
  wire microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  wire microblaze_0_axi_periph_to_s00_couplers_AWVALID;
  wire microblaze_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_0_axi_periph_to_s00_couplers_BRESP;
  wire microblaze_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_RDATA;
  wire microblaze_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_0_axi_periph_to_s00_couplers_RRESP;
  wire microblaze_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_0_axi_periph_to_s00_couplers_WDATA;
  wire microblaze_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_0_axi_periph_to_s00_couplers_WSTRB;
  wire microblaze_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [5:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [5:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_microblaze_0_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_microblaze_0_axi_periph_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_microblaze_0_axi_periph_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_microblaze_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_microblaze_0_axi_periph_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_microblaze_0_axi_periph_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_microblaze_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_microblaze_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_microblaze_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_microblaze_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = microblaze_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = microblaze_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = microblaze_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_microblaze_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_microblaze_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_microblaze_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_microblaze_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_microblaze_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_microblaze_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_microblaze_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_microblaze_0_axi_periph_WREADY = M01_AXI_wready[0];
  assign microblaze_0_axi_periph_ACLK_net = ACLK;
  assign microblaze_0_axi_periph_ARESETN_net = ARESETN;
  assign microblaze_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign microblaze_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign microblaze_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign microblaze_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign microblaze_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_1KWAT1H m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_WG87ZH m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_microblaze_0_axi_periph_ARADDR),
        .M_AXI_arprot(m01_couplers_to_microblaze_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_microblaze_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_microblaze_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_0_axi_periph_AWADDR),
        .M_AXI_awprot(m01_couplers_to_microblaze_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_microblaze_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_microblaze_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_microblaze_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_microblaze_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_0_axi_periph_WVALID),
        .S_ACLK(microblaze_0_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_1751KRY s00_couplers
       (.M_ACLK(microblaze_0_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(microblaze_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_0_axi_periph_to_s00_couplers_WVALID));
  shell_xbar_2 xbar
       (.aclk(microblaze_0_axi_periph_ACLK_net),
        .aresetn(microblaze_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule