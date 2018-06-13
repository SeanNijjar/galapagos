// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_pseudoHeaderConstruction (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_tcpTupleFifo_V_dout,
        txEng_tcpTupleFifo_V_empty_n,
        txEng_tcpTupleFifo_V_read,
        txEng_tcpMetaFifo_V_dout,
        txEng_tcpMetaFifo_V_empty_n,
        txEng_tcpMetaFifo_V_read,
        txEng_tcpHeaderBuffer_V_din,
        txEng_tcpHeaderBuffer_V_full_n,
        txEng_tcpHeaderBuffer_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_3 = 3'b11;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv73_10F00000000B4050402 = 73'b1000011110000000000000000000000000000000010110100000001010000010000000010;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_4F = 32'b1001111;
parameter    ap_const_lv32_50 = 32'b1010000;
parameter    ap_const_lv32_5F = 32'b1011111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_60 = 32'b1100000;
parameter    ap_const_lv32_61 = 32'b1100001;
parameter    ap_const_lv32_62 = 32'b1100010;
parameter    ap_const_lv32_63 = 32'b1100011;
parameter    ap_const_lv4_6 = 4'b110;
parameter    ap_const_lv4_5 = 4'b101;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv40_FF00000000 = 40'b1111111100000000000000000000000000000000;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv9_FF = 9'b11111111;
parameter    ap_const_lv16_14 = 16'b10100;
parameter    ap_const_lv16_600 = 16'b11000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [95:0] txEng_tcpTupleFifo_V_dout;
input   txEng_tcpTupleFifo_V_empty_n;
output   txEng_tcpTupleFifo_V_read;
input  [99:0] txEng_tcpMetaFifo_V_dout;
input   txEng_tcpMetaFifo_V_empty_n;
output   txEng_tcpMetaFifo_V_read;
output  [72:0] txEng_tcpHeaderBuffer_V_din;
input   txEng_tcpHeaderBuffer_V_full_n;
output   txEng_tcpHeaderBuffer_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_tcpTupleFifo_V_read;
reg txEng_tcpMetaFifo_V_read;
reg[72:0] txEng_tcpHeaderBuffer_V_din;
reg txEng_tcpHeaderBuffer_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [2:0] phc_currWord_V_load_load_fu_227_p1;
wire   [0:0] tmp_nbreadreq_fu_190_p3;
wire   [0:0] tmp_54_nbreadreq_fu_198_p3;
reg    ap_sig_bdd_64;
reg   [2:0] phc_currWord_V_load_reg_649;
reg   [0:0] tmp_reg_659;
reg   [0:0] tmp_54_reg_663;
reg    ap_sig_bdd_98;
reg   [2:0] phc_currWord_V = 3'b000;
reg   [15:0] phc_meta_length_V = 16'b0000000000000000;
reg   [0:0] phc_meta_syn_V = 1'b0;
reg   [15:0] phc_tuple_srcPort_V = 16'b0000000000000000;
reg   [15:0] phc_tuple_dstPort_V = 16'b0000000000000000;
reg   [31:0] phc_meta_seqNumb_V = 32'b00000000000000000000000000000000;
reg   [31:0] phc_meta_ackNumb_V = 32'b00000000000000000000000000000000;
reg   [15:0] phc_meta_window_size_V = 16'b0000000000000000;
reg   [0:0] phc_meta_ack_V = 1'b0;
reg   [0:0] phc_meta_rst_V = 1'b0;
reg   [0:0] phc_meta_fin_V = 1'b0;
reg   [0:0] phc_meta_syn_V_load_reg_653;
reg   [15:0] tmp_length_V_load_new_reg_667;
wire   [63:0] tmp_203_fu_407_p1;
reg   [63:0] tmp_203_reg_672;
wire   [72:0] tmp_5_fu_464_p13;
wire   [72:0] tmp_4_fu_568_p10;
wire   [72:0] tmp_3_fu_619_p7;
wire   [72:0] tmp_2_fu_641_p3;
wire   [2:0] tmp_140_s_fu_241_p3;
wire   [31:0] tmp_198_fu_299_p1;
wire   [0:0] tmp_last_V_fu_458_p2;
wire   [7:0] tmp_197_fu_454_p1;
wire   [7:0] p_Result_2_fu_444_p4;
wire   [3:0] tmp_56_cast_cast_cast_fu_421_p3;
wire   [7:0] tmp_196_fu_564_p1;
wire   [7:0] p_Result_5_fu_554_p4;
wire   [7:0] p_Result_4_fu_544_p4;
wire   [7:0] p_Result_3_fu_534_p4;
wire   [7:0] tmp_195_fu_526_p1;
wire   [7:0] p_Result_1_fu_516_p4;
wire   [7:0] p_Result_9_fu_506_p4;
wire   [7:0] p_Result_8_fu_496_p4;
wire   [15:0] length_V_fu_591_p2;
wire   [7:0] tmp_194_fu_607_p1;
wire   [7:0] p_Result_s_fu_597_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_105;
reg    ap_sig_bdd_93;
reg    ap_sig_bdd_135;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_105) begin
        if (ap_sig_bdd_52) begin
            phc_currWord_V <= ap_const_lv3_1;
        end else if ((phc_currWord_V_load_load_fu_227_p1 == ap_const_lv3_1)) begin
            phc_currWord_V <= ap_const_lv3_2;
        end else if ((phc_currWord_V_load_load_fu_227_p1 == ap_const_lv3_2)) begin
            phc_currWord_V <= ap_const_lv3_3;
        end else if ((phc_currWord_V_load_load_fu_227_p1 == ap_const_lv3_3)) begin
            phc_currWord_V <= tmp_140_s_fu_241_p3;
        end else if ((phc_currWord_V_load_load_fu_227_p1 == ap_const_lv3_4)) begin
            phc_currWord_V <= ap_const_lv3_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        phc_currWord_V_load_reg_649 <= phc_currWord_V;
        phc_meta_syn_V_load_reg_653 <= phc_meta_syn_V;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        phc_meta_ackNumb_V <= {{txEng_tcpMetaFifo_V_dout[ap_const_lv32_3F : ap_const_lv32_20]}};
        phc_meta_ack_V <= txEng_tcpMetaFifo_V_dout[ap_const_lv32_60];
        phc_meta_fin_V <= txEng_tcpMetaFifo_V_dout[ap_const_lv32_63];
        phc_meta_rst_V <= txEng_tcpMetaFifo_V_dout[ap_const_lv32_61];
        phc_meta_seqNumb_V <= tmp_198_fu_299_p1;
        phc_meta_syn_V <= txEng_tcpMetaFifo_V_dout[ap_const_lv32_62];
        phc_meta_window_size_V <= {{txEng_tcpMetaFifo_V_dout[ap_const_lv32_4F : ap_const_lv32_40]}};
        phc_tuple_dstPort_V <= {{txEng_tcpTupleFifo_V_dout[ap_const_lv32_5F : ap_const_lv32_50]}};
        phc_tuple_srcPort_V <= {{txEng_tcpTupleFifo_V_dout[ap_const_lv32_4F : ap_const_lv32_40]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_0 == phc_currWord_V_load_reg_649) & ~(ap_const_lv1_0 == tmp_reg_659) & ~(ap_const_lv1_0 == tmp_54_reg_663) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        phc_meta_length_V <= tmp_length_V_load_new_reg_667;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_203_reg_672 <= tmp_203_fu_407_p1;
        tmp_length_V_load_new_reg_667 <= {{txEng_tcpMetaFifo_V_dout[ap_const_lv32_5F : ap_const_lv32_50]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_54_reg_663 <= tmp_54_nbreadreq_fu_198_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_659 <= tmp_nbreadreq_fu_190_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_64 or ap_sig_bdd_98)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_64 or ap_sig_bdd_98)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// txEng_tcpHeaderBuffer_V_din assign process. ///
always @ (phc_currWord_V_load_reg_649 or tmp_5_fu_464_p13 or tmp_4_fu_568_p10 or tmp_3_fu_619_p7 or tmp_2_fu_641_p3 or ap_sig_bdd_93 or ap_sig_bdd_135)
begin
    if (ap_sig_bdd_135) begin
        if (ap_sig_bdd_93) begin
            txEng_tcpHeaderBuffer_V_din = tmp_2_fu_641_p3;
        end else if ((phc_currWord_V_load_reg_649 == ap_const_lv3_1)) begin
            txEng_tcpHeaderBuffer_V_din = tmp_3_fu_619_p7;
        end else if ((phc_currWord_V_load_reg_649 == ap_const_lv3_2)) begin
            txEng_tcpHeaderBuffer_V_din = tmp_4_fu_568_p10;
        end else if ((phc_currWord_V_load_reg_649 == ap_const_lv3_3)) begin
            txEng_tcpHeaderBuffer_V_din = tmp_5_fu_464_p13;
        end else if ((phc_currWord_V_load_reg_649 == ap_const_lv3_4)) begin
            txEng_tcpHeaderBuffer_V_din = ap_const_lv73_10F00000000B4050402;
        end else begin
            txEng_tcpHeaderBuffer_V_din = 'bx;
        end
    end else begin
        txEng_tcpHeaderBuffer_V_din = 'bx;
    end
end

/// txEng_tcpHeaderBuffer_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_64 or phc_currWord_V_load_reg_649 or tmp_reg_659 or tmp_54_reg_663 or ap_sig_bdd_98)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_4) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_3) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_0 == phc_currWord_V_load_reg_649) & ~(ap_const_lv1_0 == tmp_reg_659) & ~(ap_const_lv1_0 == tmp_54_reg_663) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_tcpHeaderBuffer_V_write = ap_const_logic_1;
    end else begin
        txEng_tcpHeaderBuffer_V_write = ap_const_logic_0;
    end
end

/// txEng_tcpMetaFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_190_p3 or tmp_54_nbreadreq_fu_198_p3 or ap_sig_bdd_64 or ap_sig_bdd_98 or phc_currWord_V)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txEng_tcpMetaFifo_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpMetaFifo_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpTupleFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_190_p3 or tmp_54_nbreadreq_fu_198_p3 or ap_sig_bdd_64 or ap_sig_bdd_98 or phc_currWord_V)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txEng_tcpTupleFifo_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpTupleFifo_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_64 or ap_sig_bdd_98 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_105 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_64 or ap_sig_bdd_98)
begin
    ap_sig_bdd_105 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_135 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_64 or ap_sig_bdd_98)
begin
    ap_sig_bdd_135 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_64) | (ap_sig_bdd_98 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_52 assign process. ///
always @ (tmp_nbreadreq_fu_190_p3 or tmp_54_nbreadreq_fu_198_p3 or phc_currWord_V)
begin
    ap_sig_bdd_52 = ((phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3));
end

/// ap_sig_bdd_64 assign process. ///
always @ (ap_start or ap_done_reg or txEng_tcpTupleFifo_V_empty_n or tmp_nbreadreq_fu_190_p3 or tmp_54_nbreadreq_fu_198_p3 or txEng_tcpMetaFifo_V_empty_n or phc_currWord_V)
begin
    ap_sig_bdd_64 = (((txEng_tcpTupleFifo_V_empty_n == ap_const_logic_0) & (phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3)) | ((phc_currWord_V == ap_const_lv3_0) & ~(tmp_nbreadreq_fu_190_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_54_nbreadreq_fu_198_p3) & (txEng_tcpMetaFifo_V_empty_n == ap_const_logic_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_93 assign process. ///
always @ (phc_currWord_V_load_reg_649 or tmp_reg_659 or tmp_54_reg_663)
begin
    ap_sig_bdd_93 = ((ap_const_lv3_0 == phc_currWord_V_load_reg_649) & ~(ap_const_lv1_0 == tmp_reg_659) & ~(ap_const_lv1_0 == tmp_54_reg_663));
end

/// ap_sig_bdd_98 assign process. ///
always @ (txEng_tcpHeaderBuffer_V_full_n or phc_currWord_V_load_reg_649 or tmp_reg_659 or tmp_54_reg_663)
begin
    ap_sig_bdd_98 = (((txEng_tcpHeaderBuffer_V_full_n == ap_const_logic_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_4)) | ((txEng_tcpHeaderBuffer_V_full_n == ap_const_logic_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_3)) | ((txEng_tcpHeaderBuffer_V_full_n == ap_const_logic_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_2)) | ((txEng_tcpHeaderBuffer_V_full_n == ap_const_logic_0) & (phc_currWord_V_load_reg_649 == ap_const_lv3_1)) | ((txEng_tcpHeaderBuffer_V_full_n == ap_const_logic_0) & (ap_const_lv3_0 == phc_currWord_V_load_reg_649) & ~(ap_const_lv1_0 == tmp_reg_659) & ~(ap_const_lv1_0 == tmp_54_reg_663)));
end
assign length_V_fu_591_p2 = (ap_const_lv16_14 + phc_meta_length_V);
assign p_Result_1_fu_516_p4 = {{phc_meta_seqNumb_V[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_2_fu_444_p4 = {{phc_meta_window_size_V[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_3_fu_534_p4 = {{phc_meta_ackNumb_V[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_4_fu_544_p4 = {{phc_meta_ackNumb_V[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_5_fu_554_p4 = {{phc_meta_ackNumb_V[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_8_fu_496_p4 = {{phc_meta_seqNumb_V[ap_const_lv32_1F : ap_const_lv32_18]}};
assign p_Result_9_fu_506_p4 = {{phc_meta_seqNumb_V[ap_const_lv32_17 : ap_const_lv32_10]}};
assign p_Result_s_fu_597_p4 = {{length_V_fu_591_p2[ap_const_lv32_F : ap_const_lv32_8]}};
assign phc_currWord_V_load_load_fu_227_p1 = phc_currWord_V;
assign tmp_140_s_fu_241_p3 = ((phc_meta_syn_V[0:0]===1'b1)? ap_const_lv3_4: ap_const_lv3_0);
assign tmp_194_fu_607_p1 = length_V_fu_591_p2[7:0];
assign tmp_195_fu_526_p1 = phc_meta_seqNumb_V[7:0];
assign tmp_196_fu_564_p1 = phc_meta_ackNumb_V[7:0];
assign tmp_197_fu_454_p1 = phc_meta_window_size_V[7:0];
assign tmp_198_fu_299_p1 = txEng_tcpMetaFifo_V_dout[31:0];
assign tmp_203_fu_407_p1 = txEng_tcpTupleFifo_V_dout[63:0];
assign tmp_2_fu_641_p3 = {{ap_const_lv9_FF}, {tmp_203_reg_672}};
assign tmp_3_fu_619_p7 = {{{{{{{{{{ap_const_lv9_FF}, {phc_tuple_dstPort_V}}}, {phc_tuple_srcPort_V}}}, {tmp_194_fu_607_p1}}}, {p_Result_s_fu_597_p4}}}, {ap_const_lv16_600}};
assign tmp_4_fu_568_p10 = {{{{{{{{{{{{{{{{ap_const_lv9_FF}, {tmp_196_fu_564_p1}}}, {p_Result_5_fu_554_p4}}}, {p_Result_4_fu_544_p4}}}, {p_Result_3_fu_534_p4}}}, {tmp_195_fu_526_p1}}}, {p_Result_1_fu_516_p4}}}, {p_Result_9_fu_506_p4}}}, {p_Result_8_fu_496_p4}};
assign tmp_54_nbreadreq_fu_198_p3 = txEng_tcpMetaFifo_V_empty_n;
assign tmp_56_cast_cast_cast_fu_421_p3 = ((phc_meta_syn_V_load_reg_653[0:0]===1'b1)? ap_const_lv4_6: ap_const_lv4_5);
assign tmp_5_fu_464_p13 = {{{{{{{{{{{{tmp_last_V_fu_458_p2}, {ap_const_lv40_FF00000000}}, {tmp_197_fu_454_p1}}, {p_Result_2_fu_444_p4}}, {ap_const_lv3_0}}, {phc_meta_ack_V}}, {ap_const_lv1_0}}, {phc_meta_rst_V}}, {phc_meta_syn_V_load_reg_653}}, {phc_meta_fin_V}}, {tmp_56_cast_cast_cast_fu_421_p3}}, {ap_const_lv4_0}};
assign tmp_last_V_fu_458_p2 = (phc_meta_length_V == ap_const_lv16_0? 1'b1: 1'b0);
assign tmp_nbreadreq_fu_190_p3 = txEng_tcpTupleFifo_V_empty_n;


endmodule //toe_pseudoHeaderConstruction
