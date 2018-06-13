// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_tx_compute_tcp_checksum (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_subChecksumsFifo_V_dout,
        txEng_subChecksumsFifo_V_empty_n,
        txEng_subChecksumsFifo_V_read,
        txEng_tcpChecksumFifo_V_V_din,
        txEng_tcpChecksumFifo_V_V_full_n,
        txEng_tcpChecksumFifo_V_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_21 = 32'b100001;
parameter    ap_const_lv32_22 = 32'b100010;
parameter    ap_const_lv32_32 = 32'b110010;
parameter    ap_const_lv32_33 = 32'b110011;
parameter    ap_const_lv32_43 = 32'b1000011;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv16_FFFF = 16'b1111111111111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [67:0] txEng_subChecksumsFifo_V_dout;
input   txEng_subChecksumsFifo_V_empty_n;
output   txEng_subChecksumsFifo_V_read;
output  [15:0] txEng_tcpChecksumFifo_V_V_din;
input   txEng_tcpChecksumFifo_V_V_full_n;
output   txEng_tcpChecksumFifo_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_subChecksumsFifo_V_read;
reg txEng_tcpChecksumFifo_V_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp44_nbreadreq_fu_60_p3;
reg    ap_sig_bdd_52;
reg   [0:0] tmp44_reg_210;
reg   [0:0] ap_reg_ppstg_tmp44_reg_210_pp0_it1;
reg    ap_sig_bdd_65;
reg   [0:0] tmp_329_reg_214;
wire   [15:0] tmp_331_fu_136_p1;
reg   [15:0] tmp_331_reg_219;
reg   [0:0] tmp_333_reg_224;
wire   [15:0] tmp_335_fu_148_p1;
reg   [15:0] tmp_335_reg_229;
wire   [15:0] tmp_340_fu_198_p2;
reg   [15:0] tmp_340_reg_234;
wire   [16:0] tmp_fu_82_p1;
wire   [16:0] tmp_sum2_V_load_new_fu_96_p4;
wire   [16:0] tmp_sum1_V_load_new_fu_86_p4;
wire   [16:0] tmp_sum3_V_load_new_fu_106_p4;
wire   [16:0] tmp_s_fu_116_p2;
wire   [16:0] tmp_86_fu_122_p2;
wire   [15:0] tmp_330_fu_152_p1;
wire   [15:0] tmp_332_fu_155_p2;
wire   [15:0] tmp_334_fu_164_p1;
wire   [15:0] tmp_336_fu_167_p2;
wire   [16:0] p_cast_fu_160_p1;
wire   [16:0] p_12_cast_fu_172_p1;
wire   [16:0] tmp_87_fu_176_p2;
wire   [0:0] tmp_337_fu_182_p3;
wire   [15:0] tmp_339_fu_194_p1;
wire   [15:0] tmp_338_fu_190_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;




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
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_reg_ppstg_tmp44_reg_210_pp0_it1 <= tmp44_reg_210;
        tmp44_reg_210 <= tmp44_nbreadreq_fu_60_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp44_nbreadreq_fu_60_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        tmp_329_reg_214 <= tmp_s_fu_116_p2[ap_const_lv32_10];
        tmp_331_reg_219 <= tmp_331_fu_136_p1;
        tmp_333_reg_224 <= tmp_86_fu_122_p2[ap_const_lv32_10];
        tmp_335_reg_229 <= tmp_335_fu_148_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp44_reg_210))) begin
        tmp_340_reg_234 <= tmp_340_fu_198_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_65)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_65)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
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
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// txEng_subChecksumsFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp44_nbreadreq_fu_60_p3 or ap_sig_bdd_52 or ap_sig_bdd_65)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp44_nbreadreq_fu_60_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txEng_subChecksumsFifo_V_read = ap_const_logic_1;
    end else begin
        txEng_subChecksumsFifo_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpChecksumFifo_V_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_reg_ppstg_tmp44_reg_210_pp0_it1 or ap_sig_bdd_65)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tmp44_reg_210_pp0_it1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_65 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        txEng_tcpChecksumFifo_V_V_write = ap_const_logic_1;
    end else begin
        txEng_tcpChecksumFifo_V_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_65 or ap_sig_pprstidle_pp0)
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

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_52 assign process. ///
always @ (ap_start or ap_done_reg or txEng_subChecksumsFifo_V_empty_n or tmp44_nbreadreq_fu_60_p3)
begin
    ap_sig_bdd_52 = (((txEng_subChecksumsFifo_V_empty_n == ap_const_logic_0) & ~(tmp44_nbreadreq_fu_60_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_65 assign process. ///
always @ (txEng_tcpChecksumFifo_V_V_full_n or ap_reg_ppstg_tmp44_reg_210_pp0_it1)
begin
    ap_sig_bdd_65 = ((txEng_tcpChecksumFifo_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp44_reg_210_pp0_it1));
end
assign p_12_cast_fu_172_p1 = tmp_336_fu_167_p2;
assign p_cast_fu_160_p1 = tmp_332_fu_155_p2;
assign tmp44_nbreadreq_fu_60_p3 = txEng_subChecksumsFifo_V_empty_n;
assign tmp_330_fu_152_p1 = tmp_329_reg_214;
assign tmp_331_fu_136_p1 = tmp_s_fu_116_p2[15:0];
assign tmp_332_fu_155_p2 = (tmp_331_reg_219 + tmp_330_fu_152_p1);
assign tmp_334_fu_164_p1 = tmp_333_reg_224;
assign tmp_335_fu_148_p1 = tmp_86_fu_122_p2[15:0];
assign tmp_336_fu_167_p2 = (tmp_335_reg_229 + tmp_334_fu_164_p1);
assign tmp_337_fu_182_p3 = tmp_87_fu_176_p2[ap_const_lv32_10];
assign tmp_338_fu_190_p1 = tmp_337_fu_182_p3;
assign tmp_339_fu_194_p1 = tmp_87_fu_176_p2[15:0];
assign tmp_340_fu_198_p2 = (tmp_339_fu_194_p1 + tmp_338_fu_190_p1);
assign tmp_86_fu_122_p2 = (tmp_sum1_V_load_new_fu_86_p4 + tmp_sum3_V_load_new_fu_106_p4);
assign tmp_87_fu_176_p2 = (p_cast_fu_160_p1 + p_12_cast_fu_172_p1);
assign tmp_fu_82_p1 = txEng_subChecksumsFifo_V_dout[16:0];
assign tmp_s_fu_116_p2 = (tmp_fu_82_p1 + tmp_sum2_V_load_new_fu_96_p4);
assign tmp_sum1_V_load_new_fu_86_p4 = {{txEng_subChecksumsFifo_V_dout[ap_const_lv32_21 : ap_const_lv32_11]}};
assign tmp_sum2_V_load_new_fu_96_p4 = {{txEng_subChecksumsFifo_V_dout[ap_const_lv32_32 : ap_const_lv32_22]}};
assign tmp_sum3_V_load_new_fu_106_p4 = {{txEng_subChecksumsFifo_V_dout[ap_const_lv32_43 : ap_const_lv32_33]}};
assign txEng_tcpChecksumFifo_V_V_din = (tmp_340_reg_234 ^ ap_const_lv16_FFFF);


endmodule //toe_tx_compute_tcp_checksum
