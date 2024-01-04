// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
parameter MM   = 'h 000a8 ,
parameter NN   = 'h 000d0 ,
parameter SUM_LEN        = 32,
    parameter BITS = 16
)(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [BITS-1:0] io_in,
    output [BITS-1:0] io_out,
    output [BITS-1:0] io_oeb,

    // IRQ
    output [2:0] irq
);


    ///////////////////////////////////////////////////////////////////

    ///////////////////LDPC wire////////////////////////////////////////////////
wire [NN-MM-1:0] y_nr_in_port;
wire [NN-1:0] y_nr;
wire  valid_cword;

    ///////////////////LDPC wire////////////////////////////////////////////////
wire  [NN-1:0] [1:0]           q0;
wire  [NN-1:0]                 tmp_bit;

wire  [MM-1:0]                 exp_syn;
wire  [31:0]                   percent_probability_int;
wire  [SUM_LEN-1:0]            HamDist_loop_max;
wire  [SUM_LEN-1:0]            HamDist_loop_percentage;

wire  [SUM_LEN-1:0]            HamDist_iir1;
wire  [SUM_LEN-1:0]            HamDist_iir2;
wire  [SUM_LEN-1:0]            HamDist_iir3;

 wire [1:0]                    converged;
 wire                          converged_valid;
 wire                          start;
 wire                          dec_valid;
 wire                          dec_valid_cword;

    wire i_wb_cyc ;
    wire i_wb_stb ;
    wire [31:0] reg_base_addr;
    ///////////////////LDPC wire////////////////////////////////////////////////

    assign reg_base_addr = 32'h3001_0000;
    assign i_wb_cyc = (wbs_adr_i[31:13]==reg_base_addr[31:13]) ? wbs_cyc_i : 1'b0;
    assign i_wb_stb = (wbs_adr_i[31:13]==reg_base_addr[31:13]) ? wbs_stb_i : 1'b0;

    /////////////////////////////////////////////////////////////////////////////
    //wire start/////
    //LDPC_inc.sv

wire o_LDPC_ENC_MSG_IN_0_msg_in;
wire o_LDPC_ENC_MSG_IN_1_msg_in;
wire o_LDPC_ENC_MSG_IN_2_msg_in;
wire o_LDPC_ENC_MSG_IN_3_msg_in;
wire o_LDPC_ENC_MSG_IN_4_msg_in;
wire o_LDPC_ENC_MSG_IN_5_msg_in;
wire o_LDPC_ENC_MSG_IN_6_msg_in;
wire o_LDPC_ENC_MSG_IN_7_msg_in;
wire o_LDPC_ENC_MSG_IN_8_msg_in;
wire o_LDPC_ENC_MSG_IN_9_msg_in;
wire o_LDPC_ENC_MSG_IN_10_msg_in;
wire o_LDPC_ENC_MSG_IN_11_msg_in;
wire o_LDPC_ENC_MSG_IN_12_msg_in;
wire o_LDPC_ENC_MSG_IN_13_msg_in;
wire o_LDPC_ENC_MSG_IN_14_msg_in;
wire o_LDPC_ENC_MSG_IN_15_msg_in;
wire o_LDPC_ENC_MSG_IN_16_msg_in;
wire o_LDPC_ENC_MSG_IN_17_msg_in;
wire o_LDPC_ENC_MSG_IN_18_msg_in;
wire o_LDPC_ENC_MSG_IN_19_msg_in;
wire o_LDPC_ENC_MSG_IN_20_msg_in;
wire o_LDPC_ENC_MSG_IN_21_msg_in;
wire o_LDPC_ENC_MSG_IN_22_msg_in;
wire o_LDPC_ENC_MSG_IN_23_msg_in;
wire o_LDPC_ENC_MSG_IN_24_msg_in;
wire o_LDPC_ENC_MSG_IN_25_msg_in;
wire o_LDPC_ENC_MSG_IN_26_msg_in;
wire o_LDPC_ENC_MSG_IN_27_msg_in;
wire o_LDPC_ENC_MSG_IN_28_msg_in;
wire o_LDPC_ENC_MSG_IN_29_msg_in;
wire o_LDPC_ENC_MSG_IN_30_msg_in;
wire o_LDPC_ENC_MSG_IN_31_msg_in;
wire o_LDPC_ENC_MSG_IN_32_msg_in;
wire o_LDPC_ENC_MSG_IN_33_msg_in;
wire o_LDPC_ENC_MSG_IN_34_msg_in;
wire o_LDPC_ENC_MSG_IN_35_msg_in;
wire o_LDPC_ENC_MSG_IN_36_msg_in;
wire o_LDPC_ENC_MSG_IN_37_msg_in;
wire o_LDPC_ENC_MSG_IN_38_msg_in;
wire o_LDPC_ENC_MSG_IN_39_msg_in;
wire i_LDPC_ENC_CODEWRD_0_enc_codeword;
wire i_LDPC_ENC_CODEWRD_1_enc_codeword;
wire i_LDPC_ENC_CODEWRD_2_enc_codeword;
wire i_LDPC_ENC_CODEWRD_3_enc_codeword;
wire i_LDPC_ENC_CODEWRD_4_enc_codeword;
wire i_LDPC_ENC_CODEWRD_5_enc_codeword;
wire i_LDPC_ENC_CODEWRD_6_enc_codeword;
wire i_LDPC_ENC_CODEWRD_7_enc_codeword;
wire i_LDPC_ENC_CODEWRD_8_enc_codeword;
wire i_LDPC_ENC_CODEWRD_9_enc_codeword;
wire i_LDPC_ENC_CODEWRD_10_enc_codeword;
wire i_LDPC_ENC_CODEWRD_11_enc_codeword;
wire i_LDPC_ENC_CODEWRD_12_enc_codeword;
wire i_LDPC_ENC_CODEWRD_13_enc_codeword;
wire i_LDPC_ENC_CODEWRD_14_enc_codeword;
wire i_LDPC_ENC_CODEWRD_15_enc_codeword;
wire i_LDPC_ENC_CODEWRD_16_enc_codeword;
wire i_LDPC_ENC_CODEWRD_17_enc_codeword;
wire i_LDPC_ENC_CODEWRD_18_enc_codeword;
wire i_LDPC_ENC_CODEWRD_19_enc_codeword;
wire i_LDPC_ENC_CODEWRD_20_enc_codeword;
wire i_LDPC_ENC_CODEWRD_21_enc_codeword;
wire i_LDPC_ENC_CODEWRD_22_enc_codeword;
wire i_LDPC_ENC_CODEWRD_23_enc_codeword;
wire i_LDPC_ENC_CODEWRD_24_enc_codeword;
wire i_LDPC_ENC_CODEWRD_25_enc_codeword;
wire i_LDPC_ENC_CODEWRD_26_enc_codeword;
wire i_LDPC_ENC_CODEWRD_27_enc_codeword;
wire i_LDPC_ENC_CODEWRD_28_enc_codeword;
wire i_LDPC_ENC_CODEWRD_29_enc_codeword;
wire i_LDPC_ENC_CODEWRD_30_enc_codeword;
wire i_LDPC_ENC_CODEWRD_31_enc_codeword;
wire i_LDPC_ENC_CODEWRD_32_enc_codeword;
wire i_LDPC_ENC_CODEWRD_33_enc_codeword;
wire i_LDPC_ENC_CODEWRD_34_enc_codeword;
wire i_LDPC_ENC_CODEWRD_35_enc_codeword;
wire i_LDPC_ENC_CODEWRD_36_enc_codeword;
wire i_LDPC_ENC_CODEWRD_37_enc_codeword;
wire i_LDPC_ENC_CODEWRD_38_enc_codeword;
wire i_LDPC_ENC_CODEWRD_39_enc_codeword;
wire i_LDPC_ENC_CODEWRD_40_enc_codeword;
wire i_LDPC_ENC_CODEWRD_41_enc_codeword;
wire i_LDPC_ENC_CODEWRD_42_enc_codeword;
wire i_LDPC_ENC_CODEWRD_43_enc_codeword;
wire i_LDPC_ENC_CODEWRD_44_enc_codeword;
wire i_LDPC_ENC_CODEWRD_45_enc_codeword;
wire i_LDPC_ENC_CODEWRD_46_enc_codeword;
wire i_LDPC_ENC_CODEWRD_47_enc_codeword;
wire i_LDPC_ENC_CODEWRD_48_enc_codeword;
wire i_LDPC_ENC_CODEWRD_49_enc_codeword;
wire i_LDPC_ENC_CODEWRD_50_enc_codeword;
wire i_LDPC_ENC_CODEWRD_51_enc_codeword;
wire i_LDPC_ENC_CODEWRD_52_enc_codeword;
wire i_LDPC_ENC_CODEWRD_53_enc_codeword;
wire i_LDPC_ENC_CODEWRD_54_enc_codeword;
wire i_LDPC_ENC_CODEWRD_55_enc_codeword;
wire i_LDPC_ENC_CODEWRD_56_enc_codeword;
wire i_LDPC_ENC_CODEWRD_57_enc_codeword;
wire i_LDPC_ENC_CODEWRD_58_enc_codeword;
wire i_LDPC_ENC_CODEWRD_59_enc_codeword;
wire i_LDPC_ENC_CODEWRD_60_enc_codeword;
wire i_LDPC_ENC_CODEWRD_61_enc_codeword;
wire i_LDPC_ENC_CODEWRD_62_enc_codeword;
wire i_LDPC_ENC_CODEWRD_63_enc_codeword;
wire i_LDPC_ENC_CODEWRD_64_enc_codeword;
wire i_LDPC_ENC_CODEWRD_65_enc_codeword;
wire i_LDPC_ENC_CODEWRD_66_enc_codeword;
wire i_LDPC_ENC_CODEWRD_67_enc_codeword;
wire i_LDPC_ENC_CODEWRD_68_enc_codeword;
wire i_LDPC_ENC_CODEWRD_69_enc_codeword;
wire i_LDPC_ENC_CODEWRD_70_enc_codeword;
wire i_LDPC_ENC_CODEWRD_71_enc_codeword;
wire i_LDPC_ENC_CODEWRD_72_enc_codeword;
wire i_LDPC_ENC_CODEWRD_73_enc_codeword;
wire i_LDPC_ENC_CODEWRD_74_enc_codeword;
wire i_LDPC_ENC_CODEWRD_75_enc_codeword;
wire i_LDPC_ENC_CODEWRD_76_enc_codeword;
wire i_LDPC_ENC_CODEWRD_77_enc_codeword;
wire i_LDPC_ENC_CODEWRD_78_enc_codeword;
wire i_LDPC_ENC_CODEWRD_79_enc_codeword;
wire i_LDPC_ENC_CODEWRD_80_enc_codeword;
wire i_LDPC_ENC_CODEWRD_81_enc_codeword;
wire i_LDPC_ENC_CODEWRD_82_enc_codeword;
wire i_LDPC_ENC_CODEWRD_83_enc_codeword;
wire i_LDPC_ENC_CODEWRD_84_enc_codeword;
wire i_LDPC_ENC_CODEWRD_85_enc_codeword;
wire i_LDPC_ENC_CODEWRD_86_enc_codeword;
wire i_LDPC_ENC_CODEWRD_87_enc_codeword;
wire i_LDPC_ENC_CODEWRD_88_enc_codeword;
wire i_LDPC_ENC_CODEWRD_89_enc_codeword;
wire i_LDPC_ENC_CODEWRD_90_enc_codeword;
wire i_LDPC_ENC_CODEWRD_91_enc_codeword;
wire i_LDPC_ENC_CODEWRD_92_enc_codeword;
wire i_LDPC_ENC_CODEWRD_93_enc_codeword;
wire i_LDPC_ENC_CODEWRD_94_enc_codeword;
wire i_LDPC_ENC_CODEWRD_95_enc_codeword;
wire i_LDPC_ENC_CODEWRD_96_enc_codeword;
wire i_LDPC_ENC_CODEWRD_97_enc_codeword;
wire i_LDPC_ENC_CODEWRD_98_enc_codeword;
wire i_LDPC_ENC_CODEWRD_99_enc_codeword;
wire i_LDPC_ENC_CODEWRD_100_enc_codeword;
wire i_LDPC_ENC_CODEWRD_101_enc_codeword;
wire i_LDPC_ENC_CODEWRD_102_enc_codeword;
wire i_LDPC_ENC_CODEWRD_103_enc_codeword;
wire i_LDPC_ENC_CODEWRD_104_enc_codeword;
wire i_LDPC_ENC_CODEWRD_105_enc_codeword;
wire i_LDPC_ENC_CODEWRD_106_enc_codeword;
wire i_LDPC_ENC_CODEWRD_107_enc_codeword;
wire i_LDPC_ENC_CODEWRD_108_enc_codeword;
wire i_LDPC_ENC_CODEWRD_109_enc_codeword;
wire i_LDPC_ENC_CODEWRD_110_enc_codeword;
wire i_LDPC_ENC_CODEWRD_111_enc_codeword;
wire i_LDPC_ENC_CODEWRD_112_enc_codeword;
wire i_LDPC_ENC_CODEWRD_113_enc_codeword;
wire i_LDPC_ENC_CODEWRD_114_enc_codeword;
wire i_LDPC_ENC_CODEWRD_115_enc_codeword;
wire i_LDPC_ENC_CODEWRD_116_enc_codeword;
wire i_LDPC_ENC_CODEWRD_117_enc_codeword;
wire i_LDPC_ENC_CODEWRD_118_enc_codeword;
wire i_LDPC_ENC_CODEWRD_119_enc_codeword;
wire i_LDPC_ENC_CODEWRD_120_enc_codeword;
wire i_LDPC_ENC_CODEWRD_121_enc_codeword;
wire i_LDPC_ENC_CODEWRD_122_enc_codeword;
wire i_LDPC_ENC_CODEWRD_123_enc_codeword;
wire i_LDPC_ENC_CODEWRD_124_enc_codeword;
wire i_LDPC_ENC_CODEWRD_125_enc_codeword;
wire i_LDPC_ENC_CODEWRD_126_enc_codeword;
wire i_LDPC_ENC_CODEWRD_127_enc_codeword;
wire i_LDPC_ENC_CODEWRD_128_enc_codeword;
wire i_LDPC_ENC_CODEWRD_129_enc_codeword;
wire i_LDPC_ENC_CODEWRD_130_enc_codeword;
wire i_LDPC_ENC_CODEWRD_131_enc_codeword;
wire i_LDPC_ENC_CODEWRD_132_enc_codeword;
wire i_LDPC_ENC_CODEWRD_133_enc_codeword;
wire i_LDPC_ENC_CODEWRD_134_enc_codeword;
wire i_LDPC_ENC_CODEWRD_135_enc_codeword;
wire i_LDPC_ENC_CODEWRD_136_enc_codeword;
wire i_LDPC_ENC_CODEWRD_137_enc_codeword;
wire i_LDPC_ENC_CODEWRD_138_enc_codeword;
wire i_LDPC_ENC_CODEWRD_139_enc_codeword;
wire i_LDPC_ENC_CODEWRD_140_enc_codeword;
wire i_LDPC_ENC_CODEWRD_141_enc_codeword;
wire i_LDPC_ENC_CODEWRD_142_enc_codeword;
wire i_LDPC_ENC_CODEWRD_143_enc_codeword;
wire i_LDPC_ENC_CODEWRD_144_enc_codeword;
wire i_LDPC_ENC_CODEWRD_145_enc_codeword;
wire i_LDPC_ENC_CODEWRD_146_enc_codeword;
wire i_LDPC_ENC_CODEWRD_147_enc_codeword;
wire i_LDPC_ENC_CODEWRD_148_enc_codeword;
wire i_LDPC_ENC_CODEWRD_149_enc_codeword;
wire i_LDPC_ENC_CODEWRD_150_enc_codeword;
wire i_LDPC_ENC_CODEWRD_151_enc_codeword;
wire i_LDPC_ENC_CODEWRD_152_enc_codeword;
wire i_LDPC_ENC_CODEWRD_153_enc_codeword;
wire i_LDPC_ENC_CODEWRD_154_enc_codeword;
wire i_LDPC_ENC_CODEWRD_155_enc_codeword;
wire i_LDPC_ENC_CODEWRD_156_enc_codeword;
wire i_LDPC_ENC_CODEWRD_157_enc_codeword;
wire i_LDPC_ENC_CODEWRD_158_enc_codeword;
wire i_LDPC_ENC_CODEWRD_159_enc_codeword;
wire i_LDPC_ENC_CODEWRD_160_enc_codeword;
wire i_LDPC_ENC_CODEWRD_161_enc_codeword;
wire i_LDPC_ENC_CODEWRD_162_enc_codeword;
wire i_LDPC_ENC_CODEWRD_163_enc_codeword;
wire i_LDPC_ENC_CODEWRD_164_enc_codeword;
wire i_LDPC_ENC_CODEWRD_165_enc_codeword;
wire i_LDPC_ENC_CODEWRD_166_enc_codeword;
wire i_LDPC_ENC_CODEWRD_167_enc_codeword;
wire i_LDPC_ENC_CODEWRD_168_enc_codeword;
wire i_LDPC_ENC_CODEWRD_169_enc_codeword;
wire i_LDPC_ENC_CODEWRD_170_enc_codeword;
wire i_LDPC_ENC_CODEWRD_171_enc_codeword;
wire i_LDPC_ENC_CODEWRD_172_enc_codeword;
wire i_LDPC_ENC_CODEWRD_173_enc_codeword;
wire i_LDPC_ENC_CODEWRD_174_enc_codeword;
wire i_LDPC_ENC_CODEWRD_175_enc_codeword;
wire i_LDPC_ENC_CODEWRD_176_enc_codeword;
wire i_LDPC_ENC_CODEWRD_177_enc_codeword;
wire i_LDPC_ENC_CODEWRD_178_enc_codeword;
wire i_LDPC_ENC_CODEWRD_179_enc_codeword;
wire i_LDPC_ENC_CODEWRD_180_enc_codeword;
wire i_LDPC_ENC_CODEWRD_181_enc_codeword;
wire i_LDPC_ENC_CODEWRD_182_enc_codeword;
wire i_LDPC_ENC_CODEWRD_183_enc_codeword;
wire i_LDPC_ENC_CODEWRD_184_enc_codeword;
wire i_LDPC_ENC_CODEWRD_185_enc_codeword;
wire i_LDPC_ENC_CODEWRD_186_enc_codeword;
wire i_LDPC_ENC_CODEWRD_187_enc_codeword;
wire i_LDPC_ENC_CODEWRD_188_enc_codeword;
wire i_LDPC_ENC_CODEWRD_189_enc_codeword;
wire i_LDPC_ENC_CODEWRD_190_enc_codeword;
wire i_LDPC_ENC_CODEWRD_191_enc_codeword;
wire i_LDPC_ENC_CODEWRD_192_enc_codeword;
wire i_LDPC_ENC_CODEWRD_193_enc_codeword;
wire i_LDPC_ENC_CODEWRD_194_enc_codeword;
wire i_LDPC_ENC_CODEWRD_195_enc_codeword;
wire i_LDPC_ENC_CODEWRD_196_enc_codeword;
wire i_LDPC_ENC_CODEWRD_197_enc_codeword;
wire i_LDPC_ENC_CODEWRD_198_enc_codeword;
wire i_LDPC_ENC_CODEWRD_199_enc_codeword;
wire i_LDPC_ENC_CODEWRD_200_enc_codeword;
wire i_LDPC_ENC_CODEWRD_201_enc_codeword;
wire i_LDPC_ENC_CODEWRD_202_enc_codeword;
wire i_LDPC_ENC_CODEWRD_203_enc_codeword;
wire i_LDPC_ENC_CODEWRD_204_enc_codeword;
wire i_LDPC_ENC_CODEWRD_205_enc_codeword;
wire i_LDPC_ENC_CODEWRD_206_enc_codeword;
wire i_LDPC_ENC_CODEWRD_207_enc_codeword;
wire i_LDPC_ENC_CODEWRD_VLD_enc_codeword_valid;
wire [1:0] o_LDPC_DEC_CODEWRD_0_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_1_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_2_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_3_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_4_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_5_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_6_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_7_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_8_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_9_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_10_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_11_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_12_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_13_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_14_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_15_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_16_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_17_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_18_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_19_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_20_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_21_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_22_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_23_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_24_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_25_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_26_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_27_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_28_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_29_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_30_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_31_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_32_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_33_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_34_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_35_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_36_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_37_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_38_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_39_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_40_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_41_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_42_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_43_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_44_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_45_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_46_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_47_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_48_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_49_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_50_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_51_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_52_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_53_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_54_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_55_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_56_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_57_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_58_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_59_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_60_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_61_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_62_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_63_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_64_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_65_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_66_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_67_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_68_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_69_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_70_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_71_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_72_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_73_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_74_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_75_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_76_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_77_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_78_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_79_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_80_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_81_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_82_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_83_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_84_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_85_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_86_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_87_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_88_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_89_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_90_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_91_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_92_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_93_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_94_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_95_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_96_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_97_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_98_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_99_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_100_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_101_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_102_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_103_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_104_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_105_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_106_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_107_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_108_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_109_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_110_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_111_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_112_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_113_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_114_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_115_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_116_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_117_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_118_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_119_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_120_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_121_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_122_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_123_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_124_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_125_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_126_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_127_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_128_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_129_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_130_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_131_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_132_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_133_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_134_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_135_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_136_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_137_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_138_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_139_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_140_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_141_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_142_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_143_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_144_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_145_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_146_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_147_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_148_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_149_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_150_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_151_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_152_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_153_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_154_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_155_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_156_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_157_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_158_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_159_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_160_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_161_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_162_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_163_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_164_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_165_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_166_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_167_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_168_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_169_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_170_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_171_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_172_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_173_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_174_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_175_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_176_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_177_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_178_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_179_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_180_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_181_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_182_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_183_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_184_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_185_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_186_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_187_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_188_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_189_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_190_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_191_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_192_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_193_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_194_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_195_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_196_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_197_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_198_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_199_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_200_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_201_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_202_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_203_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_204_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_205_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_206_cword_q0;
wire [1:0] o_LDPC_DEC_CODEWRD_207_cword_q0;
wire o_LDPC_DEC_EXPSYND_0_exp_syn;
wire o_LDPC_DEC_EXPSYND_1_exp_syn;
wire o_LDPC_DEC_EXPSYND_2_exp_syn;
wire o_LDPC_DEC_EXPSYND_3_exp_syn;
wire o_LDPC_DEC_EXPSYND_4_exp_syn;
wire o_LDPC_DEC_EXPSYND_5_exp_syn;
wire o_LDPC_DEC_EXPSYND_6_exp_syn;
wire o_LDPC_DEC_EXPSYND_7_exp_syn;
wire o_LDPC_DEC_EXPSYND_8_exp_syn;
wire o_LDPC_DEC_EXPSYND_9_exp_syn;
wire o_LDPC_DEC_EXPSYND_10_exp_syn;
wire o_LDPC_DEC_EXPSYND_11_exp_syn;
wire o_LDPC_DEC_EXPSYND_12_exp_syn;
wire o_LDPC_DEC_EXPSYND_13_exp_syn;
wire o_LDPC_DEC_EXPSYND_14_exp_syn;
wire o_LDPC_DEC_EXPSYND_15_exp_syn;
wire o_LDPC_DEC_EXPSYND_16_exp_syn;
wire o_LDPC_DEC_EXPSYND_17_exp_syn;
wire o_LDPC_DEC_EXPSYND_18_exp_syn;
wire o_LDPC_DEC_EXPSYND_19_exp_syn;
wire o_LDPC_DEC_EXPSYND_20_exp_syn;
wire o_LDPC_DEC_EXPSYND_21_exp_syn;
wire o_LDPC_DEC_EXPSYND_22_exp_syn;
wire o_LDPC_DEC_EXPSYND_23_exp_syn;
wire o_LDPC_DEC_EXPSYND_24_exp_syn;
wire o_LDPC_DEC_EXPSYND_25_exp_syn;
wire o_LDPC_DEC_EXPSYND_26_exp_syn;
wire o_LDPC_DEC_EXPSYND_27_exp_syn;
wire o_LDPC_DEC_EXPSYND_28_exp_syn;
wire o_LDPC_DEC_EXPSYND_29_exp_syn;
wire o_LDPC_DEC_EXPSYND_30_exp_syn;
wire o_LDPC_DEC_EXPSYND_31_exp_syn;
wire o_LDPC_DEC_EXPSYND_32_exp_syn;
wire o_LDPC_DEC_EXPSYND_33_exp_syn;
wire o_LDPC_DEC_EXPSYND_34_exp_syn;
wire o_LDPC_DEC_EXPSYND_35_exp_syn;
wire o_LDPC_DEC_EXPSYND_36_exp_syn;
wire o_LDPC_DEC_EXPSYND_37_exp_syn;
wire o_LDPC_DEC_EXPSYND_38_exp_syn;
wire o_LDPC_DEC_EXPSYND_39_exp_syn;
wire o_LDPC_DEC_EXPSYND_40_exp_syn;
wire o_LDPC_DEC_EXPSYND_41_exp_syn;
wire o_LDPC_DEC_EXPSYND_42_exp_syn;
wire o_LDPC_DEC_EXPSYND_43_exp_syn;
wire o_LDPC_DEC_EXPSYND_44_exp_syn;
wire o_LDPC_DEC_EXPSYND_45_exp_syn;
wire o_LDPC_DEC_EXPSYND_46_exp_syn;
wire o_LDPC_DEC_EXPSYND_47_exp_syn;
wire o_LDPC_DEC_EXPSYND_48_exp_syn;
wire o_LDPC_DEC_EXPSYND_49_exp_syn;
wire o_LDPC_DEC_EXPSYND_50_exp_syn;
wire o_LDPC_DEC_EXPSYND_51_exp_syn;
wire o_LDPC_DEC_EXPSYND_52_exp_syn;
wire o_LDPC_DEC_EXPSYND_53_exp_syn;
wire o_LDPC_DEC_EXPSYND_54_exp_syn;
wire o_LDPC_DEC_EXPSYND_55_exp_syn;
wire o_LDPC_DEC_EXPSYND_56_exp_syn;
wire o_LDPC_DEC_EXPSYND_57_exp_syn;
wire o_LDPC_DEC_EXPSYND_58_exp_syn;
wire o_LDPC_DEC_EXPSYND_59_exp_syn;
wire o_LDPC_DEC_EXPSYND_60_exp_syn;
wire o_LDPC_DEC_EXPSYND_61_exp_syn;
wire o_LDPC_DEC_EXPSYND_62_exp_syn;
wire o_LDPC_DEC_EXPSYND_63_exp_syn;
wire o_LDPC_DEC_EXPSYND_64_exp_syn;
wire o_LDPC_DEC_EXPSYND_65_exp_syn;
wire o_LDPC_DEC_EXPSYND_66_exp_syn;
wire o_LDPC_DEC_EXPSYND_67_exp_syn;
wire o_LDPC_DEC_EXPSYND_68_exp_syn;
wire o_LDPC_DEC_EXPSYND_69_exp_syn;
wire o_LDPC_DEC_EXPSYND_70_exp_syn;
wire o_LDPC_DEC_EXPSYND_71_exp_syn;
wire o_LDPC_DEC_EXPSYND_72_exp_syn;
wire o_LDPC_DEC_EXPSYND_73_exp_syn;
wire o_LDPC_DEC_EXPSYND_74_exp_syn;
wire o_LDPC_DEC_EXPSYND_75_exp_syn;
wire o_LDPC_DEC_EXPSYND_76_exp_syn;
wire o_LDPC_DEC_EXPSYND_77_exp_syn;
wire o_LDPC_DEC_EXPSYND_78_exp_syn;
wire o_LDPC_DEC_EXPSYND_79_exp_syn;
wire o_LDPC_DEC_EXPSYND_80_exp_syn;
wire o_LDPC_DEC_EXPSYND_81_exp_syn;
wire o_LDPC_DEC_EXPSYND_82_exp_syn;
wire o_LDPC_DEC_EXPSYND_83_exp_syn;
wire o_LDPC_DEC_EXPSYND_84_exp_syn;
wire o_LDPC_DEC_EXPSYND_85_exp_syn;
wire o_LDPC_DEC_EXPSYND_86_exp_syn;
wire o_LDPC_DEC_EXPSYND_87_exp_syn;
wire o_LDPC_DEC_EXPSYND_88_exp_syn;
wire o_LDPC_DEC_EXPSYND_89_exp_syn;
wire o_LDPC_DEC_EXPSYND_90_exp_syn;
wire o_LDPC_DEC_EXPSYND_91_exp_syn;
wire o_LDPC_DEC_EXPSYND_92_exp_syn;
wire o_LDPC_DEC_EXPSYND_93_exp_syn;
wire o_LDPC_DEC_EXPSYND_94_exp_syn;
wire o_LDPC_DEC_EXPSYND_95_exp_syn;
wire o_LDPC_DEC_EXPSYND_96_exp_syn;
wire o_LDPC_DEC_EXPSYND_97_exp_syn;
wire o_LDPC_DEC_EXPSYND_98_exp_syn;
wire o_LDPC_DEC_EXPSYND_99_exp_syn;
wire o_LDPC_DEC_EXPSYND_100_exp_syn;
wire o_LDPC_DEC_EXPSYND_101_exp_syn;
wire o_LDPC_DEC_EXPSYND_102_exp_syn;
wire o_LDPC_DEC_EXPSYND_103_exp_syn;
wire o_LDPC_DEC_EXPSYND_104_exp_syn;
wire o_LDPC_DEC_EXPSYND_105_exp_syn;
wire o_LDPC_DEC_EXPSYND_106_exp_syn;
wire o_LDPC_DEC_EXPSYND_107_exp_syn;
wire o_LDPC_DEC_EXPSYND_108_exp_syn;
wire o_LDPC_DEC_EXPSYND_109_exp_syn;
wire o_LDPC_DEC_EXPSYND_110_exp_syn;
wire o_LDPC_DEC_EXPSYND_111_exp_syn;
wire o_LDPC_DEC_EXPSYND_112_exp_syn;
wire o_LDPC_DEC_EXPSYND_113_exp_syn;
wire o_LDPC_DEC_EXPSYND_114_exp_syn;
wire o_LDPC_DEC_EXPSYND_115_exp_syn;
wire o_LDPC_DEC_EXPSYND_116_exp_syn;
wire o_LDPC_DEC_EXPSYND_117_exp_syn;
wire o_LDPC_DEC_EXPSYND_118_exp_syn;
wire o_LDPC_DEC_EXPSYND_119_exp_syn;
wire o_LDPC_DEC_EXPSYND_120_exp_syn;
wire o_LDPC_DEC_EXPSYND_121_exp_syn;
wire o_LDPC_DEC_EXPSYND_122_exp_syn;
wire o_LDPC_DEC_EXPSYND_123_exp_syn;
wire o_LDPC_DEC_EXPSYND_124_exp_syn;
wire o_LDPC_DEC_EXPSYND_125_exp_syn;
wire o_LDPC_DEC_EXPSYND_126_exp_syn;
wire o_LDPC_DEC_EXPSYND_127_exp_syn;
wire o_LDPC_DEC_EXPSYND_128_exp_syn;
wire o_LDPC_DEC_EXPSYND_129_exp_syn;
wire o_LDPC_DEC_EXPSYND_130_exp_syn;
wire o_LDPC_DEC_EXPSYND_131_exp_syn;
wire o_LDPC_DEC_EXPSYND_132_exp_syn;
wire o_LDPC_DEC_EXPSYND_133_exp_syn;
wire o_LDPC_DEC_EXPSYND_134_exp_syn;
wire o_LDPC_DEC_EXPSYND_135_exp_syn;
wire o_LDPC_DEC_EXPSYND_136_exp_syn;
wire o_LDPC_DEC_EXPSYND_137_exp_syn;
wire o_LDPC_DEC_EXPSYND_138_exp_syn;
wire o_LDPC_DEC_EXPSYND_139_exp_syn;
wire o_LDPC_DEC_EXPSYND_140_exp_syn;
wire o_LDPC_DEC_EXPSYND_141_exp_syn;
wire o_LDPC_DEC_EXPSYND_142_exp_syn;
wire o_LDPC_DEC_EXPSYND_143_exp_syn;
wire o_LDPC_DEC_EXPSYND_144_exp_syn;
wire o_LDPC_DEC_EXPSYND_145_exp_syn;
wire o_LDPC_DEC_EXPSYND_146_exp_syn;
wire o_LDPC_DEC_EXPSYND_147_exp_syn;
wire o_LDPC_DEC_EXPSYND_148_exp_syn;
wire o_LDPC_DEC_EXPSYND_149_exp_syn;
wire o_LDPC_DEC_EXPSYND_150_exp_syn;
wire o_LDPC_DEC_EXPSYND_151_exp_syn;
wire o_LDPC_DEC_EXPSYND_152_exp_syn;
wire o_LDPC_DEC_EXPSYND_153_exp_syn;
wire o_LDPC_DEC_EXPSYND_154_exp_syn;
wire o_LDPC_DEC_EXPSYND_155_exp_syn;
wire o_LDPC_DEC_EXPSYND_156_exp_syn;
wire o_LDPC_DEC_EXPSYND_157_exp_syn;
wire o_LDPC_DEC_EXPSYND_158_exp_syn;
wire o_LDPC_DEC_EXPSYND_159_exp_syn;
wire o_LDPC_DEC_EXPSYND_160_exp_syn;
wire o_LDPC_DEC_EXPSYND_161_exp_syn;
wire o_LDPC_DEC_EXPSYND_162_exp_syn;
wire o_LDPC_DEC_EXPSYND_163_exp_syn;
wire o_LDPC_DEC_EXPSYND_164_exp_syn;
wire o_LDPC_DEC_EXPSYND_165_exp_syn;
wire o_LDPC_DEC_EXPSYND_166_exp_syn;
wire o_LDPC_DEC_EXPSYND_167_exp_syn;
wire [31:0] o_LDPC_DEC_PROBABILITY_perc_probability;
wire [31:0] o_LDPC_DEC_HamDist_loop_max_HamDist_loop_max;
wire [31:0] o_LDPC_DEC_HamDist_loop_percentage_HamDist_loop_percentage;
wire [31:0] o_LDPC_DEC_HamDist_iir1_HamDist_iir1;
wire [31:0] o_LDPC_DEC_HamDist_iir2_NOT_USED_HamDist_iir2;
wire [31:0] o_LDPC_DEC_HamDist_iir3_NOT_USED_HamDist_iir3;
wire i_LDPC_DEC_converged_valid_NOT_USED_convered_valid;
wire i_LDPC_DEC_valid_NOT_USED_dec_valid;
wire i_LDPC_DEC_valid_codeword_NOT_USED_dec_valid_cword;
wire o_LDPC_DEC_start_start;
wire i_LDPC_DEC_converged_valid_convered_vld;
wire i_LDPC_DEC_converged_status_convered_stat;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_0_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_1_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_2_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_3_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_4_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_5_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_6_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_7_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_8_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_9_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_10_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_11_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_12_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_13_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_14_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_15_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_16_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_17_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_18_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_19_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_20_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_21_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_22_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_23_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_24_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_25_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_26_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_27_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_28_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_29_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_30_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_31_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_32_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_33_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_34_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_35_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_36_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_37_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_38_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_39_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_40_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_41_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_42_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_43_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_44_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_45_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_46_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_47_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_48_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_49_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_50_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_51_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_52_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_53_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_54_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_55_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_56_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_57_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_58_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_59_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_60_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_61_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_62_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_63_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_64_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_65_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_66_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_67_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_68_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_69_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_70_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_71_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_72_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_73_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_74_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_75_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_76_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_77_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_78_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_79_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_80_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_81_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_82_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_83_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_84_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_85_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_86_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_87_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_88_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_89_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_90_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_91_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_92_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_93_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_94_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_95_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_96_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_97_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_98_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_99_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_100_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_101_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_102_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_103_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_104_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_105_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_106_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_107_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_108_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_109_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_110_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_111_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_112_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_113_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_114_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_115_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_116_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_117_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_118_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_119_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_120_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_121_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_122_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_123_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_124_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_125_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_126_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_127_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_128_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_129_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_130_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_131_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_132_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_133_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_134_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_135_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_136_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_137_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_138_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_139_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_140_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_141_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_142_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_143_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_144_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_145_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_146_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_147_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_148_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_149_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_150_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_151_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_152_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_153_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_154_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_155_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_156_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_157_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_158_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_159_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_160_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_161_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_162_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_163_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_164_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_165_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_166_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_167_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_168_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_169_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_170_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_171_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_172_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_173_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_174_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_175_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_176_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_177_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_178_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_179_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_180_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_181_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_182_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_183_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_184_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_185_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_186_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_187_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_188_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_189_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_190_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_191_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_192_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_193_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_194_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_195_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_196_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_197_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_198_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_199_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_200_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_201_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_202_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_203_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_204_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_205_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_206_final_cword;
wire i_LDPC_DEC_CODEWRD_OUT_BIT_207_final_cword;
    //wire end/////
    /////////////////////////////////////////////////////////////////////////////
    //assign start
    // LDPC_assign.sv
assign y_nr_in_port[   0] =  o_LDPC_ENC_MSG_IN_0_msg_in;
assign y_nr_in_port[   1] =  o_LDPC_ENC_MSG_IN_1_msg_in;
assign y_nr_in_port[   2] =  o_LDPC_ENC_MSG_IN_2_msg_in;
assign y_nr_in_port[   3] =  o_LDPC_ENC_MSG_IN_3_msg_in;
assign y_nr_in_port[   4] =  o_LDPC_ENC_MSG_IN_4_msg_in;
assign y_nr_in_port[   5] =  o_LDPC_ENC_MSG_IN_5_msg_in;
assign y_nr_in_port[   6] =  o_LDPC_ENC_MSG_IN_6_msg_in;
assign y_nr_in_port[   7] =  o_LDPC_ENC_MSG_IN_7_msg_in;
assign y_nr_in_port[   8] =  o_LDPC_ENC_MSG_IN_8_msg_in;
assign y_nr_in_port[   9] =  o_LDPC_ENC_MSG_IN_9_msg_in;
assign y_nr_in_port[   10] =  o_LDPC_ENC_MSG_IN_10_msg_in;
assign y_nr_in_port[   11] =  o_LDPC_ENC_MSG_IN_11_msg_in;
assign y_nr_in_port[   12] =  o_LDPC_ENC_MSG_IN_12_msg_in;
assign y_nr_in_port[   13] =  o_LDPC_ENC_MSG_IN_13_msg_in;
assign y_nr_in_port[   14] =  o_LDPC_ENC_MSG_IN_14_msg_in;
assign y_nr_in_port[   15] =  o_LDPC_ENC_MSG_IN_15_msg_in;
assign y_nr_in_port[   16] =  o_LDPC_ENC_MSG_IN_16_msg_in;
assign y_nr_in_port[   17] =  o_LDPC_ENC_MSG_IN_17_msg_in;
assign y_nr_in_port[   18] =  o_LDPC_ENC_MSG_IN_18_msg_in;
assign y_nr_in_port[   19] =  o_LDPC_ENC_MSG_IN_19_msg_in;
assign y_nr_in_port[   20] =  o_LDPC_ENC_MSG_IN_20_msg_in;
assign y_nr_in_port[   21] =  o_LDPC_ENC_MSG_IN_21_msg_in;
assign y_nr_in_port[   22] =  o_LDPC_ENC_MSG_IN_22_msg_in;
assign y_nr_in_port[   23] =  o_LDPC_ENC_MSG_IN_23_msg_in;
assign y_nr_in_port[   24] =  o_LDPC_ENC_MSG_IN_24_msg_in;
assign y_nr_in_port[   25] =  o_LDPC_ENC_MSG_IN_25_msg_in;
assign y_nr_in_port[   26] =  o_LDPC_ENC_MSG_IN_26_msg_in;
assign y_nr_in_port[   27] =  o_LDPC_ENC_MSG_IN_27_msg_in;
assign y_nr_in_port[   28] =  o_LDPC_ENC_MSG_IN_28_msg_in;
assign y_nr_in_port[   29] =  o_LDPC_ENC_MSG_IN_29_msg_in;
assign y_nr_in_port[   30] =  o_LDPC_ENC_MSG_IN_30_msg_in;
assign y_nr_in_port[   31] =  o_LDPC_ENC_MSG_IN_31_msg_in;
assign y_nr_in_port[   32] =  o_LDPC_ENC_MSG_IN_32_msg_in;
assign y_nr_in_port[   33] =  o_LDPC_ENC_MSG_IN_33_msg_in;
assign y_nr_in_port[   34] =  o_LDPC_ENC_MSG_IN_34_msg_in;
assign y_nr_in_port[   35] =  o_LDPC_ENC_MSG_IN_35_msg_in;
assign y_nr_in_port[   36] =  o_LDPC_ENC_MSG_IN_36_msg_in;
assign y_nr_in_port[   37] =  o_LDPC_ENC_MSG_IN_37_msg_in;
assign y_nr_in_port[   38] =  o_LDPC_ENC_MSG_IN_38_msg_in;
assign y_nr_in_port[   39] =  o_LDPC_ENC_MSG_IN_39_msg_in;
assign i_LDPC_ENC_CODEWRD_0_enc_codeword = y_nr[   0] ;
assign i_LDPC_ENC_CODEWRD_1_enc_codeword = y_nr[   1] ;
assign i_LDPC_ENC_CODEWRD_2_enc_codeword = y_nr[   2] ;
assign i_LDPC_ENC_CODEWRD_3_enc_codeword = y_nr[   3] ;
assign i_LDPC_ENC_CODEWRD_4_enc_codeword = y_nr[   4] ;
assign i_LDPC_ENC_CODEWRD_5_enc_codeword = y_nr[   5] ;
assign i_LDPC_ENC_CODEWRD_6_enc_codeword = y_nr[   6] ;
assign i_LDPC_ENC_CODEWRD_7_enc_codeword = y_nr[   7] ;
assign i_LDPC_ENC_CODEWRD_8_enc_codeword = y_nr[   8] ;
assign i_LDPC_ENC_CODEWRD_9_enc_codeword = y_nr[   9] ;
assign i_LDPC_ENC_CODEWRD_10_enc_codeword = y_nr[   10] ;
assign i_LDPC_ENC_CODEWRD_11_enc_codeword = y_nr[   11] ;
assign i_LDPC_ENC_CODEWRD_12_enc_codeword = y_nr[   12] ;
assign i_LDPC_ENC_CODEWRD_13_enc_codeword = y_nr[   13] ;
assign i_LDPC_ENC_CODEWRD_14_enc_codeword = y_nr[   14] ;
assign i_LDPC_ENC_CODEWRD_15_enc_codeword = y_nr[   15] ;
assign i_LDPC_ENC_CODEWRD_16_enc_codeword = y_nr[   16] ;
assign i_LDPC_ENC_CODEWRD_17_enc_codeword = y_nr[   17] ;
assign i_LDPC_ENC_CODEWRD_18_enc_codeword = y_nr[   18] ;
assign i_LDPC_ENC_CODEWRD_19_enc_codeword = y_nr[   19] ;
assign i_LDPC_ENC_CODEWRD_20_enc_codeword = y_nr[   20] ;
assign i_LDPC_ENC_CODEWRD_21_enc_codeword = y_nr[   21] ;
assign i_LDPC_ENC_CODEWRD_22_enc_codeword = y_nr[   22] ;
assign i_LDPC_ENC_CODEWRD_23_enc_codeword = y_nr[   23] ;
assign i_LDPC_ENC_CODEWRD_24_enc_codeword = y_nr[   24] ;
assign i_LDPC_ENC_CODEWRD_25_enc_codeword = y_nr[   25] ;
assign i_LDPC_ENC_CODEWRD_26_enc_codeword = y_nr[   26] ;
assign i_LDPC_ENC_CODEWRD_27_enc_codeword = y_nr[   27] ;
assign i_LDPC_ENC_CODEWRD_28_enc_codeword = y_nr[   28] ;
assign i_LDPC_ENC_CODEWRD_29_enc_codeword = y_nr[   29] ;
assign i_LDPC_ENC_CODEWRD_30_enc_codeword = y_nr[   30] ;
assign i_LDPC_ENC_CODEWRD_31_enc_codeword = y_nr[   31] ;
assign i_LDPC_ENC_CODEWRD_32_enc_codeword = y_nr[   32] ;
assign i_LDPC_ENC_CODEWRD_33_enc_codeword = y_nr[   33] ;
assign i_LDPC_ENC_CODEWRD_34_enc_codeword = y_nr[   34] ;
assign i_LDPC_ENC_CODEWRD_35_enc_codeword = y_nr[   35] ;
assign i_LDPC_ENC_CODEWRD_36_enc_codeword = y_nr[   36] ;
assign i_LDPC_ENC_CODEWRD_37_enc_codeword = y_nr[   37] ;
assign i_LDPC_ENC_CODEWRD_38_enc_codeword = y_nr[   38] ;
assign i_LDPC_ENC_CODEWRD_39_enc_codeword = y_nr[   39] ;
assign i_LDPC_ENC_CODEWRD_40_enc_codeword = y_nr[   40] ;
assign i_LDPC_ENC_CODEWRD_41_enc_codeword = y_nr[   41] ;
assign i_LDPC_ENC_CODEWRD_42_enc_codeword = y_nr[   42] ;
assign i_LDPC_ENC_CODEWRD_43_enc_codeword = y_nr[   43] ;
assign i_LDPC_ENC_CODEWRD_44_enc_codeword = y_nr[   44] ;
assign i_LDPC_ENC_CODEWRD_45_enc_codeword = y_nr[   45] ;
assign i_LDPC_ENC_CODEWRD_46_enc_codeword = y_nr[   46] ;
assign i_LDPC_ENC_CODEWRD_47_enc_codeword = y_nr[   47] ;
assign i_LDPC_ENC_CODEWRD_48_enc_codeword = y_nr[   48] ;
assign i_LDPC_ENC_CODEWRD_49_enc_codeword = y_nr[   49] ;
assign i_LDPC_ENC_CODEWRD_50_enc_codeword = y_nr[   50] ;
assign i_LDPC_ENC_CODEWRD_51_enc_codeword = y_nr[   51] ;
assign i_LDPC_ENC_CODEWRD_52_enc_codeword = y_nr[   52] ;
assign i_LDPC_ENC_CODEWRD_53_enc_codeword = y_nr[   53] ;
assign i_LDPC_ENC_CODEWRD_54_enc_codeword = y_nr[   54] ;
assign i_LDPC_ENC_CODEWRD_55_enc_codeword = y_nr[   55] ;
assign i_LDPC_ENC_CODEWRD_56_enc_codeword = y_nr[   56] ;
assign i_LDPC_ENC_CODEWRD_57_enc_codeword = y_nr[   57] ;
assign i_LDPC_ENC_CODEWRD_58_enc_codeword = y_nr[   58] ;
assign i_LDPC_ENC_CODEWRD_59_enc_codeword = y_nr[   59] ;
assign i_LDPC_ENC_CODEWRD_60_enc_codeword = y_nr[   60] ;
assign i_LDPC_ENC_CODEWRD_61_enc_codeword = y_nr[   61] ;
assign i_LDPC_ENC_CODEWRD_62_enc_codeword = y_nr[   62] ;
assign i_LDPC_ENC_CODEWRD_63_enc_codeword = y_nr[   63] ;
assign i_LDPC_ENC_CODEWRD_64_enc_codeword = y_nr[   64] ;
assign i_LDPC_ENC_CODEWRD_65_enc_codeword = y_nr[   65] ;
assign i_LDPC_ENC_CODEWRD_66_enc_codeword = y_nr[   66] ;
assign i_LDPC_ENC_CODEWRD_67_enc_codeword = y_nr[   67] ;
assign i_LDPC_ENC_CODEWRD_68_enc_codeword = y_nr[   68] ;
assign i_LDPC_ENC_CODEWRD_69_enc_codeword = y_nr[   69] ;
assign i_LDPC_ENC_CODEWRD_70_enc_codeword = y_nr[   70] ;
assign i_LDPC_ENC_CODEWRD_71_enc_codeword = y_nr[   71] ;
assign i_LDPC_ENC_CODEWRD_72_enc_codeword = y_nr[   72] ;
assign i_LDPC_ENC_CODEWRD_73_enc_codeword = y_nr[   73] ;
assign i_LDPC_ENC_CODEWRD_74_enc_codeword = y_nr[   74] ;
assign i_LDPC_ENC_CODEWRD_75_enc_codeword = y_nr[   75] ;
assign i_LDPC_ENC_CODEWRD_76_enc_codeword = y_nr[   76] ;
assign i_LDPC_ENC_CODEWRD_77_enc_codeword = y_nr[   77] ;
assign i_LDPC_ENC_CODEWRD_78_enc_codeword = y_nr[   78] ;
assign i_LDPC_ENC_CODEWRD_79_enc_codeword = y_nr[   79] ;
assign i_LDPC_ENC_CODEWRD_80_enc_codeword = y_nr[   80] ;
assign i_LDPC_ENC_CODEWRD_81_enc_codeword = y_nr[   81] ;
assign i_LDPC_ENC_CODEWRD_82_enc_codeword = y_nr[   82] ;
assign i_LDPC_ENC_CODEWRD_83_enc_codeword = y_nr[   83] ;
assign i_LDPC_ENC_CODEWRD_84_enc_codeword = y_nr[   84] ;
assign i_LDPC_ENC_CODEWRD_85_enc_codeword = y_nr[   85] ;
assign i_LDPC_ENC_CODEWRD_86_enc_codeword = y_nr[   86] ;
assign i_LDPC_ENC_CODEWRD_87_enc_codeword = y_nr[   87] ;
assign i_LDPC_ENC_CODEWRD_88_enc_codeword = y_nr[   88] ;
assign i_LDPC_ENC_CODEWRD_89_enc_codeword = y_nr[   89] ;
assign i_LDPC_ENC_CODEWRD_90_enc_codeword = y_nr[   90] ;
assign i_LDPC_ENC_CODEWRD_91_enc_codeword = y_nr[   91] ;
assign i_LDPC_ENC_CODEWRD_92_enc_codeword = y_nr[   92] ;
assign i_LDPC_ENC_CODEWRD_93_enc_codeword = y_nr[   93] ;
assign i_LDPC_ENC_CODEWRD_94_enc_codeword = y_nr[   94] ;
assign i_LDPC_ENC_CODEWRD_95_enc_codeword = y_nr[   95] ;
assign i_LDPC_ENC_CODEWRD_96_enc_codeword = y_nr[   96] ;
assign i_LDPC_ENC_CODEWRD_97_enc_codeword = y_nr[   97] ;
assign i_LDPC_ENC_CODEWRD_98_enc_codeword = y_nr[   98] ;
assign i_LDPC_ENC_CODEWRD_99_enc_codeword = y_nr[   99] ;
assign i_LDPC_ENC_CODEWRD_100_enc_codeword = y_nr[   100] ;
assign i_LDPC_ENC_CODEWRD_101_enc_codeword = y_nr[   101] ;
assign i_LDPC_ENC_CODEWRD_102_enc_codeword = y_nr[   102] ;
assign i_LDPC_ENC_CODEWRD_103_enc_codeword = y_nr[   103] ;
assign i_LDPC_ENC_CODEWRD_104_enc_codeword = y_nr[   104] ;
assign i_LDPC_ENC_CODEWRD_105_enc_codeword = y_nr[   105] ;
assign i_LDPC_ENC_CODEWRD_106_enc_codeword = y_nr[   106] ;
assign i_LDPC_ENC_CODEWRD_107_enc_codeword = y_nr[   107] ;
assign i_LDPC_ENC_CODEWRD_108_enc_codeword = y_nr[   108] ;
assign i_LDPC_ENC_CODEWRD_109_enc_codeword = y_nr[   109] ;
assign i_LDPC_ENC_CODEWRD_110_enc_codeword = y_nr[   110] ;
assign i_LDPC_ENC_CODEWRD_111_enc_codeword = y_nr[   111] ;
assign i_LDPC_ENC_CODEWRD_112_enc_codeword = y_nr[   112] ;
assign i_LDPC_ENC_CODEWRD_113_enc_codeword = y_nr[   113] ;
assign i_LDPC_ENC_CODEWRD_114_enc_codeword = y_nr[   114] ;
assign i_LDPC_ENC_CODEWRD_115_enc_codeword = y_nr[   115] ;
assign i_LDPC_ENC_CODEWRD_116_enc_codeword = y_nr[   116] ;
assign i_LDPC_ENC_CODEWRD_117_enc_codeword = y_nr[   117] ;
assign i_LDPC_ENC_CODEWRD_118_enc_codeword = y_nr[   118] ;
assign i_LDPC_ENC_CODEWRD_119_enc_codeword = y_nr[   119] ;
assign i_LDPC_ENC_CODEWRD_120_enc_codeword = y_nr[   120] ;
assign i_LDPC_ENC_CODEWRD_121_enc_codeword = y_nr[   121] ;
assign i_LDPC_ENC_CODEWRD_122_enc_codeword = y_nr[   122] ;
assign i_LDPC_ENC_CODEWRD_123_enc_codeword = y_nr[   123] ;
assign i_LDPC_ENC_CODEWRD_124_enc_codeword = y_nr[   124] ;
assign i_LDPC_ENC_CODEWRD_125_enc_codeword = y_nr[   125] ;
assign i_LDPC_ENC_CODEWRD_126_enc_codeword = y_nr[   126] ;
assign i_LDPC_ENC_CODEWRD_127_enc_codeword = y_nr[   127] ;
assign i_LDPC_ENC_CODEWRD_128_enc_codeword = y_nr[   128] ;
assign i_LDPC_ENC_CODEWRD_129_enc_codeword = y_nr[   129] ;
assign i_LDPC_ENC_CODEWRD_130_enc_codeword = y_nr[   130] ;
assign i_LDPC_ENC_CODEWRD_131_enc_codeword = y_nr[   131] ;
assign i_LDPC_ENC_CODEWRD_132_enc_codeword = y_nr[   132] ;
assign i_LDPC_ENC_CODEWRD_133_enc_codeword = y_nr[   133] ;
assign i_LDPC_ENC_CODEWRD_134_enc_codeword = y_nr[   134] ;
assign i_LDPC_ENC_CODEWRD_135_enc_codeword = y_nr[   135] ;
assign i_LDPC_ENC_CODEWRD_136_enc_codeword = y_nr[   136] ;
assign i_LDPC_ENC_CODEWRD_137_enc_codeword = y_nr[   137] ;
assign i_LDPC_ENC_CODEWRD_138_enc_codeword = y_nr[   138] ;
assign i_LDPC_ENC_CODEWRD_139_enc_codeword = y_nr[   139] ;
assign i_LDPC_ENC_CODEWRD_140_enc_codeword = y_nr[   140] ;
assign i_LDPC_ENC_CODEWRD_141_enc_codeword = y_nr[   141] ;
assign i_LDPC_ENC_CODEWRD_142_enc_codeword = y_nr[   142] ;
assign i_LDPC_ENC_CODEWRD_143_enc_codeword = y_nr[   143] ;
assign i_LDPC_ENC_CODEWRD_144_enc_codeword = y_nr[   144] ;
assign i_LDPC_ENC_CODEWRD_145_enc_codeword = y_nr[   145] ;
assign i_LDPC_ENC_CODEWRD_146_enc_codeword = y_nr[   146] ;
assign i_LDPC_ENC_CODEWRD_147_enc_codeword = y_nr[   147] ;
assign i_LDPC_ENC_CODEWRD_148_enc_codeword = y_nr[   148] ;
assign i_LDPC_ENC_CODEWRD_149_enc_codeword = y_nr[   149] ;
assign i_LDPC_ENC_CODEWRD_150_enc_codeword = y_nr[   150] ;
assign i_LDPC_ENC_CODEWRD_151_enc_codeword = y_nr[   151] ;
assign i_LDPC_ENC_CODEWRD_152_enc_codeword = y_nr[   152] ;
assign i_LDPC_ENC_CODEWRD_153_enc_codeword = y_nr[   153] ;
assign i_LDPC_ENC_CODEWRD_154_enc_codeword = y_nr[   154] ;
assign i_LDPC_ENC_CODEWRD_155_enc_codeword = y_nr[   155] ;
assign i_LDPC_ENC_CODEWRD_156_enc_codeword = y_nr[   156] ;
assign i_LDPC_ENC_CODEWRD_157_enc_codeword = y_nr[   157] ;
assign i_LDPC_ENC_CODEWRD_158_enc_codeword = y_nr[   158] ;
assign i_LDPC_ENC_CODEWRD_159_enc_codeword = y_nr[   159] ;
assign i_LDPC_ENC_CODEWRD_160_enc_codeword = y_nr[   160] ;
assign i_LDPC_ENC_CODEWRD_161_enc_codeword = y_nr[   161] ;
assign i_LDPC_ENC_CODEWRD_162_enc_codeword = y_nr[   162] ;
assign i_LDPC_ENC_CODEWRD_163_enc_codeword = y_nr[   163] ;
assign i_LDPC_ENC_CODEWRD_164_enc_codeword = y_nr[   164] ;
assign i_LDPC_ENC_CODEWRD_165_enc_codeword = y_nr[   165] ;
assign i_LDPC_ENC_CODEWRD_166_enc_codeword = y_nr[   166] ;
assign i_LDPC_ENC_CODEWRD_167_enc_codeword = y_nr[   167] ;
assign i_LDPC_ENC_CODEWRD_168_enc_codeword = y_nr[   168] ;
assign i_LDPC_ENC_CODEWRD_169_enc_codeword = y_nr[   169] ;
assign i_LDPC_ENC_CODEWRD_170_enc_codeword = y_nr[   170] ;
assign i_LDPC_ENC_CODEWRD_171_enc_codeword = y_nr[   171] ;
assign i_LDPC_ENC_CODEWRD_172_enc_codeword = y_nr[   172] ;
assign i_LDPC_ENC_CODEWRD_173_enc_codeword = y_nr[   173] ;
assign i_LDPC_ENC_CODEWRD_174_enc_codeword = y_nr[   174] ;
assign i_LDPC_ENC_CODEWRD_175_enc_codeword = y_nr[   175] ;
assign i_LDPC_ENC_CODEWRD_176_enc_codeword = y_nr[   176] ;
assign i_LDPC_ENC_CODEWRD_177_enc_codeword = y_nr[   177] ;
assign i_LDPC_ENC_CODEWRD_178_enc_codeword = y_nr[   178] ;
assign i_LDPC_ENC_CODEWRD_179_enc_codeword = y_nr[   179] ;
assign i_LDPC_ENC_CODEWRD_180_enc_codeword = y_nr[   180] ;
assign i_LDPC_ENC_CODEWRD_181_enc_codeword = y_nr[   181] ;
assign i_LDPC_ENC_CODEWRD_182_enc_codeword = y_nr[   182] ;
assign i_LDPC_ENC_CODEWRD_183_enc_codeword = y_nr[   183] ;
assign i_LDPC_ENC_CODEWRD_184_enc_codeword = y_nr[   184] ;
assign i_LDPC_ENC_CODEWRD_185_enc_codeword = y_nr[   185] ;
assign i_LDPC_ENC_CODEWRD_186_enc_codeword = y_nr[   186] ;
assign i_LDPC_ENC_CODEWRD_187_enc_codeword = y_nr[   187] ;
assign i_LDPC_ENC_CODEWRD_188_enc_codeword = y_nr[   188] ;
assign i_LDPC_ENC_CODEWRD_189_enc_codeword = y_nr[   189] ;
assign i_LDPC_ENC_CODEWRD_190_enc_codeword = y_nr[   190] ;
assign i_LDPC_ENC_CODEWRD_191_enc_codeword = y_nr[   191] ;
assign i_LDPC_ENC_CODEWRD_192_enc_codeword = y_nr[   192] ;
assign i_LDPC_ENC_CODEWRD_193_enc_codeword = y_nr[   193] ;
assign i_LDPC_ENC_CODEWRD_194_enc_codeword = y_nr[   194] ;
assign i_LDPC_ENC_CODEWRD_195_enc_codeword = y_nr[   195] ;
assign i_LDPC_ENC_CODEWRD_196_enc_codeword = y_nr[   196] ;
assign i_LDPC_ENC_CODEWRD_197_enc_codeword = y_nr[   197] ;
assign i_LDPC_ENC_CODEWRD_198_enc_codeword = y_nr[   198] ;
assign i_LDPC_ENC_CODEWRD_199_enc_codeword = y_nr[   199] ;
assign i_LDPC_ENC_CODEWRD_200_enc_codeword = y_nr[   200] ;
assign i_LDPC_ENC_CODEWRD_201_enc_codeword = y_nr[   201] ;
assign i_LDPC_ENC_CODEWRD_202_enc_codeword = y_nr[   202] ;
assign i_LDPC_ENC_CODEWRD_203_enc_codeword = y_nr[   203] ;
assign i_LDPC_ENC_CODEWRD_204_enc_codeword = y_nr[   204] ;
assign i_LDPC_ENC_CODEWRD_205_enc_codeword = y_nr[   205] ;
assign i_LDPC_ENC_CODEWRD_206_enc_codeword = y_nr[   206] ;
assign i_LDPC_ENC_CODEWRD_207_enc_codeword = y_nr[   207] ;
assign i_LDPC_ENC_CODEWRD_VLD_enc_codeword_valid =  valid_cword;
assign q0[   0] =  o_LDPC_DEC_CODEWRD_0_cword_q0 ;
assign q0[   1] =  o_LDPC_DEC_CODEWRD_1_cword_q0 ;
assign q0[   2] =  o_LDPC_DEC_CODEWRD_2_cword_q0 ;
assign q0[   3] =  o_LDPC_DEC_CODEWRD_3_cword_q0 ;
assign q0[   4] =  o_LDPC_DEC_CODEWRD_4_cword_q0 ;
assign q0[   5] =  o_LDPC_DEC_CODEWRD_5_cword_q0 ;
assign q0[   6] =  o_LDPC_DEC_CODEWRD_6_cword_q0 ;
assign q0[   7] =  o_LDPC_DEC_CODEWRD_7_cword_q0 ;
assign q0[   8] =  o_LDPC_DEC_CODEWRD_8_cword_q0 ;
assign q0[   9] =  o_LDPC_DEC_CODEWRD_9_cword_q0 ;
assign q0[   10] =  o_LDPC_DEC_CODEWRD_10_cword_q0 ;
assign q0[   11] =  o_LDPC_DEC_CODEWRD_11_cword_q0 ;
assign q0[   12] =  o_LDPC_DEC_CODEWRD_12_cword_q0 ;
assign q0[   13] =  o_LDPC_DEC_CODEWRD_13_cword_q0 ;
assign q0[   14] =  o_LDPC_DEC_CODEWRD_14_cword_q0 ;
assign q0[   15] =  o_LDPC_DEC_CODEWRD_15_cword_q0 ;
assign q0[   16] =  o_LDPC_DEC_CODEWRD_16_cword_q0 ;
assign q0[   17] =  o_LDPC_DEC_CODEWRD_17_cword_q0 ;
assign q0[   18] =  o_LDPC_DEC_CODEWRD_18_cword_q0 ;
assign q0[   19] =  o_LDPC_DEC_CODEWRD_19_cword_q0 ;
assign q0[   20] =  o_LDPC_DEC_CODEWRD_20_cword_q0 ;
assign q0[   21] =  o_LDPC_DEC_CODEWRD_21_cword_q0 ;
assign q0[   22] =  o_LDPC_DEC_CODEWRD_22_cword_q0 ;
assign q0[   23] =  o_LDPC_DEC_CODEWRD_23_cword_q0 ;
assign q0[   24] =  o_LDPC_DEC_CODEWRD_24_cword_q0 ;
assign q0[   25] =  o_LDPC_DEC_CODEWRD_25_cword_q0 ;
assign q0[   26] =  o_LDPC_DEC_CODEWRD_26_cword_q0 ;
assign q0[   27] =  o_LDPC_DEC_CODEWRD_27_cword_q0 ;
assign q0[   28] =  o_LDPC_DEC_CODEWRD_28_cword_q0 ;
assign q0[   29] =  o_LDPC_DEC_CODEWRD_29_cword_q0 ;
assign q0[   30] =  o_LDPC_DEC_CODEWRD_30_cword_q0 ;
assign q0[   31] =  o_LDPC_DEC_CODEWRD_31_cword_q0 ;
assign q0[   32] =  o_LDPC_DEC_CODEWRD_32_cword_q0 ;
assign q0[   33] =  o_LDPC_DEC_CODEWRD_33_cword_q0 ;
assign q0[   34] =  o_LDPC_DEC_CODEWRD_34_cword_q0 ;
assign q0[   35] =  o_LDPC_DEC_CODEWRD_35_cword_q0 ;
assign q0[   36] =  o_LDPC_DEC_CODEWRD_36_cword_q0 ;
assign q0[   37] =  o_LDPC_DEC_CODEWRD_37_cword_q0 ;
assign q0[   38] =  o_LDPC_DEC_CODEWRD_38_cword_q0 ;
assign q0[   39] =  o_LDPC_DEC_CODEWRD_39_cword_q0 ;
assign q0[   40] =  o_LDPC_DEC_CODEWRD_40_cword_q0 ;
assign q0[   41] =  o_LDPC_DEC_CODEWRD_41_cword_q0 ;
assign q0[   42] =  o_LDPC_DEC_CODEWRD_42_cword_q0 ;
assign q0[   43] =  o_LDPC_DEC_CODEWRD_43_cword_q0 ;
assign q0[   44] =  o_LDPC_DEC_CODEWRD_44_cword_q0 ;
assign q0[   45] =  o_LDPC_DEC_CODEWRD_45_cword_q0 ;
assign q0[   46] =  o_LDPC_DEC_CODEWRD_46_cword_q0 ;
assign q0[   47] =  o_LDPC_DEC_CODEWRD_47_cword_q0 ;
assign q0[   48] =  o_LDPC_DEC_CODEWRD_48_cword_q0 ;
assign q0[   49] =  o_LDPC_DEC_CODEWRD_49_cword_q0 ;
assign q0[   50] =  o_LDPC_DEC_CODEWRD_50_cword_q0 ;
assign q0[   51] =  o_LDPC_DEC_CODEWRD_51_cword_q0 ;
assign q0[   52] =  o_LDPC_DEC_CODEWRD_52_cword_q0 ;
assign q0[   53] =  o_LDPC_DEC_CODEWRD_53_cword_q0 ;
assign q0[   54] =  o_LDPC_DEC_CODEWRD_54_cword_q0 ;
assign q0[   55] =  o_LDPC_DEC_CODEWRD_55_cword_q0 ;
assign q0[   56] =  o_LDPC_DEC_CODEWRD_56_cword_q0 ;
assign q0[   57] =  o_LDPC_DEC_CODEWRD_57_cword_q0 ;
assign q0[   58] =  o_LDPC_DEC_CODEWRD_58_cword_q0 ;
assign q0[   59] =  o_LDPC_DEC_CODEWRD_59_cword_q0 ;
assign q0[   60] =  o_LDPC_DEC_CODEWRD_60_cword_q0 ;
assign q0[   61] =  o_LDPC_DEC_CODEWRD_61_cword_q0 ;
assign q0[   62] =  o_LDPC_DEC_CODEWRD_62_cword_q0 ;
assign q0[   63] =  o_LDPC_DEC_CODEWRD_63_cword_q0 ;
assign q0[   64] =  o_LDPC_DEC_CODEWRD_64_cword_q0 ;
assign q0[   65] =  o_LDPC_DEC_CODEWRD_65_cword_q0 ;
assign q0[   66] =  o_LDPC_DEC_CODEWRD_66_cword_q0 ;
assign q0[   67] =  o_LDPC_DEC_CODEWRD_67_cword_q0 ;
assign q0[   68] =  o_LDPC_DEC_CODEWRD_68_cword_q0 ;
assign q0[   69] =  o_LDPC_DEC_CODEWRD_69_cword_q0 ;
assign q0[   70] =  o_LDPC_DEC_CODEWRD_70_cword_q0 ;
assign q0[   71] =  o_LDPC_DEC_CODEWRD_71_cword_q0 ;
assign q0[   72] =  o_LDPC_DEC_CODEWRD_72_cword_q0 ;
assign q0[   73] =  o_LDPC_DEC_CODEWRD_73_cword_q0 ;
assign q0[   74] =  o_LDPC_DEC_CODEWRD_74_cword_q0 ;
assign q0[   75] =  o_LDPC_DEC_CODEWRD_75_cword_q0 ;
assign q0[   76] =  o_LDPC_DEC_CODEWRD_76_cword_q0 ;
assign q0[   77] =  o_LDPC_DEC_CODEWRD_77_cword_q0 ;
assign q0[   78] =  o_LDPC_DEC_CODEWRD_78_cword_q0 ;
assign q0[   79] =  o_LDPC_DEC_CODEWRD_79_cword_q0 ;
assign q0[   80] =  o_LDPC_DEC_CODEWRD_80_cword_q0 ;
assign q0[   81] =  o_LDPC_DEC_CODEWRD_81_cword_q0 ;
assign q0[   82] =  o_LDPC_DEC_CODEWRD_82_cword_q0 ;
assign q0[   83] =  o_LDPC_DEC_CODEWRD_83_cword_q0 ;
assign q0[   84] =  o_LDPC_DEC_CODEWRD_84_cword_q0 ;
assign q0[   85] =  o_LDPC_DEC_CODEWRD_85_cword_q0 ;
assign q0[   86] =  o_LDPC_DEC_CODEWRD_86_cword_q0 ;
assign q0[   87] =  o_LDPC_DEC_CODEWRD_87_cword_q0 ;
assign q0[   88] =  o_LDPC_DEC_CODEWRD_88_cword_q0 ;
assign q0[   89] =  o_LDPC_DEC_CODEWRD_89_cword_q0 ;
assign q0[   90] =  o_LDPC_DEC_CODEWRD_90_cword_q0 ;
assign q0[   91] =  o_LDPC_DEC_CODEWRD_91_cword_q0 ;
assign q0[   92] =  o_LDPC_DEC_CODEWRD_92_cword_q0 ;
assign q0[   93] =  o_LDPC_DEC_CODEWRD_93_cword_q0 ;
assign q0[   94] =  o_LDPC_DEC_CODEWRD_94_cword_q0 ;
assign q0[   95] =  o_LDPC_DEC_CODEWRD_95_cword_q0 ;
assign q0[   96] =  o_LDPC_DEC_CODEWRD_96_cword_q0 ;
assign q0[   97] =  o_LDPC_DEC_CODEWRD_97_cword_q0 ;
assign q0[   98] =  o_LDPC_DEC_CODEWRD_98_cword_q0 ;
assign q0[   99] =  o_LDPC_DEC_CODEWRD_99_cword_q0 ;
assign q0[   100] =  o_LDPC_DEC_CODEWRD_100_cword_q0 ;
assign q0[   101] =  o_LDPC_DEC_CODEWRD_101_cword_q0 ;
assign q0[   102] =  o_LDPC_DEC_CODEWRD_102_cword_q0 ;
assign q0[   103] =  o_LDPC_DEC_CODEWRD_103_cword_q0 ;
assign q0[   104] =  o_LDPC_DEC_CODEWRD_104_cword_q0 ;
assign q0[   105] =  o_LDPC_DEC_CODEWRD_105_cword_q0 ;
assign q0[   106] =  o_LDPC_DEC_CODEWRD_106_cword_q0 ;
assign q0[   107] =  o_LDPC_DEC_CODEWRD_107_cword_q0 ;
assign q0[   108] =  o_LDPC_DEC_CODEWRD_108_cword_q0 ;
assign q0[   109] =  o_LDPC_DEC_CODEWRD_109_cword_q0 ;
assign q0[   110] =  o_LDPC_DEC_CODEWRD_110_cword_q0 ;
assign q0[   111] =  o_LDPC_DEC_CODEWRD_111_cword_q0 ;
assign q0[   112] =  o_LDPC_DEC_CODEWRD_112_cword_q0 ;
assign q0[   113] =  o_LDPC_DEC_CODEWRD_113_cword_q0 ;
assign q0[   114] =  o_LDPC_DEC_CODEWRD_114_cword_q0 ;
assign q0[   115] =  o_LDPC_DEC_CODEWRD_115_cword_q0 ;
assign q0[   116] =  o_LDPC_DEC_CODEWRD_116_cword_q0 ;
assign q0[   117] =  o_LDPC_DEC_CODEWRD_117_cword_q0 ;
assign q0[   118] =  o_LDPC_DEC_CODEWRD_118_cword_q0 ;
assign q0[   119] =  o_LDPC_DEC_CODEWRD_119_cword_q0 ;
assign q0[   120] =  o_LDPC_DEC_CODEWRD_120_cword_q0 ;
assign q0[   121] =  o_LDPC_DEC_CODEWRD_121_cword_q0 ;
assign q0[   122] =  o_LDPC_DEC_CODEWRD_122_cword_q0 ;
assign q0[   123] =  o_LDPC_DEC_CODEWRD_123_cword_q0 ;
assign q0[   124] =  o_LDPC_DEC_CODEWRD_124_cword_q0 ;
assign q0[   125] =  o_LDPC_DEC_CODEWRD_125_cword_q0 ;
assign q0[   126] =  o_LDPC_DEC_CODEWRD_126_cword_q0 ;
assign q0[   127] =  o_LDPC_DEC_CODEWRD_127_cword_q0 ;
assign q0[   128] =  o_LDPC_DEC_CODEWRD_128_cword_q0 ;
assign q0[   129] =  o_LDPC_DEC_CODEWRD_129_cword_q0 ;
assign q0[   130] =  o_LDPC_DEC_CODEWRD_130_cword_q0 ;
assign q0[   131] =  o_LDPC_DEC_CODEWRD_131_cword_q0 ;
assign q0[   132] =  o_LDPC_DEC_CODEWRD_132_cword_q0 ;
assign q0[   133] =  o_LDPC_DEC_CODEWRD_133_cword_q0 ;
assign q0[   134] =  o_LDPC_DEC_CODEWRD_134_cword_q0 ;
assign q0[   135] =  o_LDPC_DEC_CODEWRD_135_cword_q0 ;
assign q0[   136] =  o_LDPC_DEC_CODEWRD_136_cword_q0 ;
assign q0[   137] =  o_LDPC_DEC_CODEWRD_137_cword_q0 ;
assign q0[   138] =  o_LDPC_DEC_CODEWRD_138_cword_q0 ;
assign q0[   139] =  o_LDPC_DEC_CODEWRD_139_cword_q0 ;
assign q0[   140] =  o_LDPC_DEC_CODEWRD_140_cword_q0 ;
assign q0[   141] =  o_LDPC_DEC_CODEWRD_141_cword_q0 ;
assign q0[   142] =  o_LDPC_DEC_CODEWRD_142_cword_q0 ;
assign q0[   143] =  o_LDPC_DEC_CODEWRD_143_cword_q0 ;
assign q0[   144] =  o_LDPC_DEC_CODEWRD_144_cword_q0 ;
assign q0[   145] =  o_LDPC_DEC_CODEWRD_145_cword_q0 ;
assign q0[   146] =  o_LDPC_DEC_CODEWRD_146_cword_q0 ;
assign q0[   147] =  o_LDPC_DEC_CODEWRD_147_cword_q0 ;
assign q0[   148] =  o_LDPC_DEC_CODEWRD_148_cword_q0 ;
assign q0[   149] =  o_LDPC_DEC_CODEWRD_149_cword_q0 ;
assign q0[   150] =  o_LDPC_DEC_CODEWRD_150_cword_q0 ;
assign q0[   151] =  o_LDPC_DEC_CODEWRD_151_cword_q0 ;
assign q0[   152] =  o_LDPC_DEC_CODEWRD_152_cword_q0 ;
assign q0[   153] =  o_LDPC_DEC_CODEWRD_153_cword_q0 ;
assign q0[   154] =  o_LDPC_DEC_CODEWRD_154_cword_q0 ;
assign q0[   155] =  o_LDPC_DEC_CODEWRD_155_cword_q0 ;
assign q0[   156] =  o_LDPC_DEC_CODEWRD_156_cword_q0 ;
assign q0[   157] =  o_LDPC_DEC_CODEWRD_157_cword_q0 ;
assign q0[   158] =  o_LDPC_DEC_CODEWRD_158_cword_q0 ;
assign q0[   159] =  o_LDPC_DEC_CODEWRD_159_cword_q0 ;
assign q0[   160] =  o_LDPC_DEC_CODEWRD_160_cword_q0 ;
assign q0[   161] =  o_LDPC_DEC_CODEWRD_161_cword_q0 ;
assign q0[   162] =  o_LDPC_DEC_CODEWRD_162_cword_q0 ;
assign q0[   163] =  o_LDPC_DEC_CODEWRD_163_cword_q0 ;
assign q0[   164] =  o_LDPC_DEC_CODEWRD_164_cword_q0 ;
assign q0[   165] =  o_LDPC_DEC_CODEWRD_165_cword_q0 ;
assign q0[   166] =  o_LDPC_DEC_CODEWRD_166_cword_q0 ;
assign q0[   167] =  o_LDPC_DEC_CODEWRD_167_cword_q0 ;
assign q0[   168] =  o_LDPC_DEC_CODEWRD_168_cword_q0 ;
assign q0[   169] =  o_LDPC_DEC_CODEWRD_169_cword_q0 ;
assign q0[   170] =  o_LDPC_DEC_CODEWRD_170_cword_q0 ;
assign q0[   171] =  o_LDPC_DEC_CODEWRD_171_cword_q0 ;
assign q0[   172] =  o_LDPC_DEC_CODEWRD_172_cword_q0 ;
assign q0[   173] =  o_LDPC_DEC_CODEWRD_173_cword_q0 ;
assign q0[   174] =  o_LDPC_DEC_CODEWRD_174_cword_q0 ;
assign q0[   175] =  o_LDPC_DEC_CODEWRD_175_cword_q0 ;
assign q0[   176] =  o_LDPC_DEC_CODEWRD_176_cword_q0 ;
assign q0[   177] =  o_LDPC_DEC_CODEWRD_177_cword_q0 ;
assign q0[   178] =  o_LDPC_DEC_CODEWRD_178_cword_q0 ;
assign q0[   179] =  o_LDPC_DEC_CODEWRD_179_cword_q0 ;
assign q0[   180] =  o_LDPC_DEC_CODEWRD_180_cword_q0 ;
assign q0[   181] =  o_LDPC_DEC_CODEWRD_181_cword_q0 ;
assign q0[   182] =  o_LDPC_DEC_CODEWRD_182_cword_q0 ;
assign q0[   183] =  o_LDPC_DEC_CODEWRD_183_cword_q0 ;
assign q0[   184] =  o_LDPC_DEC_CODEWRD_184_cword_q0 ;
assign q0[   185] =  o_LDPC_DEC_CODEWRD_185_cword_q0 ;
assign q0[   186] =  o_LDPC_DEC_CODEWRD_186_cword_q0 ;
assign q0[   187] =  o_LDPC_DEC_CODEWRD_187_cword_q0 ;
assign q0[   188] =  o_LDPC_DEC_CODEWRD_188_cword_q0 ;
assign q0[   189] =  o_LDPC_DEC_CODEWRD_189_cword_q0 ;
assign q0[   190] =  o_LDPC_DEC_CODEWRD_190_cword_q0 ;
assign q0[   191] =  o_LDPC_DEC_CODEWRD_191_cword_q0 ;
assign q0[   192] =  o_LDPC_DEC_CODEWRD_192_cword_q0 ;
assign q0[   193] =  o_LDPC_DEC_CODEWRD_193_cword_q0 ;
assign q0[   194] =  o_LDPC_DEC_CODEWRD_194_cword_q0 ;
assign q0[   195] =  o_LDPC_DEC_CODEWRD_195_cword_q0 ;
assign q0[   196] =  o_LDPC_DEC_CODEWRD_196_cword_q0 ;
assign q0[   197] =  o_LDPC_DEC_CODEWRD_197_cword_q0 ;
assign q0[   198] =  o_LDPC_DEC_CODEWRD_198_cword_q0 ;
assign q0[   199] =  o_LDPC_DEC_CODEWRD_199_cword_q0 ;
assign q0[   200] =  o_LDPC_DEC_CODEWRD_200_cword_q0 ;
assign q0[   201] =  o_LDPC_DEC_CODEWRD_201_cword_q0 ;
assign q0[   202] =  o_LDPC_DEC_CODEWRD_202_cword_q0 ;
assign q0[   203] =  o_LDPC_DEC_CODEWRD_203_cword_q0 ;
assign q0[   204] =  o_LDPC_DEC_CODEWRD_204_cword_q0 ;
assign q0[   205] =  o_LDPC_DEC_CODEWRD_205_cword_q0 ;
assign q0[   206] =  o_LDPC_DEC_CODEWRD_206_cword_q0 ;
assign q0[   207] =  o_LDPC_DEC_CODEWRD_207_cword_q0 ;
assign exp_syn[   0] =  o_LDPC_DEC_EXPSYND_0_exp_syn;
assign exp_syn[   1] =  o_LDPC_DEC_EXPSYND_1_exp_syn;
assign exp_syn[   2] =  o_LDPC_DEC_EXPSYND_2_exp_syn;
assign exp_syn[   3] =  o_LDPC_DEC_EXPSYND_3_exp_syn;
assign exp_syn[   4] =  o_LDPC_DEC_EXPSYND_4_exp_syn;
assign exp_syn[   5] =  o_LDPC_DEC_EXPSYND_5_exp_syn;
assign exp_syn[   6] =  o_LDPC_DEC_EXPSYND_6_exp_syn;
assign exp_syn[   7] =  o_LDPC_DEC_EXPSYND_7_exp_syn;
assign exp_syn[   8] =  o_LDPC_DEC_EXPSYND_8_exp_syn;
assign exp_syn[   9] =  o_LDPC_DEC_EXPSYND_9_exp_syn;
assign exp_syn[   10] =  o_LDPC_DEC_EXPSYND_10_exp_syn;
assign exp_syn[   11] =  o_LDPC_DEC_EXPSYND_11_exp_syn;
assign exp_syn[   12] =  o_LDPC_DEC_EXPSYND_12_exp_syn;
assign exp_syn[   13] =  o_LDPC_DEC_EXPSYND_13_exp_syn;
assign exp_syn[   14] =  o_LDPC_DEC_EXPSYND_14_exp_syn;
assign exp_syn[   15] =  o_LDPC_DEC_EXPSYND_15_exp_syn;
assign exp_syn[   16] =  o_LDPC_DEC_EXPSYND_16_exp_syn;
assign exp_syn[   17] =  o_LDPC_DEC_EXPSYND_17_exp_syn;
assign exp_syn[   18] =  o_LDPC_DEC_EXPSYND_18_exp_syn;
assign exp_syn[   19] =  o_LDPC_DEC_EXPSYND_19_exp_syn;
assign exp_syn[   20] =  o_LDPC_DEC_EXPSYND_20_exp_syn;
assign exp_syn[   21] =  o_LDPC_DEC_EXPSYND_21_exp_syn;
assign exp_syn[   22] =  o_LDPC_DEC_EXPSYND_22_exp_syn;
assign exp_syn[   23] =  o_LDPC_DEC_EXPSYND_23_exp_syn;
assign exp_syn[   24] =  o_LDPC_DEC_EXPSYND_24_exp_syn;
assign exp_syn[   25] =  o_LDPC_DEC_EXPSYND_25_exp_syn;
assign exp_syn[   26] =  o_LDPC_DEC_EXPSYND_26_exp_syn;
assign exp_syn[   27] =  o_LDPC_DEC_EXPSYND_27_exp_syn;
assign exp_syn[   28] =  o_LDPC_DEC_EXPSYND_28_exp_syn;
assign exp_syn[   29] =  o_LDPC_DEC_EXPSYND_29_exp_syn;
assign exp_syn[   30] =  o_LDPC_DEC_EXPSYND_30_exp_syn;
assign exp_syn[   31] =  o_LDPC_DEC_EXPSYND_31_exp_syn;
assign exp_syn[   32] =  o_LDPC_DEC_EXPSYND_32_exp_syn;
assign exp_syn[   33] =  o_LDPC_DEC_EXPSYND_33_exp_syn;
assign exp_syn[   34] =  o_LDPC_DEC_EXPSYND_34_exp_syn;
assign exp_syn[   35] =  o_LDPC_DEC_EXPSYND_35_exp_syn;
assign exp_syn[   36] =  o_LDPC_DEC_EXPSYND_36_exp_syn;
assign exp_syn[   37] =  o_LDPC_DEC_EXPSYND_37_exp_syn;
assign exp_syn[   38] =  o_LDPC_DEC_EXPSYND_38_exp_syn;
assign exp_syn[   39] =  o_LDPC_DEC_EXPSYND_39_exp_syn;
assign exp_syn[   40] =  o_LDPC_DEC_EXPSYND_40_exp_syn;
assign exp_syn[   41] =  o_LDPC_DEC_EXPSYND_41_exp_syn;
assign exp_syn[   42] =  o_LDPC_DEC_EXPSYND_42_exp_syn;
assign exp_syn[   43] =  o_LDPC_DEC_EXPSYND_43_exp_syn;
assign exp_syn[   44] =  o_LDPC_DEC_EXPSYND_44_exp_syn;
assign exp_syn[   45] =  o_LDPC_DEC_EXPSYND_45_exp_syn;
assign exp_syn[   46] =  o_LDPC_DEC_EXPSYND_46_exp_syn;
assign exp_syn[   47] =  o_LDPC_DEC_EXPSYND_47_exp_syn;
assign exp_syn[   48] =  o_LDPC_DEC_EXPSYND_48_exp_syn;
assign exp_syn[   49] =  o_LDPC_DEC_EXPSYND_49_exp_syn;
assign exp_syn[   50] =  o_LDPC_DEC_EXPSYND_50_exp_syn;
assign exp_syn[   51] =  o_LDPC_DEC_EXPSYND_51_exp_syn;
assign exp_syn[   52] =  o_LDPC_DEC_EXPSYND_52_exp_syn;
assign exp_syn[   53] =  o_LDPC_DEC_EXPSYND_53_exp_syn;
assign exp_syn[   54] =  o_LDPC_DEC_EXPSYND_54_exp_syn;
assign exp_syn[   55] =  o_LDPC_DEC_EXPSYND_55_exp_syn;
assign exp_syn[   56] =  o_LDPC_DEC_EXPSYND_56_exp_syn;
assign exp_syn[   57] =  o_LDPC_DEC_EXPSYND_57_exp_syn;
assign exp_syn[   58] =  o_LDPC_DEC_EXPSYND_58_exp_syn;
assign exp_syn[   59] =  o_LDPC_DEC_EXPSYND_59_exp_syn;
assign exp_syn[   60] =  o_LDPC_DEC_EXPSYND_60_exp_syn;
assign exp_syn[   61] =  o_LDPC_DEC_EXPSYND_61_exp_syn;
assign exp_syn[   62] =  o_LDPC_DEC_EXPSYND_62_exp_syn;
assign exp_syn[   63] =  o_LDPC_DEC_EXPSYND_63_exp_syn;
assign exp_syn[   64] =  o_LDPC_DEC_EXPSYND_64_exp_syn;
assign exp_syn[   65] =  o_LDPC_DEC_EXPSYND_65_exp_syn;
assign exp_syn[   66] =  o_LDPC_DEC_EXPSYND_66_exp_syn;
assign exp_syn[   67] =  o_LDPC_DEC_EXPSYND_67_exp_syn;
assign exp_syn[   68] =  o_LDPC_DEC_EXPSYND_68_exp_syn;
assign exp_syn[   69] =  o_LDPC_DEC_EXPSYND_69_exp_syn;
assign exp_syn[   70] =  o_LDPC_DEC_EXPSYND_70_exp_syn;
assign exp_syn[   71] =  o_LDPC_DEC_EXPSYND_71_exp_syn;
assign exp_syn[   72] =  o_LDPC_DEC_EXPSYND_72_exp_syn;
assign exp_syn[   73] =  o_LDPC_DEC_EXPSYND_73_exp_syn;
assign exp_syn[   74] =  o_LDPC_DEC_EXPSYND_74_exp_syn;
assign exp_syn[   75] =  o_LDPC_DEC_EXPSYND_75_exp_syn;
assign exp_syn[   76] =  o_LDPC_DEC_EXPSYND_76_exp_syn;
assign exp_syn[   77] =  o_LDPC_DEC_EXPSYND_77_exp_syn;
assign exp_syn[   78] =  o_LDPC_DEC_EXPSYND_78_exp_syn;
assign exp_syn[   79] =  o_LDPC_DEC_EXPSYND_79_exp_syn;
assign exp_syn[   80] =  o_LDPC_DEC_EXPSYND_80_exp_syn;
assign exp_syn[   81] =  o_LDPC_DEC_EXPSYND_81_exp_syn;
assign exp_syn[   82] =  o_LDPC_DEC_EXPSYND_82_exp_syn;
assign exp_syn[   83] =  o_LDPC_DEC_EXPSYND_83_exp_syn;
assign exp_syn[   84] =  o_LDPC_DEC_EXPSYND_84_exp_syn;
assign exp_syn[   85] =  o_LDPC_DEC_EXPSYND_85_exp_syn;
assign exp_syn[   86] =  o_LDPC_DEC_EXPSYND_86_exp_syn;
assign exp_syn[   87] =  o_LDPC_DEC_EXPSYND_87_exp_syn;
assign exp_syn[   88] =  o_LDPC_DEC_EXPSYND_88_exp_syn;
assign exp_syn[   89] =  o_LDPC_DEC_EXPSYND_89_exp_syn;
assign exp_syn[   90] =  o_LDPC_DEC_EXPSYND_90_exp_syn;
assign exp_syn[   91] =  o_LDPC_DEC_EXPSYND_91_exp_syn;
assign exp_syn[   92] =  o_LDPC_DEC_EXPSYND_92_exp_syn;
assign exp_syn[   93] =  o_LDPC_DEC_EXPSYND_93_exp_syn;
assign exp_syn[   94] =  o_LDPC_DEC_EXPSYND_94_exp_syn;
assign exp_syn[   95] =  o_LDPC_DEC_EXPSYND_95_exp_syn;
assign exp_syn[   96] =  o_LDPC_DEC_EXPSYND_96_exp_syn;
assign exp_syn[   97] =  o_LDPC_DEC_EXPSYND_97_exp_syn;
assign exp_syn[   98] =  o_LDPC_DEC_EXPSYND_98_exp_syn;
assign exp_syn[   99] =  o_LDPC_DEC_EXPSYND_99_exp_syn;
assign exp_syn[   100] =  o_LDPC_DEC_EXPSYND_100_exp_syn;
assign exp_syn[   101] =  o_LDPC_DEC_EXPSYND_101_exp_syn;
assign exp_syn[   102] =  o_LDPC_DEC_EXPSYND_102_exp_syn;
assign exp_syn[   103] =  o_LDPC_DEC_EXPSYND_103_exp_syn;
assign exp_syn[   104] =  o_LDPC_DEC_EXPSYND_104_exp_syn;
assign exp_syn[   105] =  o_LDPC_DEC_EXPSYND_105_exp_syn;
assign exp_syn[   106] =  o_LDPC_DEC_EXPSYND_106_exp_syn;
assign exp_syn[   107] =  o_LDPC_DEC_EXPSYND_107_exp_syn;
assign exp_syn[   108] =  o_LDPC_DEC_EXPSYND_108_exp_syn;
assign exp_syn[   109] =  o_LDPC_DEC_EXPSYND_109_exp_syn;
assign exp_syn[   110] =  o_LDPC_DEC_EXPSYND_110_exp_syn;
assign exp_syn[   111] =  o_LDPC_DEC_EXPSYND_111_exp_syn;
assign exp_syn[   112] =  o_LDPC_DEC_EXPSYND_112_exp_syn;
assign exp_syn[   113] =  o_LDPC_DEC_EXPSYND_113_exp_syn;
assign exp_syn[   114] =  o_LDPC_DEC_EXPSYND_114_exp_syn;
assign exp_syn[   115] =  o_LDPC_DEC_EXPSYND_115_exp_syn;
assign exp_syn[   116] =  o_LDPC_DEC_EXPSYND_116_exp_syn;
assign exp_syn[   117] =  o_LDPC_DEC_EXPSYND_117_exp_syn;
assign exp_syn[   118] =  o_LDPC_DEC_EXPSYND_118_exp_syn;
assign exp_syn[   119] =  o_LDPC_DEC_EXPSYND_119_exp_syn;
assign exp_syn[   120] =  o_LDPC_DEC_EXPSYND_120_exp_syn;
assign exp_syn[   121] =  o_LDPC_DEC_EXPSYND_121_exp_syn;
assign exp_syn[   122] =  o_LDPC_DEC_EXPSYND_122_exp_syn;
assign exp_syn[   123] =  o_LDPC_DEC_EXPSYND_123_exp_syn;
assign exp_syn[   124] =  o_LDPC_DEC_EXPSYND_124_exp_syn;
assign exp_syn[   125] =  o_LDPC_DEC_EXPSYND_125_exp_syn;
assign exp_syn[   126] =  o_LDPC_DEC_EXPSYND_126_exp_syn;
assign exp_syn[   127] =  o_LDPC_DEC_EXPSYND_127_exp_syn;
assign exp_syn[   128] =  o_LDPC_DEC_EXPSYND_128_exp_syn;
assign exp_syn[   129] =  o_LDPC_DEC_EXPSYND_129_exp_syn;
assign exp_syn[   130] =  o_LDPC_DEC_EXPSYND_130_exp_syn;
assign exp_syn[   131] =  o_LDPC_DEC_EXPSYND_131_exp_syn;
assign exp_syn[   132] =  o_LDPC_DEC_EXPSYND_132_exp_syn;
assign exp_syn[   133] =  o_LDPC_DEC_EXPSYND_133_exp_syn;
assign exp_syn[   134] =  o_LDPC_DEC_EXPSYND_134_exp_syn;
assign exp_syn[   135] =  o_LDPC_DEC_EXPSYND_135_exp_syn;
assign exp_syn[   136] =  o_LDPC_DEC_EXPSYND_136_exp_syn;
assign exp_syn[   137] =  o_LDPC_DEC_EXPSYND_137_exp_syn;
assign exp_syn[   138] =  o_LDPC_DEC_EXPSYND_138_exp_syn;
assign exp_syn[   139] =  o_LDPC_DEC_EXPSYND_139_exp_syn;
assign exp_syn[   140] =  o_LDPC_DEC_EXPSYND_140_exp_syn;
assign exp_syn[   141] =  o_LDPC_DEC_EXPSYND_141_exp_syn;
assign exp_syn[   142] =  o_LDPC_DEC_EXPSYND_142_exp_syn;
assign exp_syn[   143] =  o_LDPC_DEC_EXPSYND_143_exp_syn;
assign exp_syn[   144] =  o_LDPC_DEC_EXPSYND_144_exp_syn;
assign exp_syn[   145] =  o_LDPC_DEC_EXPSYND_145_exp_syn;
assign exp_syn[   146] =  o_LDPC_DEC_EXPSYND_146_exp_syn;
assign exp_syn[   147] =  o_LDPC_DEC_EXPSYND_147_exp_syn;
assign exp_syn[   148] =  o_LDPC_DEC_EXPSYND_148_exp_syn;
assign exp_syn[   149] =  o_LDPC_DEC_EXPSYND_149_exp_syn;
assign exp_syn[   150] =  o_LDPC_DEC_EXPSYND_150_exp_syn;
assign exp_syn[   151] =  o_LDPC_DEC_EXPSYND_151_exp_syn;
assign exp_syn[   152] =  o_LDPC_DEC_EXPSYND_152_exp_syn;
assign exp_syn[   153] =  o_LDPC_DEC_EXPSYND_153_exp_syn;
assign exp_syn[   154] =  o_LDPC_DEC_EXPSYND_154_exp_syn;
assign exp_syn[   155] =  o_LDPC_DEC_EXPSYND_155_exp_syn;
assign exp_syn[   156] =  o_LDPC_DEC_EXPSYND_156_exp_syn;
assign exp_syn[   157] =  o_LDPC_DEC_EXPSYND_157_exp_syn;
assign exp_syn[   158] =  o_LDPC_DEC_EXPSYND_158_exp_syn;
assign exp_syn[   159] =  o_LDPC_DEC_EXPSYND_159_exp_syn;
assign exp_syn[   160] =  o_LDPC_DEC_EXPSYND_160_exp_syn;
assign exp_syn[   161] =  o_LDPC_DEC_EXPSYND_161_exp_syn;
assign exp_syn[   162] =  o_LDPC_DEC_EXPSYND_162_exp_syn;
assign exp_syn[   163] =  o_LDPC_DEC_EXPSYND_163_exp_syn;
assign exp_syn[   164] =  o_LDPC_DEC_EXPSYND_164_exp_syn;
assign exp_syn[   165] =  o_LDPC_DEC_EXPSYND_165_exp_syn;
assign exp_syn[   166] =  o_LDPC_DEC_EXPSYND_166_exp_syn;
assign exp_syn[   167] =  o_LDPC_DEC_EXPSYND_167_exp_syn;
assign percent_probability_int =  o_LDPC_DEC_PROBABILITY_perc_probability;
assign HamDist_loop_max =  o_LDPC_DEC_HamDist_loop_max_HamDist_loop_max;
assign HamDist_loop_percentage =  o_LDPC_DEC_HamDist_loop_percentage_HamDist_loop_percentage;
assign HamDist_iir1 =  o_LDPC_DEC_HamDist_iir1_HamDist_iir1;
assign HamDist_iir2 =  o_LDPC_DEC_HamDist_iir2_NOT_USED_HamDist_iir2;
assign HamDist_iir3 =  o_LDPC_DEC_HamDist_iir3_NOT_USED_HamDist_iir3;
assign i_LDPC_DEC_converged_valid_NOT_USED_convered_valid = converged_valid ;
assign i_LDPC_DEC_valid_NOT_USED_dec_valid = dec_valid ;
assign i_LDPC_DEC_valid_codeword_NOT_USED_dec_valid_cword = dec_valid_cword ;
assign start =  o_LDPC_DEC_start_start;
assign i_LDPC_DEC_converged_valid_convered_vld = converged[1];
assign i_LDPC_DEC_converged_status_convered_stat = converged[0];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_0_final_cword = tmp_bit[0];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_1_final_cword = tmp_bit[1];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_2_final_cword = tmp_bit[2];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_3_final_cword = tmp_bit[3];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_4_final_cword = tmp_bit[4];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_5_final_cword = tmp_bit[5];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_6_final_cword = tmp_bit[6];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_7_final_cword = tmp_bit[7];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_8_final_cword = tmp_bit[8];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_9_final_cword = tmp_bit[9];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_10_final_cword = tmp_bit[10];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_11_final_cword = tmp_bit[11];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_12_final_cword = tmp_bit[12];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_13_final_cword = tmp_bit[13];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_14_final_cword = tmp_bit[14];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_15_final_cword = tmp_bit[15];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_16_final_cword = tmp_bit[16];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_17_final_cword = tmp_bit[17];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_18_final_cword = tmp_bit[18];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_19_final_cword = tmp_bit[19];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_20_final_cword = tmp_bit[20];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_21_final_cword = tmp_bit[21];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_22_final_cword = tmp_bit[22];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_23_final_cword = tmp_bit[23];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_24_final_cword = tmp_bit[24];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_25_final_cword = tmp_bit[25];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_26_final_cword = tmp_bit[26];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_27_final_cword = tmp_bit[27];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_28_final_cword = tmp_bit[28];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_29_final_cword = tmp_bit[29];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_30_final_cword = tmp_bit[30];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_31_final_cword = tmp_bit[31];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_32_final_cword = tmp_bit[32];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_33_final_cword = tmp_bit[33];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_34_final_cword = tmp_bit[34];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_35_final_cword = tmp_bit[35];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_36_final_cword = tmp_bit[36];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_37_final_cword = tmp_bit[37];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_38_final_cword = tmp_bit[38];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_39_final_cword = tmp_bit[39];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_40_final_cword = tmp_bit[40];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_41_final_cword = tmp_bit[41];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_42_final_cword = tmp_bit[42];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_43_final_cword = tmp_bit[43];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_44_final_cword = tmp_bit[44];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_45_final_cword = tmp_bit[45];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_46_final_cword = tmp_bit[46];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_47_final_cword = tmp_bit[47];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_48_final_cword = tmp_bit[48];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_49_final_cword = tmp_bit[49];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_50_final_cword = tmp_bit[50];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_51_final_cword = tmp_bit[51];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_52_final_cword = tmp_bit[52];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_53_final_cword = tmp_bit[53];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_54_final_cword = tmp_bit[54];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_55_final_cword = tmp_bit[55];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_56_final_cword = tmp_bit[56];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_57_final_cword = tmp_bit[57];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_58_final_cword = tmp_bit[58];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_59_final_cword = tmp_bit[59];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_60_final_cword = tmp_bit[60];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_61_final_cword = tmp_bit[61];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_62_final_cword = tmp_bit[62];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_63_final_cword = tmp_bit[63];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_64_final_cword = tmp_bit[64];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_65_final_cword = tmp_bit[65];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_66_final_cword = tmp_bit[66];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_67_final_cword = tmp_bit[67];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_68_final_cword = tmp_bit[68];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_69_final_cword = tmp_bit[69];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_70_final_cword = tmp_bit[70];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_71_final_cword = tmp_bit[71];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_72_final_cword = tmp_bit[72];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_73_final_cword = tmp_bit[73];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_74_final_cword = tmp_bit[74];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_75_final_cword = tmp_bit[75];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_76_final_cword = tmp_bit[76];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_77_final_cword = tmp_bit[77];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_78_final_cword = tmp_bit[78];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_79_final_cword = tmp_bit[79];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_80_final_cword = tmp_bit[80];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_81_final_cword = tmp_bit[81];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_82_final_cword = tmp_bit[82];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_83_final_cword = tmp_bit[83];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_84_final_cword = tmp_bit[84];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_85_final_cword = tmp_bit[85];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_86_final_cword = tmp_bit[86];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_87_final_cword = tmp_bit[87];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_88_final_cword = tmp_bit[88];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_89_final_cword = tmp_bit[89];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_90_final_cword = tmp_bit[90];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_91_final_cword = tmp_bit[91];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_92_final_cword = tmp_bit[92];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_93_final_cword = tmp_bit[93];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_94_final_cword = tmp_bit[94];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_95_final_cword = tmp_bit[95];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_96_final_cword = tmp_bit[96];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_97_final_cword = tmp_bit[97];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_98_final_cword = tmp_bit[98];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_99_final_cword = tmp_bit[99];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_100_final_cword = tmp_bit[100];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_101_final_cword = tmp_bit[101];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_102_final_cword = tmp_bit[102];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_103_final_cword = tmp_bit[103];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_104_final_cword = tmp_bit[104];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_105_final_cword = tmp_bit[105];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_106_final_cword = tmp_bit[106];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_107_final_cword = tmp_bit[107];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_108_final_cword = tmp_bit[108];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_109_final_cword = tmp_bit[109];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_110_final_cword = tmp_bit[110];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_111_final_cword = tmp_bit[111];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_112_final_cword = tmp_bit[112];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_113_final_cword = tmp_bit[113];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_114_final_cword = tmp_bit[114];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_115_final_cword = tmp_bit[115];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_116_final_cword = tmp_bit[116];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_117_final_cword = tmp_bit[117];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_118_final_cword = tmp_bit[118];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_119_final_cword = tmp_bit[119];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_120_final_cword = tmp_bit[120];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_121_final_cword = tmp_bit[121];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_122_final_cword = tmp_bit[122];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_123_final_cword = tmp_bit[123];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_124_final_cword = tmp_bit[124];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_125_final_cword = tmp_bit[125];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_126_final_cword = tmp_bit[126];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_127_final_cword = tmp_bit[127];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_128_final_cword = tmp_bit[128];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_129_final_cword = tmp_bit[129];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_130_final_cword = tmp_bit[130];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_131_final_cword = tmp_bit[131];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_132_final_cword = tmp_bit[132];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_133_final_cword = tmp_bit[133];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_134_final_cword = tmp_bit[134];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_135_final_cword = tmp_bit[135];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_136_final_cword = tmp_bit[136];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_137_final_cword = tmp_bit[137];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_138_final_cword = tmp_bit[138];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_139_final_cword = tmp_bit[139];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_140_final_cword = tmp_bit[140];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_141_final_cword = tmp_bit[141];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_142_final_cword = tmp_bit[142];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_143_final_cword = tmp_bit[143];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_144_final_cword = tmp_bit[144];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_145_final_cword = tmp_bit[145];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_146_final_cword = tmp_bit[146];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_147_final_cword = tmp_bit[147];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_148_final_cword = tmp_bit[148];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_149_final_cword = tmp_bit[149];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_150_final_cword = tmp_bit[150];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_151_final_cword = tmp_bit[151];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_152_final_cword = tmp_bit[152];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_153_final_cword = tmp_bit[153];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_154_final_cword = tmp_bit[154];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_155_final_cword = tmp_bit[155];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_156_final_cword = tmp_bit[156];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_157_final_cword = tmp_bit[157];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_158_final_cword = tmp_bit[158];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_159_final_cword = tmp_bit[159];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_160_final_cword = tmp_bit[160];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_161_final_cword = tmp_bit[161];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_162_final_cword = tmp_bit[162];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_163_final_cword = tmp_bit[163];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_164_final_cword = tmp_bit[164];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_165_final_cword = tmp_bit[165];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_166_final_cword = tmp_bit[166];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_167_final_cword = tmp_bit[167];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_168_final_cword = tmp_bit[168];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_169_final_cword = tmp_bit[169];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_170_final_cword = tmp_bit[170];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_171_final_cword = tmp_bit[171];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_172_final_cword = tmp_bit[172];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_173_final_cword = tmp_bit[173];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_174_final_cword = tmp_bit[174];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_175_final_cword = tmp_bit[175];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_176_final_cword = tmp_bit[176];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_177_final_cword = tmp_bit[177];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_178_final_cword = tmp_bit[178];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_179_final_cword = tmp_bit[179];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_180_final_cword = tmp_bit[180];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_181_final_cword = tmp_bit[181];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_182_final_cword = tmp_bit[182];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_183_final_cword = tmp_bit[183];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_184_final_cword = tmp_bit[184];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_185_final_cword = tmp_bit[185];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_186_final_cword = tmp_bit[186];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_187_final_cword = tmp_bit[187];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_188_final_cword = tmp_bit[188];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_189_final_cword = tmp_bit[189];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_190_final_cword = tmp_bit[190];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_191_final_cword = tmp_bit[191];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_192_final_cword = tmp_bit[192];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_193_final_cword = tmp_bit[193];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_194_final_cword = tmp_bit[194];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_195_final_cword = tmp_bit[195];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_196_final_cword = tmp_bit[196];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_197_final_cword = tmp_bit[197];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_198_final_cword = tmp_bit[198];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_199_final_cword = tmp_bit[199];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_200_final_cword = tmp_bit[200];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_201_final_cword = tmp_bit[201];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_202_final_cword = tmp_bit[202];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_203_final_cword = tmp_bit[203];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_204_final_cword = tmp_bit[204];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_205_final_cword = tmp_bit[205];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_206_final_cword = tmp_bit[206];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_207_final_cword = tmp_bit[207];

    //assign end
    /////////////////////////////////////////////////////////////////////////////

LDPC_CSR LDPC_CSR_U
(
  .i_wb_cyc(i_wb_cyc),
  .i_wb_stb(i_wb_stb),
  .o_wb_stall(),
  .i_wb_adr(wbs_adr_i[12:0]),
  .i_wb_we(wbs_we_i),
  .i_wb_dat(wbs_dat_i),
  .i_wb_sel(wbs_sel_i),
  .o_wb_ack(wbs_ack_o),
  .o_wb_err(),
  .o_wb_rty(),
  .o_wb_dat(wbs_dat_o),

  //////////////////////////////////////////////////////////////////////////
  ///// connect start
  // r LDPC_inst.sv
.o_LDPC_ENC_MSG_IN_0_msg_in(o_LDPC_ENC_MSG_IN_0_msg_in),
.o_LDPC_ENC_MSG_IN_1_msg_in(o_LDPC_ENC_MSG_IN_1_msg_in),
.o_LDPC_ENC_MSG_IN_2_msg_in(o_LDPC_ENC_MSG_IN_2_msg_in),
.o_LDPC_ENC_MSG_IN_3_msg_in(o_LDPC_ENC_MSG_IN_3_msg_in),
.o_LDPC_ENC_MSG_IN_4_msg_in(o_LDPC_ENC_MSG_IN_4_msg_in),
.o_LDPC_ENC_MSG_IN_5_msg_in(o_LDPC_ENC_MSG_IN_5_msg_in),
.o_LDPC_ENC_MSG_IN_6_msg_in(o_LDPC_ENC_MSG_IN_6_msg_in),
.o_LDPC_ENC_MSG_IN_7_msg_in(o_LDPC_ENC_MSG_IN_7_msg_in),
.o_LDPC_ENC_MSG_IN_8_msg_in(o_LDPC_ENC_MSG_IN_8_msg_in),
.o_LDPC_ENC_MSG_IN_9_msg_in(o_LDPC_ENC_MSG_IN_9_msg_in),
.o_LDPC_ENC_MSG_IN_10_msg_in(o_LDPC_ENC_MSG_IN_10_msg_in),
.o_LDPC_ENC_MSG_IN_11_msg_in(o_LDPC_ENC_MSG_IN_11_msg_in),
.o_LDPC_ENC_MSG_IN_12_msg_in(o_LDPC_ENC_MSG_IN_12_msg_in),
.o_LDPC_ENC_MSG_IN_13_msg_in(o_LDPC_ENC_MSG_IN_13_msg_in),
.o_LDPC_ENC_MSG_IN_14_msg_in(o_LDPC_ENC_MSG_IN_14_msg_in),
.o_LDPC_ENC_MSG_IN_15_msg_in(o_LDPC_ENC_MSG_IN_15_msg_in),
.o_LDPC_ENC_MSG_IN_16_msg_in(o_LDPC_ENC_MSG_IN_16_msg_in),
.o_LDPC_ENC_MSG_IN_17_msg_in(o_LDPC_ENC_MSG_IN_17_msg_in),
.o_LDPC_ENC_MSG_IN_18_msg_in(o_LDPC_ENC_MSG_IN_18_msg_in),
.o_LDPC_ENC_MSG_IN_19_msg_in(o_LDPC_ENC_MSG_IN_19_msg_in),
.o_LDPC_ENC_MSG_IN_20_msg_in(o_LDPC_ENC_MSG_IN_20_msg_in),
.o_LDPC_ENC_MSG_IN_21_msg_in(o_LDPC_ENC_MSG_IN_21_msg_in),
.o_LDPC_ENC_MSG_IN_22_msg_in(o_LDPC_ENC_MSG_IN_22_msg_in),
.o_LDPC_ENC_MSG_IN_23_msg_in(o_LDPC_ENC_MSG_IN_23_msg_in),
.o_LDPC_ENC_MSG_IN_24_msg_in(o_LDPC_ENC_MSG_IN_24_msg_in),
.o_LDPC_ENC_MSG_IN_25_msg_in(o_LDPC_ENC_MSG_IN_25_msg_in),
.o_LDPC_ENC_MSG_IN_26_msg_in(o_LDPC_ENC_MSG_IN_26_msg_in),
.o_LDPC_ENC_MSG_IN_27_msg_in(o_LDPC_ENC_MSG_IN_27_msg_in),
.o_LDPC_ENC_MSG_IN_28_msg_in(o_LDPC_ENC_MSG_IN_28_msg_in),
.o_LDPC_ENC_MSG_IN_29_msg_in(o_LDPC_ENC_MSG_IN_29_msg_in),
.o_LDPC_ENC_MSG_IN_30_msg_in(o_LDPC_ENC_MSG_IN_30_msg_in),
.o_LDPC_ENC_MSG_IN_31_msg_in(o_LDPC_ENC_MSG_IN_31_msg_in),
.o_LDPC_ENC_MSG_IN_32_msg_in(o_LDPC_ENC_MSG_IN_32_msg_in),
.o_LDPC_ENC_MSG_IN_33_msg_in(o_LDPC_ENC_MSG_IN_33_msg_in),
.o_LDPC_ENC_MSG_IN_34_msg_in(o_LDPC_ENC_MSG_IN_34_msg_in),
.o_LDPC_ENC_MSG_IN_35_msg_in(o_LDPC_ENC_MSG_IN_35_msg_in),
.o_LDPC_ENC_MSG_IN_36_msg_in(o_LDPC_ENC_MSG_IN_36_msg_in),
.o_LDPC_ENC_MSG_IN_37_msg_in(o_LDPC_ENC_MSG_IN_37_msg_in),
.o_LDPC_ENC_MSG_IN_38_msg_in(o_LDPC_ENC_MSG_IN_38_msg_in),
.o_LDPC_ENC_MSG_IN_39_msg_in(o_LDPC_ENC_MSG_IN_39_msg_in),
.i_LDPC_ENC_CODEWRD_0_enc_codeword(i_LDPC_ENC_CODEWRD_0_enc_codeword),
.i_LDPC_ENC_CODEWRD_1_enc_codeword(i_LDPC_ENC_CODEWRD_1_enc_codeword),
.i_LDPC_ENC_CODEWRD_2_enc_codeword(i_LDPC_ENC_CODEWRD_2_enc_codeword),
.i_LDPC_ENC_CODEWRD_3_enc_codeword(i_LDPC_ENC_CODEWRD_3_enc_codeword),
.i_LDPC_ENC_CODEWRD_4_enc_codeword(i_LDPC_ENC_CODEWRD_4_enc_codeword),
.i_LDPC_ENC_CODEWRD_5_enc_codeword(i_LDPC_ENC_CODEWRD_5_enc_codeword),
.i_LDPC_ENC_CODEWRD_6_enc_codeword(i_LDPC_ENC_CODEWRD_6_enc_codeword),
.i_LDPC_ENC_CODEWRD_7_enc_codeword(i_LDPC_ENC_CODEWRD_7_enc_codeword),
.i_LDPC_ENC_CODEWRD_8_enc_codeword(i_LDPC_ENC_CODEWRD_8_enc_codeword),
.i_LDPC_ENC_CODEWRD_9_enc_codeword(i_LDPC_ENC_CODEWRD_9_enc_codeword),
.i_LDPC_ENC_CODEWRD_10_enc_codeword(i_LDPC_ENC_CODEWRD_10_enc_codeword),
.i_LDPC_ENC_CODEWRD_11_enc_codeword(i_LDPC_ENC_CODEWRD_11_enc_codeword),
.i_LDPC_ENC_CODEWRD_12_enc_codeword(i_LDPC_ENC_CODEWRD_12_enc_codeword),
.i_LDPC_ENC_CODEWRD_13_enc_codeword(i_LDPC_ENC_CODEWRD_13_enc_codeword),
.i_LDPC_ENC_CODEWRD_14_enc_codeword(i_LDPC_ENC_CODEWRD_14_enc_codeword),
.i_LDPC_ENC_CODEWRD_15_enc_codeword(i_LDPC_ENC_CODEWRD_15_enc_codeword),
.i_LDPC_ENC_CODEWRD_16_enc_codeword(i_LDPC_ENC_CODEWRD_16_enc_codeword),
.i_LDPC_ENC_CODEWRD_17_enc_codeword(i_LDPC_ENC_CODEWRD_17_enc_codeword),
.i_LDPC_ENC_CODEWRD_18_enc_codeword(i_LDPC_ENC_CODEWRD_18_enc_codeword),
.i_LDPC_ENC_CODEWRD_19_enc_codeword(i_LDPC_ENC_CODEWRD_19_enc_codeword),
.i_LDPC_ENC_CODEWRD_20_enc_codeword(i_LDPC_ENC_CODEWRD_20_enc_codeword),
.i_LDPC_ENC_CODEWRD_21_enc_codeword(i_LDPC_ENC_CODEWRD_21_enc_codeword),
.i_LDPC_ENC_CODEWRD_22_enc_codeword(i_LDPC_ENC_CODEWRD_22_enc_codeword),
.i_LDPC_ENC_CODEWRD_23_enc_codeword(i_LDPC_ENC_CODEWRD_23_enc_codeword),
.i_LDPC_ENC_CODEWRD_24_enc_codeword(i_LDPC_ENC_CODEWRD_24_enc_codeword),
.i_LDPC_ENC_CODEWRD_25_enc_codeword(i_LDPC_ENC_CODEWRD_25_enc_codeword),
.i_LDPC_ENC_CODEWRD_26_enc_codeword(i_LDPC_ENC_CODEWRD_26_enc_codeword),
.i_LDPC_ENC_CODEWRD_27_enc_codeword(i_LDPC_ENC_CODEWRD_27_enc_codeword),
.i_LDPC_ENC_CODEWRD_28_enc_codeword(i_LDPC_ENC_CODEWRD_28_enc_codeword),
.i_LDPC_ENC_CODEWRD_29_enc_codeword(i_LDPC_ENC_CODEWRD_29_enc_codeword),
.i_LDPC_ENC_CODEWRD_30_enc_codeword(i_LDPC_ENC_CODEWRD_30_enc_codeword),
.i_LDPC_ENC_CODEWRD_31_enc_codeword(i_LDPC_ENC_CODEWRD_31_enc_codeword),
.i_LDPC_ENC_CODEWRD_32_enc_codeword(i_LDPC_ENC_CODEWRD_32_enc_codeword),
.i_LDPC_ENC_CODEWRD_33_enc_codeword(i_LDPC_ENC_CODEWRD_33_enc_codeword),
.i_LDPC_ENC_CODEWRD_34_enc_codeword(i_LDPC_ENC_CODEWRD_34_enc_codeword),
.i_LDPC_ENC_CODEWRD_35_enc_codeword(i_LDPC_ENC_CODEWRD_35_enc_codeword),
.i_LDPC_ENC_CODEWRD_36_enc_codeword(i_LDPC_ENC_CODEWRD_36_enc_codeword),
.i_LDPC_ENC_CODEWRD_37_enc_codeword(i_LDPC_ENC_CODEWRD_37_enc_codeword),
.i_LDPC_ENC_CODEWRD_38_enc_codeword(i_LDPC_ENC_CODEWRD_38_enc_codeword),
.i_LDPC_ENC_CODEWRD_39_enc_codeword(i_LDPC_ENC_CODEWRD_39_enc_codeword),
.i_LDPC_ENC_CODEWRD_40_enc_codeword(i_LDPC_ENC_CODEWRD_40_enc_codeword),
.i_LDPC_ENC_CODEWRD_41_enc_codeword(i_LDPC_ENC_CODEWRD_41_enc_codeword),
.i_LDPC_ENC_CODEWRD_42_enc_codeword(i_LDPC_ENC_CODEWRD_42_enc_codeword),
.i_LDPC_ENC_CODEWRD_43_enc_codeword(i_LDPC_ENC_CODEWRD_43_enc_codeword),
.i_LDPC_ENC_CODEWRD_44_enc_codeword(i_LDPC_ENC_CODEWRD_44_enc_codeword),
.i_LDPC_ENC_CODEWRD_45_enc_codeword(i_LDPC_ENC_CODEWRD_45_enc_codeword),
.i_LDPC_ENC_CODEWRD_46_enc_codeword(i_LDPC_ENC_CODEWRD_46_enc_codeword),
.i_LDPC_ENC_CODEWRD_47_enc_codeword(i_LDPC_ENC_CODEWRD_47_enc_codeword),
.i_LDPC_ENC_CODEWRD_48_enc_codeword(i_LDPC_ENC_CODEWRD_48_enc_codeword),
.i_LDPC_ENC_CODEWRD_49_enc_codeword(i_LDPC_ENC_CODEWRD_49_enc_codeword),
.i_LDPC_ENC_CODEWRD_50_enc_codeword(i_LDPC_ENC_CODEWRD_50_enc_codeword),
.i_LDPC_ENC_CODEWRD_51_enc_codeword(i_LDPC_ENC_CODEWRD_51_enc_codeword),
.i_LDPC_ENC_CODEWRD_52_enc_codeword(i_LDPC_ENC_CODEWRD_52_enc_codeword),
.i_LDPC_ENC_CODEWRD_53_enc_codeword(i_LDPC_ENC_CODEWRD_53_enc_codeword),
.i_LDPC_ENC_CODEWRD_54_enc_codeword(i_LDPC_ENC_CODEWRD_54_enc_codeword),
.i_LDPC_ENC_CODEWRD_55_enc_codeword(i_LDPC_ENC_CODEWRD_55_enc_codeword),
.i_LDPC_ENC_CODEWRD_56_enc_codeword(i_LDPC_ENC_CODEWRD_56_enc_codeword),
.i_LDPC_ENC_CODEWRD_57_enc_codeword(i_LDPC_ENC_CODEWRD_57_enc_codeword),
.i_LDPC_ENC_CODEWRD_58_enc_codeword(i_LDPC_ENC_CODEWRD_58_enc_codeword),
.i_LDPC_ENC_CODEWRD_59_enc_codeword(i_LDPC_ENC_CODEWRD_59_enc_codeword),
.i_LDPC_ENC_CODEWRD_60_enc_codeword(i_LDPC_ENC_CODEWRD_60_enc_codeword),
.i_LDPC_ENC_CODEWRD_61_enc_codeword(i_LDPC_ENC_CODEWRD_61_enc_codeword),
.i_LDPC_ENC_CODEWRD_62_enc_codeword(i_LDPC_ENC_CODEWRD_62_enc_codeword),
.i_LDPC_ENC_CODEWRD_63_enc_codeword(i_LDPC_ENC_CODEWRD_63_enc_codeword),
.i_LDPC_ENC_CODEWRD_64_enc_codeword(i_LDPC_ENC_CODEWRD_64_enc_codeword),
.i_LDPC_ENC_CODEWRD_65_enc_codeword(i_LDPC_ENC_CODEWRD_65_enc_codeword),
.i_LDPC_ENC_CODEWRD_66_enc_codeword(i_LDPC_ENC_CODEWRD_66_enc_codeword),
.i_LDPC_ENC_CODEWRD_67_enc_codeword(i_LDPC_ENC_CODEWRD_67_enc_codeword),
.i_LDPC_ENC_CODEWRD_68_enc_codeword(i_LDPC_ENC_CODEWRD_68_enc_codeword),
.i_LDPC_ENC_CODEWRD_69_enc_codeword(i_LDPC_ENC_CODEWRD_69_enc_codeword),
.i_LDPC_ENC_CODEWRD_70_enc_codeword(i_LDPC_ENC_CODEWRD_70_enc_codeword),
.i_LDPC_ENC_CODEWRD_71_enc_codeword(i_LDPC_ENC_CODEWRD_71_enc_codeword),
.i_LDPC_ENC_CODEWRD_72_enc_codeword(i_LDPC_ENC_CODEWRD_72_enc_codeword),
.i_LDPC_ENC_CODEWRD_73_enc_codeword(i_LDPC_ENC_CODEWRD_73_enc_codeword),
.i_LDPC_ENC_CODEWRD_74_enc_codeword(i_LDPC_ENC_CODEWRD_74_enc_codeword),
.i_LDPC_ENC_CODEWRD_75_enc_codeword(i_LDPC_ENC_CODEWRD_75_enc_codeword),
.i_LDPC_ENC_CODEWRD_76_enc_codeword(i_LDPC_ENC_CODEWRD_76_enc_codeword),
.i_LDPC_ENC_CODEWRD_77_enc_codeword(i_LDPC_ENC_CODEWRD_77_enc_codeword),
.i_LDPC_ENC_CODEWRD_78_enc_codeword(i_LDPC_ENC_CODEWRD_78_enc_codeword),
.i_LDPC_ENC_CODEWRD_79_enc_codeword(i_LDPC_ENC_CODEWRD_79_enc_codeword),
.i_LDPC_ENC_CODEWRD_80_enc_codeword(i_LDPC_ENC_CODEWRD_80_enc_codeword),
.i_LDPC_ENC_CODEWRD_81_enc_codeword(i_LDPC_ENC_CODEWRD_81_enc_codeword),
.i_LDPC_ENC_CODEWRD_82_enc_codeword(i_LDPC_ENC_CODEWRD_82_enc_codeword),
.i_LDPC_ENC_CODEWRD_83_enc_codeword(i_LDPC_ENC_CODEWRD_83_enc_codeword),
.i_LDPC_ENC_CODEWRD_84_enc_codeword(i_LDPC_ENC_CODEWRD_84_enc_codeword),
.i_LDPC_ENC_CODEWRD_85_enc_codeword(i_LDPC_ENC_CODEWRD_85_enc_codeword),
.i_LDPC_ENC_CODEWRD_86_enc_codeword(i_LDPC_ENC_CODEWRD_86_enc_codeword),
.i_LDPC_ENC_CODEWRD_87_enc_codeword(i_LDPC_ENC_CODEWRD_87_enc_codeword),
.i_LDPC_ENC_CODEWRD_88_enc_codeword(i_LDPC_ENC_CODEWRD_88_enc_codeword),
.i_LDPC_ENC_CODEWRD_89_enc_codeword(i_LDPC_ENC_CODEWRD_89_enc_codeword),
.i_LDPC_ENC_CODEWRD_90_enc_codeword(i_LDPC_ENC_CODEWRD_90_enc_codeword),
.i_LDPC_ENC_CODEWRD_91_enc_codeword(i_LDPC_ENC_CODEWRD_91_enc_codeword),
.i_LDPC_ENC_CODEWRD_92_enc_codeword(i_LDPC_ENC_CODEWRD_92_enc_codeword),
.i_LDPC_ENC_CODEWRD_93_enc_codeword(i_LDPC_ENC_CODEWRD_93_enc_codeword),
.i_LDPC_ENC_CODEWRD_94_enc_codeword(i_LDPC_ENC_CODEWRD_94_enc_codeword),
.i_LDPC_ENC_CODEWRD_95_enc_codeword(i_LDPC_ENC_CODEWRD_95_enc_codeword),
.i_LDPC_ENC_CODEWRD_96_enc_codeword(i_LDPC_ENC_CODEWRD_96_enc_codeword),
.i_LDPC_ENC_CODEWRD_97_enc_codeword(i_LDPC_ENC_CODEWRD_97_enc_codeword),
.i_LDPC_ENC_CODEWRD_98_enc_codeword(i_LDPC_ENC_CODEWRD_98_enc_codeword),
.i_LDPC_ENC_CODEWRD_99_enc_codeword(i_LDPC_ENC_CODEWRD_99_enc_codeword),
.i_LDPC_ENC_CODEWRD_100_enc_codeword(i_LDPC_ENC_CODEWRD_100_enc_codeword),
.i_LDPC_ENC_CODEWRD_101_enc_codeword(i_LDPC_ENC_CODEWRD_101_enc_codeword),
.i_LDPC_ENC_CODEWRD_102_enc_codeword(i_LDPC_ENC_CODEWRD_102_enc_codeword),
.i_LDPC_ENC_CODEWRD_103_enc_codeword(i_LDPC_ENC_CODEWRD_103_enc_codeword),
.i_LDPC_ENC_CODEWRD_104_enc_codeword(i_LDPC_ENC_CODEWRD_104_enc_codeword),
.i_LDPC_ENC_CODEWRD_105_enc_codeword(i_LDPC_ENC_CODEWRD_105_enc_codeword),
.i_LDPC_ENC_CODEWRD_106_enc_codeword(i_LDPC_ENC_CODEWRD_106_enc_codeword),
.i_LDPC_ENC_CODEWRD_107_enc_codeword(i_LDPC_ENC_CODEWRD_107_enc_codeword),
.i_LDPC_ENC_CODEWRD_108_enc_codeword(i_LDPC_ENC_CODEWRD_108_enc_codeword),
.i_LDPC_ENC_CODEWRD_109_enc_codeword(i_LDPC_ENC_CODEWRD_109_enc_codeword),
.i_LDPC_ENC_CODEWRD_110_enc_codeword(i_LDPC_ENC_CODEWRD_110_enc_codeword),
.i_LDPC_ENC_CODEWRD_111_enc_codeword(i_LDPC_ENC_CODEWRD_111_enc_codeword),
.i_LDPC_ENC_CODEWRD_112_enc_codeword(i_LDPC_ENC_CODEWRD_112_enc_codeword),
.i_LDPC_ENC_CODEWRD_113_enc_codeword(i_LDPC_ENC_CODEWRD_113_enc_codeword),
.i_LDPC_ENC_CODEWRD_114_enc_codeword(i_LDPC_ENC_CODEWRD_114_enc_codeword),
.i_LDPC_ENC_CODEWRD_115_enc_codeword(i_LDPC_ENC_CODEWRD_115_enc_codeword),
.i_LDPC_ENC_CODEWRD_116_enc_codeword(i_LDPC_ENC_CODEWRD_116_enc_codeword),
.i_LDPC_ENC_CODEWRD_117_enc_codeword(i_LDPC_ENC_CODEWRD_117_enc_codeword),
.i_LDPC_ENC_CODEWRD_118_enc_codeword(i_LDPC_ENC_CODEWRD_118_enc_codeword),
.i_LDPC_ENC_CODEWRD_119_enc_codeword(i_LDPC_ENC_CODEWRD_119_enc_codeword),
.i_LDPC_ENC_CODEWRD_120_enc_codeword(i_LDPC_ENC_CODEWRD_120_enc_codeword),
.i_LDPC_ENC_CODEWRD_121_enc_codeword(i_LDPC_ENC_CODEWRD_121_enc_codeword),
.i_LDPC_ENC_CODEWRD_122_enc_codeword(i_LDPC_ENC_CODEWRD_122_enc_codeword),
.i_LDPC_ENC_CODEWRD_123_enc_codeword(i_LDPC_ENC_CODEWRD_123_enc_codeword),
.i_LDPC_ENC_CODEWRD_124_enc_codeword(i_LDPC_ENC_CODEWRD_124_enc_codeword),
.i_LDPC_ENC_CODEWRD_125_enc_codeword(i_LDPC_ENC_CODEWRD_125_enc_codeword),
.i_LDPC_ENC_CODEWRD_126_enc_codeword(i_LDPC_ENC_CODEWRD_126_enc_codeword),
.i_LDPC_ENC_CODEWRD_127_enc_codeword(i_LDPC_ENC_CODEWRD_127_enc_codeword),
.i_LDPC_ENC_CODEWRD_128_enc_codeword(i_LDPC_ENC_CODEWRD_128_enc_codeword),
.i_LDPC_ENC_CODEWRD_129_enc_codeword(i_LDPC_ENC_CODEWRD_129_enc_codeword),
.i_LDPC_ENC_CODEWRD_130_enc_codeword(i_LDPC_ENC_CODEWRD_130_enc_codeword),
.i_LDPC_ENC_CODEWRD_131_enc_codeword(i_LDPC_ENC_CODEWRD_131_enc_codeword),
.i_LDPC_ENC_CODEWRD_132_enc_codeword(i_LDPC_ENC_CODEWRD_132_enc_codeword),
.i_LDPC_ENC_CODEWRD_133_enc_codeword(i_LDPC_ENC_CODEWRD_133_enc_codeword),
.i_LDPC_ENC_CODEWRD_134_enc_codeword(i_LDPC_ENC_CODEWRD_134_enc_codeword),
.i_LDPC_ENC_CODEWRD_135_enc_codeword(i_LDPC_ENC_CODEWRD_135_enc_codeword),
.i_LDPC_ENC_CODEWRD_136_enc_codeword(i_LDPC_ENC_CODEWRD_136_enc_codeword),
.i_LDPC_ENC_CODEWRD_137_enc_codeword(i_LDPC_ENC_CODEWRD_137_enc_codeword),
.i_LDPC_ENC_CODEWRD_138_enc_codeword(i_LDPC_ENC_CODEWRD_138_enc_codeword),
.i_LDPC_ENC_CODEWRD_139_enc_codeword(i_LDPC_ENC_CODEWRD_139_enc_codeword),
.i_LDPC_ENC_CODEWRD_140_enc_codeword(i_LDPC_ENC_CODEWRD_140_enc_codeword),
.i_LDPC_ENC_CODEWRD_141_enc_codeword(i_LDPC_ENC_CODEWRD_141_enc_codeword),
.i_LDPC_ENC_CODEWRD_142_enc_codeword(i_LDPC_ENC_CODEWRD_142_enc_codeword),
.i_LDPC_ENC_CODEWRD_143_enc_codeword(i_LDPC_ENC_CODEWRD_143_enc_codeword),
.i_LDPC_ENC_CODEWRD_144_enc_codeword(i_LDPC_ENC_CODEWRD_144_enc_codeword),
.i_LDPC_ENC_CODEWRD_145_enc_codeword(i_LDPC_ENC_CODEWRD_145_enc_codeword),
.i_LDPC_ENC_CODEWRD_146_enc_codeword(i_LDPC_ENC_CODEWRD_146_enc_codeword),
.i_LDPC_ENC_CODEWRD_147_enc_codeword(i_LDPC_ENC_CODEWRD_147_enc_codeword),
.i_LDPC_ENC_CODEWRD_148_enc_codeword(i_LDPC_ENC_CODEWRD_148_enc_codeword),
.i_LDPC_ENC_CODEWRD_149_enc_codeword(i_LDPC_ENC_CODEWRD_149_enc_codeword),
.i_LDPC_ENC_CODEWRD_150_enc_codeword(i_LDPC_ENC_CODEWRD_150_enc_codeword),
.i_LDPC_ENC_CODEWRD_151_enc_codeword(i_LDPC_ENC_CODEWRD_151_enc_codeword),
.i_LDPC_ENC_CODEWRD_152_enc_codeword(i_LDPC_ENC_CODEWRD_152_enc_codeword),
.i_LDPC_ENC_CODEWRD_153_enc_codeword(i_LDPC_ENC_CODEWRD_153_enc_codeword),
.i_LDPC_ENC_CODEWRD_154_enc_codeword(i_LDPC_ENC_CODEWRD_154_enc_codeword),
.i_LDPC_ENC_CODEWRD_155_enc_codeword(i_LDPC_ENC_CODEWRD_155_enc_codeword),
.i_LDPC_ENC_CODEWRD_156_enc_codeword(i_LDPC_ENC_CODEWRD_156_enc_codeword),
.i_LDPC_ENC_CODEWRD_157_enc_codeword(i_LDPC_ENC_CODEWRD_157_enc_codeword),
.i_LDPC_ENC_CODEWRD_158_enc_codeword(i_LDPC_ENC_CODEWRD_158_enc_codeword),
.i_LDPC_ENC_CODEWRD_159_enc_codeword(i_LDPC_ENC_CODEWRD_159_enc_codeword),
.i_LDPC_ENC_CODEWRD_160_enc_codeword(i_LDPC_ENC_CODEWRD_160_enc_codeword),
.i_LDPC_ENC_CODEWRD_161_enc_codeword(i_LDPC_ENC_CODEWRD_161_enc_codeword),
.i_LDPC_ENC_CODEWRD_162_enc_codeword(i_LDPC_ENC_CODEWRD_162_enc_codeword),
.i_LDPC_ENC_CODEWRD_163_enc_codeword(i_LDPC_ENC_CODEWRD_163_enc_codeword),
.i_LDPC_ENC_CODEWRD_164_enc_codeword(i_LDPC_ENC_CODEWRD_164_enc_codeword),
.i_LDPC_ENC_CODEWRD_165_enc_codeword(i_LDPC_ENC_CODEWRD_165_enc_codeword),
.i_LDPC_ENC_CODEWRD_166_enc_codeword(i_LDPC_ENC_CODEWRD_166_enc_codeword),
.i_LDPC_ENC_CODEWRD_167_enc_codeword(i_LDPC_ENC_CODEWRD_167_enc_codeword),
.i_LDPC_ENC_CODEWRD_168_enc_codeword(i_LDPC_ENC_CODEWRD_168_enc_codeword),
.i_LDPC_ENC_CODEWRD_169_enc_codeword(i_LDPC_ENC_CODEWRD_169_enc_codeword),
.i_LDPC_ENC_CODEWRD_170_enc_codeword(i_LDPC_ENC_CODEWRD_170_enc_codeword),
.i_LDPC_ENC_CODEWRD_171_enc_codeword(i_LDPC_ENC_CODEWRD_171_enc_codeword),
.i_LDPC_ENC_CODEWRD_172_enc_codeword(i_LDPC_ENC_CODEWRD_172_enc_codeword),
.i_LDPC_ENC_CODEWRD_173_enc_codeword(i_LDPC_ENC_CODEWRD_173_enc_codeword),
.i_LDPC_ENC_CODEWRD_174_enc_codeword(i_LDPC_ENC_CODEWRD_174_enc_codeword),
.i_LDPC_ENC_CODEWRD_175_enc_codeword(i_LDPC_ENC_CODEWRD_175_enc_codeword),
.i_LDPC_ENC_CODEWRD_176_enc_codeword(i_LDPC_ENC_CODEWRD_176_enc_codeword),
.i_LDPC_ENC_CODEWRD_177_enc_codeword(i_LDPC_ENC_CODEWRD_177_enc_codeword),
.i_LDPC_ENC_CODEWRD_178_enc_codeword(i_LDPC_ENC_CODEWRD_178_enc_codeword),
.i_LDPC_ENC_CODEWRD_179_enc_codeword(i_LDPC_ENC_CODEWRD_179_enc_codeword),
.i_LDPC_ENC_CODEWRD_180_enc_codeword(i_LDPC_ENC_CODEWRD_180_enc_codeword),
.i_LDPC_ENC_CODEWRD_181_enc_codeword(i_LDPC_ENC_CODEWRD_181_enc_codeword),
.i_LDPC_ENC_CODEWRD_182_enc_codeword(i_LDPC_ENC_CODEWRD_182_enc_codeword),
.i_LDPC_ENC_CODEWRD_183_enc_codeword(i_LDPC_ENC_CODEWRD_183_enc_codeword),
.i_LDPC_ENC_CODEWRD_184_enc_codeword(i_LDPC_ENC_CODEWRD_184_enc_codeword),
.i_LDPC_ENC_CODEWRD_185_enc_codeword(i_LDPC_ENC_CODEWRD_185_enc_codeword),
.i_LDPC_ENC_CODEWRD_186_enc_codeword(i_LDPC_ENC_CODEWRD_186_enc_codeword),
.i_LDPC_ENC_CODEWRD_187_enc_codeword(i_LDPC_ENC_CODEWRD_187_enc_codeword),
.i_LDPC_ENC_CODEWRD_188_enc_codeword(i_LDPC_ENC_CODEWRD_188_enc_codeword),
.i_LDPC_ENC_CODEWRD_189_enc_codeword(i_LDPC_ENC_CODEWRD_189_enc_codeword),
.i_LDPC_ENC_CODEWRD_190_enc_codeword(i_LDPC_ENC_CODEWRD_190_enc_codeword),
.i_LDPC_ENC_CODEWRD_191_enc_codeword(i_LDPC_ENC_CODEWRD_191_enc_codeword),
.i_LDPC_ENC_CODEWRD_192_enc_codeword(i_LDPC_ENC_CODEWRD_192_enc_codeword),
.i_LDPC_ENC_CODEWRD_193_enc_codeword(i_LDPC_ENC_CODEWRD_193_enc_codeword),
.i_LDPC_ENC_CODEWRD_194_enc_codeword(i_LDPC_ENC_CODEWRD_194_enc_codeword),
.i_LDPC_ENC_CODEWRD_195_enc_codeword(i_LDPC_ENC_CODEWRD_195_enc_codeword),
.i_LDPC_ENC_CODEWRD_196_enc_codeword(i_LDPC_ENC_CODEWRD_196_enc_codeword),
.i_LDPC_ENC_CODEWRD_197_enc_codeword(i_LDPC_ENC_CODEWRD_197_enc_codeword),
.i_LDPC_ENC_CODEWRD_198_enc_codeword(i_LDPC_ENC_CODEWRD_198_enc_codeword),
.i_LDPC_ENC_CODEWRD_199_enc_codeword(i_LDPC_ENC_CODEWRD_199_enc_codeword),
.i_LDPC_ENC_CODEWRD_200_enc_codeword(i_LDPC_ENC_CODEWRD_200_enc_codeword),
.i_LDPC_ENC_CODEWRD_201_enc_codeword(i_LDPC_ENC_CODEWRD_201_enc_codeword),
.i_LDPC_ENC_CODEWRD_202_enc_codeword(i_LDPC_ENC_CODEWRD_202_enc_codeword),
.i_LDPC_ENC_CODEWRD_203_enc_codeword(i_LDPC_ENC_CODEWRD_203_enc_codeword),
.i_LDPC_ENC_CODEWRD_204_enc_codeword(i_LDPC_ENC_CODEWRD_204_enc_codeword),
.i_LDPC_ENC_CODEWRD_205_enc_codeword(i_LDPC_ENC_CODEWRD_205_enc_codeword),
.i_LDPC_ENC_CODEWRD_206_enc_codeword(i_LDPC_ENC_CODEWRD_206_enc_codeword),
.i_LDPC_ENC_CODEWRD_207_enc_codeword(i_LDPC_ENC_CODEWRD_207_enc_codeword),
.i_LDPC_ENC_CODEWRD_VLD_enc_codeword_valid(i_LDPC_ENC_CODEWRD_VLD_enc_codeword_valid),
.o_LDPC_DEC_CODEWRD_0_cword_q0(o_LDPC_DEC_CODEWRD_0_cword_q0),
.o_LDPC_DEC_CODEWRD_1_cword_q0(o_LDPC_DEC_CODEWRD_1_cword_q0),
.o_LDPC_DEC_CODEWRD_2_cword_q0(o_LDPC_DEC_CODEWRD_2_cword_q0),
.o_LDPC_DEC_CODEWRD_3_cword_q0(o_LDPC_DEC_CODEWRD_3_cword_q0),
.o_LDPC_DEC_CODEWRD_4_cword_q0(o_LDPC_DEC_CODEWRD_4_cword_q0),
.o_LDPC_DEC_CODEWRD_5_cword_q0(o_LDPC_DEC_CODEWRD_5_cword_q0),
.o_LDPC_DEC_CODEWRD_6_cword_q0(o_LDPC_DEC_CODEWRD_6_cword_q0),
.o_LDPC_DEC_CODEWRD_7_cword_q0(o_LDPC_DEC_CODEWRD_7_cword_q0),
.o_LDPC_DEC_CODEWRD_8_cword_q0(o_LDPC_DEC_CODEWRD_8_cword_q0),
.o_LDPC_DEC_CODEWRD_9_cword_q0(o_LDPC_DEC_CODEWRD_9_cword_q0),
.o_LDPC_DEC_CODEWRD_10_cword_q0(o_LDPC_DEC_CODEWRD_10_cword_q0),
.o_LDPC_DEC_CODEWRD_11_cword_q0(o_LDPC_DEC_CODEWRD_11_cword_q0),
.o_LDPC_DEC_CODEWRD_12_cword_q0(o_LDPC_DEC_CODEWRD_12_cword_q0),
.o_LDPC_DEC_CODEWRD_13_cword_q0(o_LDPC_DEC_CODEWRD_13_cword_q0),
.o_LDPC_DEC_CODEWRD_14_cword_q0(o_LDPC_DEC_CODEWRD_14_cword_q0),
.o_LDPC_DEC_CODEWRD_15_cword_q0(o_LDPC_DEC_CODEWRD_15_cword_q0),
.o_LDPC_DEC_CODEWRD_16_cword_q0(o_LDPC_DEC_CODEWRD_16_cword_q0),
.o_LDPC_DEC_CODEWRD_17_cword_q0(o_LDPC_DEC_CODEWRD_17_cword_q0),
.o_LDPC_DEC_CODEWRD_18_cword_q0(o_LDPC_DEC_CODEWRD_18_cword_q0),
.o_LDPC_DEC_CODEWRD_19_cword_q0(o_LDPC_DEC_CODEWRD_19_cword_q0),
.o_LDPC_DEC_CODEWRD_20_cword_q0(o_LDPC_DEC_CODEWRD_20_cword_q0),
.o_LDPC_DEC_CODEWRD_21_cword_q0(o_LDPC_DEC_CODEWRD_21_cword_q0),
.o_LDPC_DEC_CODEWRD_22_cword_q0(o_LDPC_DEC_CODEWRD_22_cword_q0),
.o_LDPC_DEC_CODEWRD_23_cword_q0(o_LDPC_DEC_CODEWRD_23_cword_q0),
.o_LDPC_DEC_CODEWRD_24_cword_q0(o_LDPC_DEC_CODEWRD_24_cword_q0),
.o_LDPC_DEC_CODEWRD_25_cword_q0(o_LDPC_DEC_CODEWRD_25_cword_q0),
.o_LDPC_DEC_CODEWRD_26_cword_q0(o_LDPC_DEC_CODEWRD_26_cword_q0),
.o_LDPC_DEC_CODEWRD_27_cword_q0(o_LDPC_DEC_CODEWRD_27_cword_q0),
.o_LDPC_DEC_CODEWRD_28_cword_q0(o_LDPC_DEC_CODEWRD_28_cword_q0),
.o_LDPC_DEC_CODEWRD_29_cword_q0(o_LDPC_DEC_CODEWRD_29_cword_q0),
.o_LDPC_DEC_CODEWRD_30_cword_q0(o_LDPC_DEC_CODEWRD_30_cword_q0),
.o_LDPC_DEC_CODEWRD_31_cword_q0(o_LDPC_DEC_CODEWRD_31_cword_q0),
.o_LDPC_DEC_CODEWRD_32_cword_q0(o_LDPC_DEC_CODEWRD_32_cword_q0),
.o_LDPC_DEC_CODEWRD_33_cword_q0(o_LDPC_DEC_CODEWRD_33_cword_q0),
.o_LDPC_DEC_CODEWRD_34_cword_q0(o_LDPC_DEC_CODEWRD_34_cword_q0),
.o_LDPC_DEC_CODEWRD_35_cword_q0(o_LDPC_DEC_CODEWRD_35_cword_q0),
.o_LDPC_DEC_CODEWRD_36_cword_q0(o_LDPC_DEC_CODEWRD_36_cword_q0),
.o_LDPC_DEC_CODEWRD_37_cword_q0(o_LDPC_DEC_CODEWRD_37_cword_q0),
.o_LDPC_DEC_CODEWRD_38_cword_q0(o_LDPC_DEC_CODEWRD_38_cword_q0),
.o_LDPC_DEC_CODEWRD_39_cword_q0(o_LDPC_DEC_CODEWRD_39_cword_q0),
.o_LDPC_DEC_CODEWRD_40_cword_q0(o_LDPC_DEC_CODEWRD_40_cword_q0),
.o_LDPC_DEC_CODEWRD_41_cword_q0(o_LDPC_DEC_CODEWRD_41_cword_q0),
.o_LDPC_DEC_CODEWRD_42_cword_q0(o_LDPC_DEC_CODEWRD_42_cword_q0),
.o_LDPC_DEC_CODEWRD_43_cword_q0(o_LDPC_DEC_CODEWRD_43_cword_q0),
.o_LDPC_DEC_CODEWRD_44_cword_q0(o_LDPC_DEC_CODEWRD_44_cword_q0),
.o_LDPC_DEC_CODEWRD_45_cword_q0(o_LDPC_DEC_CODEWRD_45_cword_q0),
.o_LDPC_DEC_CODEWRD_46_cword_q0(o_LDPC_DEC_CODEWRD_46_cword_q0),
.o_LDPC_DEC_CODEWRD_47_cword_q0(o_LDPC_DEC_CODEWRD_47_cword_q0),
.o_LDPC_DEC_CODEWRD_48_cword_q0(o_LDPC_DEC_CODEWRD_48_cword_q0),
.o_LDPC_DEC_CODEWRD_49_cword_q0(o_LDPC_DEC_CODEWRD_49_cword_q0),
.o_LDPC_DEC_CODEWRD_50_cword_q0(o_LDPC_DEC_CODEWRD_50_cword_q0),
.o_LDPC_DEC_CODEWRD_51_cword_q0(o_LDPC_DEC_CODEWRD_51_cword_q0),
.o_LDPC_DEC_CODEWRD_52_cword_q0(o_LDPC_DEC_CODEWRD_52_cword_q0),
.o_LDPC_DEC_CODEWRD_53_cword_q0(o_LDPC_DEC_CODEWRD_53_cword_q0),
.o_LDPC_DEC_CODEWRD_54_cword_q0(o_LDPC_DEC_CODEWRD_54_cword_q0),
.o_LDPC_DEC_CODEWRD_55_cword_q0(o_LDPC_DEC_CODEWRD_55_cword_q0),
.o_LDPC_DEC_CODEWRD_56_cword_q0(o_LDPC_DEC_CODEWRD_56_cword_q0),
.o_LDPC_DEC_CODEWRD_57_cword_q0(o_LDPC_DEC_CODEWRD_57_cword_q0),
.o_LDPC_DEC_CODEWRD_58_cword_q0(o_LDPC_DEC_CODEWRD_58_cword_q0),
.o_LDPC_DEC_CODEWRD_59_cword_q0(o_LDPC_DEC_CODEWRD_59_cword_q0),
.o_LDPC_DEC_CODEWRD_60_cword_q0(o_LDPC_DEC_CODEWRD_60_cword_q0),
.o_LDPC_DEC_CODEWRD_61_cword_q0(o_LDPC_DEC_CODEWRD_61_cword_q0),
.o_LDPC_DEC_CODEWRD_62_cword_q0(o_LDPC_DEC_CODEWRD_62_cword_q0),
.o_LDPC_DEC_CODEWRD_63_cword_q0(o_LDPC_DEC_CODEWRD_63_cword_q0),
.o_LDPC_DEC_CODEWRD_64_cword_q0(o_LDPC_DEC_CODEWRD_64_cword_q0),
.o_LDPC_DEC_CODEWRD_65_cword_q0(o_LDPC_DEC_CODEWRD_65_cword_q0),
.o_LDPC_DEC_CODEWRD_66_cword_q0(o_LDPC_DEC_CODEWRD_66_cword_q0),
.o_LDPC_DEC_CODEWRD_67_cword_q0(o_LDPC_DEC_CODEWRD_67_cword_q0),
.o_LDPC_DEC_CODEWRD_68_cword_q0(o_LDPC_DEC_CODEWRD_68_cword_q0),
.o_LDPC_DEC_CODEWRD_69_cword_q0(o_LDPC_DEC_CODEWRD_69_cword_q0),
.o_LDPC_DEC_CODEWRD_70_cword_q0(o_LDPC_DEC_CODEWRD_70_cword_q0),
.o_LDPC_DEC_CODEWRD_71_cword_q0(o_LDPC_DEC_CODEWRD_71_cword_q0),
.o_LDPC_DEC_CODEWRD_72_cword_q0(o_LDPC_DEC_CODEWRD_72_cword_q0),
.o_LDPC_DEC_CODEWRD_73_cword_q0(o_LDPC_DEC_CODEWRD_73_cword_q0),
.o_LDPC_DEC_CODEWRD_74_cword_q0(o_LDPC_DEC_CODEWRD_74_cword_q0),
.o_LDPC_DEC_CODEWRD_75_cword_q0(o_LDPC_DEC_CODEWRD_75_cword_q0),
.o_LDPC_DEC_CODEWRD_76_cword_q0(o_LDPC_DEC_CODEWRD_76_cword_q0),
.o_LDPC_DEC_CODEWRD_77_cword_q0(o_LDPC_DEC_CODEWRD_77_cword_q0),
.o_LDPC_DEC_CODEWRD_78_cword_q0(o_LDPC_DEC_CODEWRD_78_cword_q0),
.o_LDPC_DEC_CODEWRD_79_cword_q0(o_LDPC_DEC_CODEWRD_79_cword_q0),
.o_LDPC_DEC_CODEWRD_80_cword_q0(o_LDPC_DEC_CODEWRD_80_cword_q0),
.o_LDPC_DEC_CODEWRD_81_cword_q0(o_LDPC_DEC_CODEWRD_81_cword_q0),
.o_LDPC_DEC_CODEWRD_82_cword_q0(o_LDPC_DEC_CODEWRD_82_cword_q0),
.o_LDPC_DEC_CODEWRD_83_cword_q0(o_LDPC_DEC_CODEWRD_83_cword_q0),
.o_LDPC_DEC_CODEWRD_84_cword_q0(o_LDPC_DEC_CODEWRD_84_cword_q0),
.o_LDPC_DEC_CODEWRD_85_cword_q0(o_LDPC_DEC_CODEWRD_85_cword_q0),
.o_LDPC_DEC_CODEWRD_86_cword_q0(o_LDPC_DEC_CODEWRD_86_cword_q0),
.o_LDPC_DEC_CODEWRD_87_cword_q0(o_LDPC_DEC_CODEWRD_87_cword_q0),
.o_LDPC_DEC_CODEWRD_88_cword_q0(o_LDPC_DEC_CODEWRD_88_cword_q0),
.o_LDPC_DEC_CODEWRD_89_cword_q0(o_LDPC_DEC_CODEWRD_89_cword_q0),
.o_LDPC_DEC_CODEWRD_90_cword_q0(o_LDPC_DEC_CODEWRD_90_cword_q0),
.o_LDPC_DEC_CODEWRD_91_cword_q0(o_LDPC_DEC_CODEWRD_91_cword_q0),
.o_LDPC_DEC_CODEWRD_92_cword_q0(o_LDPC_DEC_CODEWRD_92_cword_q0),
.o_LDPC_DEC_CODEWRD_93_cword_q0(o_LDPC_DEC_CODEWRD_93_cword_q0),
.o_LDPC_DEC_CODEWRD_94_cword_q0(o_LDPC_DEC_CODEWRD_94_cword_q0),
.o_LDPC_DEC_CODEWRD_95_cword_q0(o_LDPC_DEC_CODEWRD_95_cword_q0),
.o_LDPC_DEC_CODEWRD_96_cword_q0(o_LDPC_DEC_CODEWRD_96_cword_q0),
.o_LDPC_DEC_CODEWRD_97_cword_q0(o_LDPC_DEC_CODEWRD_97_cword_q0),
.o_LDPC_DEC_CODEWRD_98_cword_q0(o_LDPC_DEC_CODEWRD_98_cword_q0),
.o_LDPC_DEC_CODEWRD_99_cword_q0(o_LDPC_DEC_CODEWRD_99_cword_q0),
.o_LDPC_DEC_CODEWRD_100_cword_q0(o_LDPC_DEC_CODEWRD_100_cword_q0),
.o_LDPC_DEC_CODEWRD_101_cword_q0(o_LDPC_DEC_CODEWRD_101_cword_q0),
.o_LDPC_DEC_CODEWRD_102_cword_q0(o_LDPC_DEC_CODEWRD_102_cword_q0),
.o_LDPC_DEC_CODEWRD_103_cword_q0(o_LDPC_DEC_CODEWRD_103_cword_q0),
.o_LDPC_DEC_CODEWRD_104_cword_q0(o_LDPC_DEC_CODEWRD_104_cword_q0),
.o_LDPC_DEC_CODEWRD_105_cword_q0(o_LDPC_DEC_CODEWRD_105_cword_q0),
.o_LDPC_DEC_CODEWRD_106_cword_q0(o_LDPC_DEC_CODEWRD_106_cword_q0),
.o_LDPC_DEC_CODEWRD_107_cword_q0(o_LDPC_DEC_CODEWRD_107_cword_q0),
.o_LDPC_DEC_CODEWRD_108_cword_q0(o_LDPC_DEC_CODEWRD_108_cword_q0),
.o_LDPC_DEC_CODEWRD_109_cword_q0(o_LDPC_DEC_CODEWRD_109_cword_q0),
.o_LDPC_DEC_CODEWRD_110_cword_q0(o_LDPC_DEC_CODEWRD_110_cword_q0),
.o_LDPC_DEC_CODEWRD_111_cword_q0(o_LDPC_DEC_CODEWRD_111_cword_q0),
.o_LDPC_DEC_CODEWRD_112_cword_q0(o_LDPC_DEC_CODEWRD_112_cword_q0),
.o_LDPC_DEC_CODEWRD_113_cword_q0(o_LDPC_DEC_CODEWRD_113_cword_q0),
.o_LDPC_DEC_CODEWRD_114_cword_q0(o_LDPC_DEC_CODEWRD_114_cword_q0),
.o_LDPC_DEC_CODEWRD_115_cword_q0(o_LDPC_DEC_CODEWRD_115_cword_q0),
.o_LDPC_DEC_CODEWRD_116_cword_q0(o_LDPC_DEC_CODEWRD_116_cword_q0),
.o_LDPC_DEC_CODEWRD_117_cword_q0(o_LDPC_DEC_CODEWRD_117_cword_q0),
.o_LDPC_DEC_CODEWRD_118_cword_q0(o_LDPC_DEC_CODEWRD_118_cword_q0),
.o_LDPC_DEC_CODEWRD_119_cword_q0(o_LDPC_DEC_CODEWRD_119_cword_q0),
.o_LDPC_DEC_CODEWRD_120_cword_q0(o_LDPC_DEC_CODEWRD_120_cword_q0),
.o_LDPC_DEC_CODEWRD_121_cword_q0(o_LDPC_DEC_CODEWRD_121_cword_q0),
.o_LDPC_DEC_CODEWRD_122_cword_q0(o_LDPC_DEC_CODEWRD_122_cword_q0),
.o_LDPC_DEC_CODEWRD_123_cword_q0(o_LDPC_DEC_CODEWRD_123_cword_q0),
.o_LDPC_DEC_CODEWRD_124_cword_q0(o_LDPC_DEC_CODEWRD_124_cword_q0),
.o_LDPC_DEC_CODEWRD_125_cword_q0(o_LDPC_DEC_CODEWRD_125_cword_q0),
.o_LDPC_DEC_CODEWRD_126_cword_q0(o_LDPC_DEC_CODEWRD_126_cword_q0),
.o_LDPC_DEC_CODEWRD_127_cword_q0(o_LDPC_DEC_CODEWRD_127_cword_q0),
.o_LDPC_DEC_CODEWRD_128_cword_q0(o_LDPC_DEC_CODEWRD_128_cword_q0),
.o_LDPC_DEC_CODEWRD_129_cword_q0(o_LDPC_DEC_CODEWRD_129_cword_q0),
.o_LDPC_DEC_CODEWRD_130_cword_q0(o_LDPC_DEC_CODEWRD_130_cword_q0),
.o_LDPC_DEC_CODEWRD_131_cword_q0(o_LDPC_DEC_CODEWRD_131_cword_q0),
.o_LDPC_DEC_CODEWRD_132_cword_q0(o_LDPC_DEC_CODEWRD_132_cword_q0),
.o_LDPC_DEC_CODEWRD_133_cword_q0(o_LDPC_DEC_CODEWRD_133_cword_q0),
.o_LDPC_DEC_CODEWRD_134_cword_q0(o_LDPC_DEC_CODEWRD_134_cword_q0),
.o_LDPC_DEC_CODEWRD_135_cword_q0(o_LDPC_DEC_CODEWRD_135_cword_q0),
.o_LDPC_DEC_CODEWRD_136_cword_q0(o_LDPC_DEC_CODEWRD_136_cword_q0),
.o_LDPC_DEC_CODEWRD_137_cword_q0(o_LDPC_DEC_CODEWRD_137_cword_q0),
.o_LDPC_DEC_CODEWRD_138_cword_q0(o_LDPC_DEC_CODEWRD_138_cword_q0),
.o_LDPC_DEC_CODEWRD_139_cword_q0(o_LDPC_DEC_CODEWRD_139_cword_q0),
.o_LDPC_DEC_CODEWRD_140_cword_q0(o_LDPC_DEC_CODEWRD_140_cword_q0),
.o_LDPC_DEC_CODEWRD_141_cword_q0(o_LDPC_DEC_CODEWRD_141_cword_q0),
.o_LDPC_DEC_CODEWRD_142_cword_q0(o_LDPC_DEC_CODEWRD_142_cword_q0),
.o_LDPC_DEC_CODEWRD_143_cword_q0(o_LDPC_DEC_CODEWRD_143_cword_q0),
.o_LDPC_DEC_CODEWRD_144_cword_q0(o_LDPC_DEC_CODEWRD_144_cword_q0),
.o_LDPC_DEC_CODEWRD_145_cword_q0(o_LDPC_DEC_CODEWRD_145_cword_q0),
.o_LDPC_DEC_CODEWRD_146_cword_q0(o_LDPC_DEC_CODEWRD_146_cword_q0),
.o_LDPC_DEC_CODEWRD_147_cword_q0(o_LDPC_DEC_CODEWRD_147_cword_q0),
.o_LDPC_DEC_CODEWRD_148_cword_q0(o_LDPC_DEC_CODEWRD_148_cword_q0),
.o_LDPC_DEC_CODEWRD_149_cword_q0(o_LDPC_DEC_CODEWRD_149_cword_q0),
.o_LDPC_DEC_CODEWRD_150_cword_q0(o_LDPC_DEC_CODEWRD_150_cword_q0),
.o_LDPC_DEC_CODEWRD_151_cword_q0(o_LDPC_DEC_CODEWRD_151_cword_q0),
.o_LDPC_DEC_CODEWRD_152_cword_q0(o_LDPC_DEC_CODEWRD_152_cword_q0),
.o_LDPC_DEC_CODEWRD_153_cword_q0(o_LDPC_DEC_CODEWRD_153_cword_q0),
.o_LDPC_DEC_CODEWRD_154_cword_q0(o_LDPC_DEC_CODEWRD_154_cword_q0),
.o_LDPC_DEC_CODEWRD_155_cword_q0(o_LDPC_DEC_CODEWRD_155_cword_q0),
.o_LDPC_DEC_CODEWRD_156_cword_q0(o_LDPC_DEC_CODEWRD_156_cword_q0),
.o_LDPC_DEC_CODEWRD_157_cword_q0(o_LDPC_DEC_CODEWRD_157_cword_q0),
.o_LDPC_DEC_CODEWRD_158_cword_q0(o_LDPC_DEC_CODEWRD_158_cword_q0),
.o_LDPC_DEC_CODEWRD_159_cword_q0(o_LDPC_DEC_CODEWRD_159_cword_q0),
.o_LDPC_DEC_CODEWRD_160_cword_q0(o_LDPC_DEC_CODEWRD_160_cword_q0),
.o_LDPC_DEC_CODEWRD_161_cword_q0(o_LDPC_DEC_CODEWRD_161_cword_q0),
.o_LDPC_DEC_CODEWRD_162_cword_q0(o_LDPC_DEC_CODEWRD_162_cword_q0),
.o_LDPC_DEC_CODEWRD_163_cword_q0(o_LDPC_DEC_CODEWRD_163_cword_q0),
.o_LDPC_DEC_CODEWRD_164_cword_q0(o_LDPC_DEC_CODEWRD_164_cword_q0),
.o_LDPC_DEC_CODEWRD_165_cword_q0(o_LDPC_DEC_CODEWRD_165_cword_q0),
.o_LDPC_DEC_CODEWRD_166_cword_q0(o_LDPC_DEC_CODEWRD_166_cword_q0),
.o_LDPC_DEC_CODEWRD_167_cword_q0(o_LDPC_DEC_CODEWRD_167_cword_q0),
.o_LDPC_DEC_CODEWRD_168_cword_q0(o_LDPC_DEC_CODEWRD_168_cword_q0),
.o_LDPC_DEC_CODEWRD_169_cword_q0(o_LDPC_DEC_CODEWRD_169_cword_q0),
.o_LDPC_DEC_CODEWRD_170_cword_q0(o_LDPC_DEC_CODEWRD_170_cword_q0),
.o_LDPC_DEC_CODEWRD_171_cword_q0(o_LDPC_DEC_CODEWRD_171_cword_q0),
.o_LDPC_DEC_CODEWRD_172_cword_q0(o_LDPC_DEC_CODEWRD_172_cword_q0),
.o_LDPC_DEC_CODEWRD_173_cword_q0(o_LDPC_DEC_CODEWRD_173_cword_q0),
.o_LDPC_DEC_CODEWRD_174_cword_q0(o_LDPC_DEC_CODEWRD_174_cword_q0),
.o_LDPC_DEC_CODEWRD_175_cword_q0(o_LDPC_DEC_CODEWRD_175_cword_q0),
.o_LDPC_DEC_CODEWRD_176_cword_q0(o_LDPC_DEC_CODEWRD_176_cword_q0),
.o_LDPC_DEC_CODEWRD_177_cword_q0(o_LDPC_DEC_CODEWRD_177_cword_q0),
.o_LDPC_DEC_CODEWRD_178_cword_q0(o_LDPC_DEC_CODEWRD_178_cword_q0),
.o_LDPC_DEC_CODEWRD_179_cword_q0(o_LDPC_DEC_CODEWRD_179_cword_q0),
.o_LDPC_DEC_CODEWRD_180_cword_q0(o_LDPC_DEC_CODEWRD_180_cword_q0),
.o_LDPC_DEC_CODEWRD_181_cword_q0(o_LDPC_DEC_CODEWRD_181_cword_q0),
.o_LDPC_DEC_CODEWRD_182_cword_q0(o_LDPC_DEC_CODEWRD_182_cword_q0),
.o_LDPC_DEC_CODEWRD_183_cword_q0(o_LDPC_DEC_CODEWRD_183_cword_q0),
.o_LDPC_DEC_CODEWRD_184_cword_q0(o_LDPC_DEC_CODEWRD_184_cword_q0),
.o_LDPC_DEC_CODEWRD_185_cword_q0(o_LDPC_DEC_CODEWRD_185_cword_q0),
.o_LDPC_DEC_CODEWRD_186_cword_q0(o_LDPC_DEC_CODEWRD_186_cword_q0),
.o_LDPC_DEC_CODEWRD_187_cword_q0(o_LDPC_DEC_CODEWRD_187_cword_q0),
.o_LDPC_DEC_CODEWRD_188_cword_q0(o_LDPC_DEC_CODEWRD_188_cword_q0),
.o_LDPC_DEC_CODEWRD_189_cword_q0(o_LDPC_DEC_CODEWRD_189_cword_q0),
.o_LDPC_DEC_CODEWRD_190_cword_q0(o_LDPC_DEC_CODEWRD_190_cword_q0),
.o_LDPC_DEC_CODEWRD_191_cword_q0(o_LDPC_DEC_CODEWRD_191_cword_q0),
.o_LDPC_DEC_CODEWRD_192_cword_q0(o_LDPC_DEC_CODEWRD_192_cword_q0),
.o_LDPC_DEC_CODEWRD_193_cword_q0(o_LDPC_DEC_CODEWRD_193_cword_q0),
.o_LDPC_DEC_CODEWRD_194_cword_q0(o_LDPC_DEC_CODEWRD_194_cword_q0),
.o_LDPC_DEC_CODEWRD_195_cword_q0(o_LDPC_DEC_CODEWRD_195_cword_q0),
.o_LDPC_DEC_CODEWRD_196_cword_q0(o_LDPC_DEC_CODEWRD_196_cword_q0),
.o_LDPC_DEC_CODEWRD_197_cword_q0(o_LDPC_DEC_CODEWRD_197_cword_q0),
.o_LDPC_DEC_CODEWRD_198_cword_q0(o_LDPC_DEC_CODEWRD_198_cword_q0),
.o_LDPC_DEC_CODEWRD_199_cword_q0(o_LDPC_DEC_CODEWRD_199_cword_q0),
.o_LDPC_DEC_CODEWRD_200_cword_q0(o_LDPC_DEC_CODEWRD_200_cword_q0),
.o_LDPC_DEC_CODEWRD_201_cword_q0(o_LDPC_DEC_CODEWRD_201_cword_q0),
.o_LDPC_DEC_CODEWRD_202_cword_q0(o_LDPC_DEC_CODEWRD_202_cword_q0),
.o_LDPC_DEC_CODEWRD_203_cword_q0(o_LDPC_DEC_CODEWRD_203_cword_q0),
.o_LDPC_DEC_CODEWRD_204_cword_q0(o_LDPC_DEC_CODEWRD_204_cword_q0),
.o_LDPC_DEC_CODEWRD_205_cword_q0(o_LDPC_DEC_CODEWRD_205_cword_q0),
.o_LDPC_DEC_CODEWRD_206_cword_q0(o_LDPC_DEC_CODEWRD_206_cword_q0),
.o_LDPC_DEC_CODEWRD_207_cword_q0(o_LDPC_DEC_CODEWRD_207_cword_q0),
.o_LDPC_DEC_EXPSYND_0_exp_syn(o_LDPC_DEC_EXPSYND_0_exp_syn),
.o_LDPC_DEC_EXPSYND_1_exp_syn(o_LDPC_DEC_EXPSYND_1_exp_syn),
.o_LDPC_DEC_EXPSYND_2_exp_syn(o_LDPC_DEC_EXPSYND_2_exp_syn),
.o_LDPC_DEC_EXPSYND_3_exp_syn(o_LDPC_DEC_EXPSYND_3_exp_syn),
.o_LDPC_DEC_EXPSYND_4_exp_syn(o_LDPC_DEC_EXPSYND_4_exp_syn),
.o_LDPC_DEC_EXPSYND_5_exp_syn(o_LDPC_DEC_EXPSYND_5_exp_syn),
.o_LDPC_DEC_EXPSYND_6_exp_syn(o_LDPC_DEC_EXPSYND_6_exp_syn),
.o_LDPC_DEC_EXPSYND_7_exp_syn(o_LDPC_DEC_EXPSYND_7_exp_syn),
.o_LDPC_DEC_EXPSYND_8_exp_syn(o_LDPC_DEC_EXPSYND_8_exp_syn),
.o_LDPC_DEC_EXPSYND_9_exp_syn(o_LDPC_DEC_EXPSYND_9_exp_syn),
.o_LDPC_DEC_EXPSYND_10_exp_syn(o_LDPC_DEC_EXPSYND_10_exp_syn),
.o_LDPC_DEC_EXPSYND_11_exp_syn(o_LDPC_DEC_EXPSYND_11_exp_syn),
.o_LDPC_DEC_EXPSYND_12_exp_syn(o_LDPC_DEC_EXPSYND_12_exp_syn),
.o_LDPC_DEC_EXPSYND_13_exp_syn(o_LDPC_DEC_EXPSYND_13_exp_syn),
.o_LDPC_DEC_EXPSYND_14_exp_syn(o_LDPC_DEC_EXPSYND_14_exp_syn),
.o_LDPC_DEC_EXPSYND_15_exp_syn(o_LDPC_DEC_EXPSYND_15_exp_syn),
.o_LDPC_DEC_EXPSYND_16_exp_syn(o_LDPC_DEC_EXPSYND_16_exp_syn),
.o_LDPC_DEC_EXPSYND_17_exp_syn(o_LDPC_DEC_EXPSYND_17_exp_syn),
.o_LDPC_DEC_EXPSYND_18_exp_syn(o_LDPC_DEC_EXPSYND_18_exp_syn),
.o_LDPC_DEC_EXPSYND_19_exp_syn(o_LDPC_DEC_EXPSYND_19_exp_syn),
.o_LDPC_DEC_EXPSYND_20_exp_syn(o_LDPC_DEC_EXPSYND_20_exp_syn),
.o_LDPC_DEC_EXPSYND_21_exp_syn(o_LDPC_DEC_EXPSYND_21_exp_syn),
.o_LDPC_DEC_EXPSYND_22_exp_syn(o_LDPC_DEC_EXPSYND_22_exp_syn),
.o_LDPC_DEC_EXPSYND_23_exp_syn(o_LDPC_DEC_EXPSYND_23_exp_syn),
.o_LDPC_DEC_EXPSYND_24_exp_syn(o_LDPC_DEC_EXPSYND_24_exp_syn),
.o_LDPC_DEC_EXPSYND_25_exp_syn(o_LDPC_DEC_EXPSYND_25_exp_syn),
.o_LDPC_DEC_EXPSYND_26_exp_syn(o_LDPC_DEC_EXPSYND_26_exp_syn),
.o_LDPC_DEC_EXPSYND_27_exp_syn(o_LDPC_DEC_EXPSYND_27_exp_syn),
.o_LDPC_DEC_EXPSYND_28_exp_syn(o_LDPC_DEC_EXPSYND_28_exp_syn),
.o_LDPC_DEC_EXPSYND_29_exp_syn(o_LDPC_DEC_EXPSYND_29_exp_syn),
.o_LDPC_DEC_EXPSYND_30_exp_syn(o_LDPC_DEC_EXPSYND_30_exp_syn),
.o_LDPC_DEC_EXPSYND_31_exp_syn(o_LDPC_DEC_EXPSYND_31_exp_syn),
.o_LDPC_DEC_EXPSYND_32_exp_syn(o_LDPC_DEC_EXPSYND_32_exp_syn),
.o_LDPC_DEC_EXPSYND_33_exp_syn(o_LDPC_DEC_EXPSYND_33_exp_syn),
.o_LDPC_DEC_EXPSYND_34_exp_syn(o_LDPC_DEC_EXPSYND_34_exp_syn),
.o_LDPC_DEC_EXPSYND_35_exp_syn(o_LDPC_DEC_EXPSYND_35_exp_syn),
.o_LDPC_DEC_EXPSYND_36_exp_syn(o_LDPC_DEC_EXPSYND_36_exp_syn),
.o_LDPC_DEC_EXPSYND_37_exp_syn(o_LDPC_DEC_EXPSYND_37_exp_syn),
.o_LDPC_DEC_EXPSYND_38_exp_syn(o_LDPC_DEC_EXPSYND_38_exp_syn),
.o_LDPC_DEC_EXPSYND_39_exp_syn(o_LDPC_DEC_EXPSYND_39_exp_syn),
.o_LDPC_DEC_EXPSYND_40_exp_syn(o_LDPC_DEC_EXPSYND_40_exp_syn),
.o_LDPC_DEC_EXPSYND_41_exp_syn(o_LDPC_DEC_EXPSYND_41_exp_syn),
.o_LDPC_DEC_EXPSYND_42_exp_syn(o_LDPC_DEC_EXPSYND_42_exp_syn),
.o_LDPC_DEC_EXPSYND_43_exp_syn(o_LDPC_DEC_EXPSYND_43_exp_syn),
.o_LDPC_DEC_EXPSYND_44_exp_syn(o_LDPC_DEC_EXPSYND_44_exp_syn),
.o_LDPC_DEC_EXPSYND_45_exp_syn(o_LDPC_DEC_EXPSYND_45_exp_syn),
.o_LDPC_DEC_EXPSYND_46_exp_syn(o_LDPC_DEC_EXPSYND_46_exp_syn),
.o_LDPC_DEC_EXPSYND_47_exp_syn(o_LDPC_DEC_EXPSYND_47_exp_syn),
.o_LDPC_DEC_EXPSYND_48_exp_syn(o_LDPC_DEC_EXPSYND_48_exp_syn),
.o_LDPC_DEC_EXPSYND_49_exp_syn(o_LDPC_DEC_EXPSYND_49_exp_syn),
.o_LDPC_DEC_EXPSYND_50_exp_syn(o_LDPC_DEC_EXPSYND_50_exp_syn),
.o_LDPC_DEC_EXPSYND_51_exp_syn(o_LDPC_DEC_EXPSYND_51_exp_syn),
.o_LDPC_DEC_EXPSYND_52_exp_syn(o_LDPC_DEC_EXPSYND_52_exp_syn),
.o_LDPC_DEC_EXPSYND_53_exp_syn(o_LDPC_DEC_EXPSYND_53_exp_syn),
.o_LDPC_DEC_EXPSYND_54_exp_syn(o_LDPC_DEC_EXPSYND_54_exp_syn),
.o_LDPC_DEC_EXPSYND_55_exp_syn(o_LDPC_DEC_EXPSYND_55_exp_syn),
.o_LDPC_DEC_EXPSYND_56_exp_syn(o_LDPC_DEC_EXPSYND_56_exp_syn),
.o_LDPC_DEC_EXPSYND_57_exp_syn(o_LDPC_DEC_EXPSYND_57_exp_syn),
.o_LDPC_DEC_EXPSYND_58_exp_syn(o_LDPC_DEC_EXPSYND_58_exp_syn),
.o_LDPC_DEC_EXPSYND_59_exp_syn(o_LDPC_DEC_EXPSYND_59_exp_syn),
.o_LDPC_DEC_EXPSYND_60_exp_syn(o_LDPC_DEC_EXPSYND_60_exp_syn),
.o_LDPC_DEC_EXPSYND_61_exp_syn(o_LDPC_DEC_EXPSYND_61_exp_syn),
.o_LDPC_DEC_EXPSYND_62_exp_syn(o_LDPC_DEC_EXPSYND_62_exp_syn),
.o_LDPC_DEC_EXPSYND_63_exp_syn(o_LDPC_DEC_EXPSYND_63_exp_syn),
.o_LDPC_DEC_EXPSYND_64_exp_syn(o_LDPC_DEC_EXPSYND_64_exp_syn),
.o_LDPC_DEC_EXPSYND_65_exp_syn(o_LDPC_DEC_EXPSYND_65_exp_syn),
.o_LDPC_DEC_EXPSYND_66_exp_syn(o_LDPC_DEC_EXPSYND_66_exp_syn),
.o_LDPC_DEC_EXPSYND_67_exp_syn(o_LDPC_DEC_EXPSYND_67_exp_syn),
.o_LDPC_DEC_EXPSYND_68_exp_syn(o_LDPC_DEC_EXPSYND_68_exp_syn),
.o_LDPC_DEC_EXPSYND_69_exp_syn(o_LDPC_DEC_EXPSYND_69_exp_syn),
.o_LDPC_DEC_EXPSYND_70_exp_syn(o_LDPC_DEC_EXPSYND_70_exp_syn),
.o_LDPC_DEC_EXPSYND_71_exp_syn(o_LDPC_DEC_EXPSYND_71_exp_syn),
.o_LDPC_DEC_EXPSYND_72_exp_syn(o_LDPC_DEC_EXPSYND_72_exp_syn),
.o_LDPC_DEC_EXPSYND_73_exp_syn(o_LDPC_DEC_EXPSYND_73_exp_syn),
.o_LDPC_DEC_EXPSYND_74_exp_syn(o_LDPC_DEC_EXPSYND_74_exp_syn),
.o_LDPC_DEC_EXPSYND_75_exp_syn(o_LDPC_DEC_EXPSYND_75_exp_syn),
.o_LDPC_DEC_EXPSYND_76_exp_syn(o_LDPC_DEC_EXPSYND_76_exp_syn),
.o_LDPC_DEC_EXPSYND_77_exp_syn(o_LDPC_DEC_EXPSYND_77_exp_syn),
.o_LDPC_DEC_EXPSYND_78_exp_syn(o_LDPC_DEC_EXPSYND_78_exp_syn),
.o_LDPC_DEC_EXPSYND_79_exp_syn(o_LDPC_DEC_EXPSYND_79_exp_syn),
.o_LDPC_DEC_EXPSYND_80_exp_syn(o_LDPC_DEC_EXPSYND_80_exp_syn),
.o_LDPC_DEC_EXPSYND_81_exp_syn(o_LDPC_DEC_EXPSYND_81_exp_syn),
.o_LDPC_DEC_EXPSYND_82_exp_syn(o_LDPC_DEC_EXPSYND_82_exp_syn),
.o_LDPC_DEC_EXPSYND_83_exp_syn(o_LDPC_DEC_EXPSYND_83_exp_syn),
.o_LDPC_DEC_EXPSYND_84_exp_syn(o_LDPC_DEC_EXPSYND_84_exp_syn),
.o_LDPC_DEC_EXPSYND_85_exp_syn(o_LDPC_DEC_EXPSYND_85_exp_syn),
.o_LDPC_DEC_EXPSYND_86_exp_syn(o_LDPC_DEC_EXPSYND_86_exp_syn),
.o_LDPC_DEC_EXPSYND_87_exp_syn(o_LDPC_DEC_EXPSYND_87_exp_syn),
.o_LDPC_DEC_EXPSYND_88_exp_syn(o_LDPC_DEC_EXPSYND_88_exp_syn),
.o_LDPC_DEC_EXPSYND_89_exp_syn(o_LDPC_DEC_EXPSYND_89_exp_syn),
.o_LDPC_DEC_EXPSYND_90_exp_syn(o_LDPC_DEC_EXPSYND_90_exp_syn),
.o_LDPC_DEC_EXPSYND_91_exp_syn(o_LDPC_DEC_EXPSYND_91_exp_syn),
.o_LDPC_DEC_EXPSYND_92_exp_syn(o_LDPC_DEC_EXPSYND_92_exp_syn),
.o_LDPC_DEC_EXPSYND_93_exp_syn(o_LDPC_DEC_EXPSYND_93_exp_syn),
.o_LDPC_DEC_EXPSYND_94_exp_syn(o_LDPC_DEC_EXPSYND_94_exp_syn),
.o_LDPC_DEC_EXPSYND_95_exp_syn(o_LDPC_DEC_EXPSYND_95_exp_syn),
.o_LDPC_DEC_EXPSYND_96_exp_syn(o_LDPC_DEC_EXPSYND_96_exp_syn),
.o_LDPC_DEC_EXPSYND_97_exp_syn(o_LDPC_DEC_EXPSYND_97_exp_syn),
.o_LDPC_DEC_EXPSYND_98_exp_syn(o_LDPC_DEC_EXPSYND_98_exp_syn),
.o_LDPC_DEC_EXPSYND_99_exp_syn(o_LDPC_DEC_EXPSYND_99_exp_syn),
.o_LDPC_DEC_EXPSYND_100_exp_syn(o_LDPC_DEC_EXPSYND_100_exp_syn),
.o_LDPC_DEC_EXPSYND_101_exp_syn(o_LDPC_DEC_EXPSYND_101_exp_syn),
.o_LDPC_DEC_EXPSYND_102_exp_syn(o_LDPC_DEC_EXPSYND_102_exp_syn),
.o_LDPC_DEC_EXPSYND_103_exp_syn(o_LDPC_DEC_EXPSYND_103_exp_syn),
.o_LDPC_DEC_EXPSYND_104_exp_syn(o_LDPC_DEC_EXPSYND_104_exp_syn),
.o_LDPC_DEC_EXPSYND_105_exp_syn(o_LDPC_DEC_EXPSYND_105_exp_syn),
.o_LDPC_DEC_EXPSYND_106_exp_syn(o_LDPC_DEC_EXPSYND_106_exp_syn),
.o_LDPC_DEC_EXPSYND_107_exp_syn(o_LDPC_DEC_EXPSYND_107_exp_syn),
.o_LDPC_DEC_EXPSYND_108_exp_syn(o_LDPC_DEC_EXPSYND_108_exp_syn),
.o_LDPC_DEC_EXPSYND_109_exp_syn(o_LDPC_DEC_EXPSYND_109_exp_syn),
.o_LDPC_DEC_EXPSYND_110_exp_syn(o_LDPC_DEC_EXPSYND_110_exp_syn),
.o_LDPC_DEC_EXPSYND_111_exp_syn(o_LDPC_DEC_EXPSYND_111_exp_syn),
.o_LDPC_DEC_EXPSYND_112_exp_syn(o_LDPC_DEC_EXPSYND_112_exp_syn),
.o_LDPC_DEC_EXPSYND_113_exp_syn(o_LDPC_DEC_EXPSYND_113_exp_syn),
.o_LDPC_DEC_EXPSYND_114_exp_syn(o_LDPC_DEC_EXPSYND_114_exp_syn),
.o_LDPC_DEC_EXPSYND_115_exp_syn(o_LDPC_DEC_EXPSYND_115_exp_syn),
.o_LDPC_DEC_EXPSYND_116_exp_syn(o_LDPC_DEC_EXPSYND_116_exp_syn),
.o_LDPC_DEC_EXPSYND_117_exp_syn(o_LDPC_DEC_EXPSYND_117_exp_syn),
.o_LDPC_DEC_EXPSYND_118_exp_syn(o_LDPC_DEC_EXPSYND_118_exp_syn),
.o_LDPC_DEC_EXPSYND_119_exp_syn(o_LDPC_DEC_EXPSYND_119_exp_syn),
.o_LDPC_DEC_EXPSYND_120_exp_syn(o_LDPC_DEC_EXPSYND_120_exp_syn),
.o_LDPC_DEC_EXPSYND_121_exp_syn(o_LDPC_DEC_EXPSYND_121_exp_syn),
.o_LDPC_DEC_EXPSYND_122_exp_syn(o_LDPC_DEC_EXPSYND_122_exp_syn),
.o_LDPC_DEC_EXPSYND_123_exp_syn(o_LDPC_DEC_EXPSYND_123_exp_syn),
.o_LDPC_DEC_EXPSYND_124_exp_syn(o_LDPC_DEC_EXPSYND_124_exp_syn),
.o_LDPC_DEC_EXPSYND_125_exp_syn(o_LDPC_DEC_EXPSYND_125_exp_syn),
.o_LDPC_DEC_EXPSYND_126_exp_syn(o_LDPC_DEC_EXPSYND_126_exp_syn),
.o_LDPC_DEC_EXPSYND_127_exp_syn(o_LDPC_DEC_EXPSYND_127_exp_syn),
.o_LDPC_DEC_EXPSYND_128_exp_syn(o_LDPC_DEC_EXPSYND_128_exp_syn),
.o_LDPC_DEC_EXPSYND_129_exp_syn(o_LDPC_DEC_EXPSYND_129_exp_syn),
.o_LDPC_DEC_EXPSYND_130_exp_syn(o_LDPC_DEC_EXPSYND_130_exp_syn),
.o_LDPC_DEC_EXPSYND_131_exp_syn(o_LDPC_DEC_EXPSYND_131_exp_syn),
.o_LDPC_DEC_EXPSYND_132_exp_syn(o_LDPC_DEC_EXPSYND_132_exp_syn),
.o_LDPC_DEC_EXPSYND_133_exp_syn(o_LDPC_DEC_EXPSYND_133_exp_syn),
.o_LDPC_DEC_EXPSYND_134_exp_syn(o_LDPC_DEC_EXPSYND_134_exp_syn),
.o_LDPC_DEC_EXPSYND_135_exp_syn(o_LDPC_DEC_EXPSYND_135_exp_syn),
.o_LDPC_DEC_EXPSYND_136_exp_syn(o_LDPC_DEC_EXPSYND_136_exp_syn),
.o_LDPC_DEC_EXPSYND_137_exp_syn(o_LDPC_DEC_EXPSYND_137_exp_syn),
.o_LDPC_DEC_EXPSYND_138_exp_syn(o_LDPC_DEC_EXPSYND_138_exp_syn),
.o_LDPC_DEC_EXPSYND_139_exp_syn(o_LDPC_DEC_EXPSYND_139_exp_syn),
.o_LDPC_DEC_EXPSYND_140_exp_syn(o_LDPC_DEC_EXPSYND_140_exp_syn),
.o_LDPC_DEC_EXPSYND_141_exp_syn(o_LDPC_DEC_EXPSYND_141_exp_syn),
.o_LDPC_DEC_EXPSYND_142_exp_syn(o_LDPC_DEC_EXPSYND_142_exp_syn),
.o_LDPC_DEC_EXPSYND_143_exp_syn(o_LDPC_DEC_EXPSYND_143_exp_syn),
.o_LDPC_DEC_EXPSYND_144_exp_syn(o_LDPC_DEC_EXPSYND_144_exp_syn),
.o_LDPC_DEC_EXPSYND_145_exp_syn(o_LDPC_DEC_EXPSYND_145_exp_syn),
.o_LDPC_DEC_EXPSYND_146_exp_syn(o_LDPC_DEC_EXPSYND_146_exp_syn),
.o_LDPC_DEC_EXPSYND_147_exp_syn(o_LDPC_DEC_EXPSYND_147_exp_syn),
.o_LDPC_DEC_EXPSYND_148_exp_syn(o_LDPC_DEC_EXPSYND_148_exp_syn),
.o_LDPC_DEC_EXPSYND_149_exp_syn(o_LDPC_DEC_EXPSYND_149_exp_syn),
.o_LDPC_DEC_EXPSYND_150_exp_syn(o_LDPC_DEC_EXPSYND_150_exp_syn),
.o_LDPC_DEC_EXPSYND_151_exp_syn(o_LDPC_DEC_EXPSYND_151_exp_syn),
.o_LDPC_DEC_EXPSYND_152_exp_syn(o_LDPC_DEC_EXPSYND_152_exp_syn),
.o_LDPC_DEC_EXPSYND_153_exp_syn(o_LDPC_DEC_EXPSYND_153_exp_syn),
.o_LDPC_DEC_EXPSYND_154_exp_syn(o_LDPC_DEC_EXPSYND_154_exp_syn),
.o_LDPC_DEC_EXPSYND_155_exp_syn(o_LDPC_DEC_EXPSYND_155_exp_syn),
.o_LDPC_DEC_EXPSYND_156_exp_syn(o_LDPC_DEC_EXPSYND_156_exp_syn),
.o_LDPC_DEC_EXPSYND_157_exp_syn(o_LDPC_DEC_EXPSYND_157_exp_syn),
.o_LDPC_DEC_EXPSYND_158_exp_syn(o_LDPC_DEC_EXPSYND_158_exp_syn),
.o_LDPC_DEC_EXPSYND_159_exp_syn(o_LDPC_DEC_EXPSYND_159_exp_syn),
.o_LDPC_DEC_EXPSYND_160_exp_syn(o_LDPC_DEC_EXPSYND_160_exp_syn),
.o_LDPC_DEC_EXPSYND_161_exp_syn(o_LDPC_DEC_EXPSYND_161_exp_syn),
.o_LDPC_DEC_EXPSYND_162_exp_syn(o_LDPC_DEC_EXPSYND_162_exp_syn),
.o_LDPC_DEC_EXPSYND_163_exp_syn(o_LDPC_DEC_EXPSYND_163_exp_syn),
.o_LDPC_DEC_EXPSYND_164_exp_syn(o_LDPC_DEC_EXPSYND_164_exp_syn),
.o_LDPC_DEC_EXPSYND_165_exp_syn(o_LDPC_DEC_EXPSYND_165_exp_syn),
.o_LDPC_DEC_EXPSYND_166_exp_syn(o_LDPC_DEC_EXPSYND_166_exp_syn),
.o_LDPC_DEC_EXPSYND_167_exp_syn(o_LDPC_DEC_EXPSYND_167_exp_syn),
.o_LDPC_DEC_PROBABILITY_perc_probability(o_LDPC_DEC_PROBABILITY_perc_probability),
.o_LDPC_DEC_HamDist_loop_max_HamDist_loop_max(o_LDPC_DEC_HamDist_loop_max_HamDist_loop_max),
.o_LDPC_DEC_HamDist_loop_percentage_HamDist_loop_percentage(o_LDPC_DEC_HamDist_loop_percentage_HamDist_loop_percentage),
.o_LDPC_DEC_HamDist_iir1_HamDist_iir1(o_LDPC_DEC_HamDist_iir1_HamDist_iir1),
.o_LDPC_DEC_HamDist_iir2_NOT_USED_HamDist_iir2(o_LDPC_DEC_HamDist_iir2_NOT_USED_HamDist_iir2),
.o_LDPC_DEC_HamDist_iir3_NOT_USED_HamDist_iir3(o_LDPC_DEC_HamDist_iir3_NOT_USED_HamDist_iir3),
.i_LDPC_DEC_converged_valid_NOT_USED_convered_valid(i_LDPC_DEC_converged_valid_NOT_USED_convered_valid),
.i_LDPC_DEC_valid_NOT_USED_dec_valid(i_LDPC_DEC_valid_NOT_USED_dec_valid),
.i_LDPC_DEC_valid_codeword_NOT_USED_dec_valid_cword(i_LDPC_DEC_valid_codeword_NOT_USED_dec_valid_cword),
.o_LDPC_DEC_start_start(o_LDPC_DEC_start_start),
.i_LDPC_DEC_converged_valid_convered_vld(i_LDPC_DEC_converged_valid_convered_vld),
.i_LDPC_DEC_converged_status_convered_stat(i_LDPC_DEC_converged_status_convered_stat),
.i_LDPC_DEC_CODEWRD_OUT_BIT_0_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_0_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_1_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_1_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_2_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_2_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_3_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_3_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_4_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_4_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_5_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_5_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_6_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_6_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_7_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_7_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_8_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_8_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_9_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_9_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_10_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_10_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_11_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_11_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_12_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_12_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_13_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_13_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_14_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_14_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_15_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_15_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_16_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_16_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_17_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_17_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_18_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_18_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_19_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_19_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_20_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_20_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_21_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_21_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_22_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_22_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_23_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_23_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_24_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_24_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_25_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_25_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_26_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_26_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_27_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_27_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_28_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_28_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_29_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_29_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_30_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_30_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_31_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_31_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_32_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_32_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_33_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_33_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_34_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_34_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_35_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_35_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_36_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_36_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_37_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_37_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_38_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_38_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_39_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_39_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_40_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_40_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_41_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_41_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_42_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_42_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_43_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_43_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_44_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_44_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_45_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_45_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_46_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_46_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_47_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_47_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_48_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_48_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_49_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_49_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_50_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_50_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_51_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_51_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_52_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_52_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_53_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_53_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_54_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_54_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_55_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_55_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_56_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_56_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_57_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_57_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_58_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_58_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_59_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_59_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_60_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_60_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_61_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_61_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_62_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_62_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_63_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_63_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_64_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_64_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_65_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_65_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_66_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_66_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_67_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_67_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_68_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_68_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_69_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_69_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_70_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_70_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_71_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_71_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_72_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_72_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_73_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_73_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_74_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_74_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_75_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_75_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_76_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_76_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_77_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_77_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_78_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_78_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_79_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_79_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_80_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_80_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_81_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_81_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_82_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_82_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_83_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_83_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_84_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_84_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_85_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_85_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_86_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_86_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_87_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_87_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_88_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_88_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_89_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_89_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_90_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_90_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_91_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_91_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_92_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_92_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_93_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_93_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_94_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_94_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_95_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_95_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_96_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_96_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_97_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_97_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_98_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_98_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_99_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_99_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_100_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_100_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_101_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_101_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_102_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_102_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_103_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_103_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_104_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_104_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_105_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_105_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_106_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_106_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_107_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_107_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_108_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_108_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_109_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_109_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_110_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_110_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_111_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_111_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_112_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_112_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_113_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_113_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_114_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_114_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_115_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_115_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_116_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_116_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_117_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_117_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_118_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_118_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_119_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_119_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_120_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_120_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_121_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_121_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_122_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_122_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_123_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_123_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_124_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_124_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_125_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_125_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_126_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_126_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_127_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_127_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_128_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_128_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_129_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_129_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_130_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_130_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_131_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_131_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_132_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_132_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_133_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_133_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_134_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_134_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_135_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_135_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_136_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_136_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_137_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_137_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_138_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_138_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_139_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_139_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_140_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_140_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_141_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_141_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_142_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_142_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_143_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_143_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_144_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_144_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_145_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_145_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_146_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_146_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_147_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_147_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_148_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_148_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_149_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_149_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_150_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_150_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_151_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_151_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_152_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_152_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_153_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_153_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_154_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_154_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_155_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_155_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_156_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_156_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_157_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_157_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_158_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_158_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_159_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_159_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_160_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_160_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_161_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_161_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_162_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_162_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_163_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_163_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_164_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_164_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_165_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_165_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_166_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_166_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_167_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_167_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_168_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_168_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_169_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_169_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_170_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_170_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_171_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_171_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_172_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_172_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_173_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_173_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_174_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_174_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_175_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_175_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_176_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_176_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_177_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_177_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_178_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_178_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_179_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_179_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_180_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_180_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_181_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_181_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_182_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_182_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_183_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_183_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_184_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_184_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_185_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_185_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_186_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_186_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_187_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_187_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_188_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_188_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_189_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_189_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_190_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_190_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_191_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_191_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_192_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_192_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_193_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_193_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_194_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_194_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_195_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_195_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_196_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_196_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_197_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_197_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_198_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_198_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_199_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_199_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_200_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_200_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_201_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_201_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_202_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_202_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_203_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_203_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_204_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_204_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_205_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_205_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_206_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_206_final_cword),
.i_LDPC_DEC_CODEWRD_OUT_BIT_207_final_cword(i_LDPC_DEC_CODEWRD_OUT_BIT_207_final_cword),
  
  
  
  ///// connect end
  //////////////////////////////////////////////////////////////////////////




  .i_clk(wb_clk_i),
  .i_rst_n(~wb_rst_i)
);


sntc_ldpc_encoder_wrapper sntc_ldpc_encoder_wrapper_U
(
.y_nr_in_port(y_nr_in_port),
.y_nr(y_nr),
.valid_cword(valid_cword),
.clr(1'b0),
.rstn(~wb_rst_i),
.clk(wb_clk_i)
);

sntc_ldpc_decoder_wrapper sntc_ldpc_decoder_wrapper_U
 (


.q0(q0),

.tmp_bit(tmp_bit),
.exp_syn(exp_syn),
.percent_probability_int (percent_probability_int),
.HamDist_loop_max (HamDist_loop_max),
.HamDist_loop_percentage( HamDist_loop_percentage),

.HamDist_iir1(HamDist_iir1),
.HamDist_iir2(HamDist_iir2),
.HamDist_iir3(HamDist_iir3),

.converged(converged),
.converged_valid(converged_valid),
.start(start),
.valid(dec_valid),
.valid_cword(dec_valid_cword),
.clr(1'b0),
.rstn(~wb_rst_i),
.clk(wb_clk_i)
);



endmodule

`default_nettype wire
