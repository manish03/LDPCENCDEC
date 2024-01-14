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
wire [NN-1:0] y_nr_enc;
wire  valid_cword_enc;

    ///////////////////LDPC wire////////////////////////////////////////////////
wire  [NN-1:0]                 q0_0;
wire  [NN-1:0]                 q0_1;
wire  [NN-1:0]                 final_y_nr_dec;

wire  [MM-1:0]                 exp_syn;
wire  [31:0]                   percent_probability_int;
wire  [SUM_LEN-1:0]            HamDist_loop_max;
wire  [SUM_LEN-1:0]            HamDist_loop_percentage;

wire  [SUM_LEN-1:0]            HamDist_iir1;
wire  [SUM_LEN-1:0]            HamDist_iir2;
wire  [SUM_LEN-1:0]            HamDist_iir3;

 wire                          start;
 wire                          dec_valid;
 wire                          dec_valid_cword;
wire converged_loops_ended ; 
wire converged_pass_fail ;
wire syn_valid_cword_dec;

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
assign i_LDPC_ENC_CODEWRD_0_enc_codeword = y_nr_enc[   0] ;
assign i_LDPC_ENC_CODEWRD_1_enc_codeword = y_nr_enc[   1] ;
assign i_LDPC_ENC_CODEWRD_2_enc_codeword = y_nr_enc[   2] ;
assign i_LDPC_ENC_CODEWRD_3_enc_codeword = y_nr_enc[   3] ;
assign i_LDPC_ENC_CODEWRD_4_enc_codeword = y_nr_enc[   4] ;
assign i_LDPC_ENC_CODEWRD_5_enc_codeword = y_nr_enc[   5] ;
assign i_LDPC_ENC_CODEWRD_6_enc_codeword = y_nr_enc[   6] ;
assign i_LDPC_ENC_CODEWRD_7_enc_codeword = y_nr_enc[   7] ;
assign i_LDPC_ENC_CODEWRD_8_enc_codeword = y_nr_enc[   8] ;
assign i_LDPC_ENC_CODEWRD_9_enc_codeword = y_nr_enc[   9] ;
assign i_LDPC_ENC_CODEWRD_10_enc_codeword = y_nr_enc[   10] ;
assign i_LDPC_ENC_CODEWRD_11_enc_codeword = y_nr_enc[   11] ;
assign i_LDPC_ENC_CODEWRD_12_enc_codeword = y_nr_enc[   12] ;
assign i_LDPC_ENC_CODEWRD_13_enc_codeword = y_nr_enc[   13] ;
assign i_LDPC_ENC_CODEWRD_14_enc_codeword = y_nr_enc[   14] ;
assign i_LDPC_ENC_CODEWRD_15_enc_codeword = y_nr_enc[   15] ;
assign i_LDPC_ENC_CODEWRD_16_enc_codeword = y_nr_enc[   16] ;
assign i_LDPC_ENC_CODEWRD_17_enc_codeword = y_nr_enc[   17] ;
assign i_LDPC_ENC_CODEWRD_18_enc_codeword = y_nr_enc[   18] ;
assign i_LDPC_ENC_CODEWRD_19_enc_codeword = y_nr_enc[   19] ;
assign i_LDPC_ENC_CODEWRD_20_enc_codeword = y_nr_enc[   20] ;
assign i_LDPC_ENC_CODEWRD_21_enc_codeword = y_nr_enc[   21] ;
assign i_LDPC_ENC_CODEWRD_22_enc_codeword = y_nr_enc[   22] ;
assign i_LDPC_ENC_CODEWRD_23_enc_codeword = y_nr_enc[   23] ;
assign i_LDPC_ENC_CODEWRD_24_enc_codeword = y_nr_enc[   24] ;
assign i_LDPC_ENC_CODEWRD_25_enc_codeword = y_nr_enc[   25] ;
assign i_LDPC_ENC_CODEWRD_26_enc_codeword = y_nr_enc[   26] ;
assign i_LDPC_ENC_CODEWRD_27_enc_codeword = y_nr_enc[   27] ;
assign i_LDPC_ENC_CODEWRD_28_enc_codeword = y_nr_enc[   28] ;
assign i_LDPC_ENC_CODEWRD_29_enc_codeword = y_nr_enc[   29] ;
assign i_LDPC_ENC_CODEWRD_30_enc_codeword = y_nr_enc[   30] ;
assign i_LDPC_ENC_CODEWRD_31_enc_codeword = y_nr_enc[   31] ;
assign i_LDPC_ENC_CODEWRD_32_enc_codeword = y_nr_enc[   32] ;
assign i_LDPC_ENC_CODEWRD_33_enc_codeword = y_nr_enc[   33] ;
assign i_LDPC_ENC_CODEWRD_34_enc_codeword = y_nr_enc[   34] ;
assign i_LDPC_ENC_CODEWRD_35_enc_codeword = y_nr_enc[   35] ;
assign i_LDPC_ENC_CODEWRD_36_enc_codeword = y_nr_enc[   36] ;
assign i_LDPC_ENC_CODEWRD_37_enc_codeword = y_nr_enc[   37] ;
assign i_LDPC_ENC_CODEWRD_38_enc_codeword = y_nr_enc[   38] ;
assign i_LDPC_ENC_CODEWRD_39_enc_codeword = y_nr_enc[   39] ;
assign i_LDPC_ENC_CODEWRD_40_enc_codeword = y_nr_enc[   40] ;
assign i_LDPC_ENC_CODEWRD_41_enc_codeword = y_nr_enc[   41] ;
assign i_LDPC_ENC_CODEWRD_42_enc_codeword = y_nr_enc[   42] ;
assign i_LDPC_ENC_CODEWRD_43_enc_codeword = y_nr_enc[   43] ;
assign i_LDPC_ENC_CODEWRD_44_enc_codeword = y_nr_enc[   44] ;
assign i_LDPC_ENC_CODEWRD_45_enc_codeword = y_nr_enc[   45] ;
assign i_LDPC_ENC_CODEWRD_46_enc_codeword = y_nr_enc[   46] ;
assign i_LDPC_ENC_CODEWRD_47_enc_codeword = y_nr_enc[   47] ;
assign i_LDPC_ENC_CODEWRD_48_enc_codeword = y_nr_enc[   48] ;
assign i_LDPC_ENC_CODEWRD_49_enc_codeword = y_nr_enc[   49] ;
assign i_LDPC_ENC_CODEWRD_50_enc_codeword = y_nr_enc[   50] ;
assign i_LDPC_ENC_CODEWRD_51_enc_codeword = y_nr_enc[   51] ;
assign i_LDPC_ENC_CODEWRD_52_enc_codeword = y_nr_enc[   52] ;
assign i_LDPC_ENC_CODEWRD_53_enc_codeword = y_nr_enc[   53] ;
assign i_LDPC_ENC_CODEWRD_54_enc_codeword = y_nr_enc[   54] ;
assign i_LDPC_ENC_CODEWRD_55_enc_codeword = y_nr_enc[   55] ;
assign i_LDPC_ENC_CODEWRD_56_enc_codeword = y_nr_enc[   56] ;
assign i_LDPC_ENC_CODEWRD_57_enc_codeword = y_nr_enc[   57] ;
assign i_LDPC_ENC_CODEWRD_58_enc_codeword = y_nr_enc[   58] ;
assign i_LDPC_ENC_CODEWRD_59_enc_codeword = y_nr_enc[   59] ;
assign i_LDPC_ENC_CODEWRD_60_enc_codeword = y_nr_enc[   60] ;
assign i_LDPC_ENC_CODEWRD_61_enc_codeword = y_nr_enc[   61] ;
assign i_LDPC_ENC_CODEWRD_62_enc_codeword = y_nr_enc[   62] ;
assign i_LDPC_ENC_CODEWRD_63_enc_codeword = y_nr_enc[   63] ;
assign i_LDPC_ENC_CODEWRD_64_enc_codeword = y_nr_enc[   64] ;
assign i_LDPC_ENC_CODEWRD_65_enc_codeword = y_nr_enc[   65] ;
assign i_LDPC_ENC_CODEWRD_66_enc_codeword = y_nr_enc[   66] ;
assign i_LDPC_ENC_CODEWRD_67_enc_codeword = y_nr_enc[   67] ;
assign i_LDPC_ENC_CODEWRD_68_enc_codeword = y_nr_enc[   68] ;
assign i_LDPC_ENC_CODEWRD_69_enc_codeword = y_nr_enc[   69] ;
assign i_LDPC_ENC_CODEWRD_70_enc_codeword = y_nr_enc[   70] ;
assign i_LDPC_ENC_CODEWRD_71_enc_codeword = y_nr_enc[   71] ;
assign i_LDPC_ENC_CODEWRD_72_enc_codeword = y_nr_enc[   72] ;
assign i_LDPC_ENC_CODEWRD_73_enc_codeword = y_nr_enc[   73] ;
assign i_LDPC_ENC_CODEWRD_74_enc_codeword = y_nr_enc[   74] ;
assign i_LDPC_ENC_CODEWRD_75_enc_codeword = y_nr_enc[   75] ;
assign i_LDPC_ENC_CODEWRD_76_enc_codeword = y_nr_enc[   76] ;
assign i_LDPC_ENC_CODEWRD_77_enc_codeword = y_nr_enc[   77] ;
assign i_LDPC_ENC_CODEWRD_78_enc_codeword = y_nr_enc[   78] ;
assign i_LDPC_ENC_CODEWRD_79_enc_codeword = y_nr_enc[   79] ;
assign i_LDPC_ENC_CODEWRD_80_enc_codeword = y_nr_enc[   80] ;
assign i_LDPC_ENC_CODEWRD_81_enc_codeword = y_nr_enc[   81] ;
assign i_LDPC_ENC_CODEWRD_82_enc_codeword = y_nr_enc[   82] ;
assign i_LDPC_ENC_CODEWRD_83_enc_codeword = y_nr_enc[   83] ;
assign i_LDPC_ENC_CODEWRD_84_enc_codeword = y_nr_enc[   84] ;
assign i_LDPC_ENC_CODEWRD_85_enc_codeword = y_nr_enc[   85] ;
assign i_LDPC_ENC_CODEWRD_86_enc_codeword = y_nr_enc[   86] ;
assign i_LDPC_ENC_CODEWRD_87_enc_codeword = y_nr_enc[   87] ;
assign i_LDPC_ENC_CODEWRD_88_enc_codeword = y_nr_enc[   88] ;
assign i_LDPC_ENC_CODEWRD_89_enc_codeword = y_nr_enc[   89] ;
assign i_LDPC_ENC_CODEWRD_90_enc_codeword = y_nr_enc[   90] ;
assign i_LDPC_ENC_CODEWRD_91_enc_codeword = y_nr_enc[   91] ;
assign i_LDPC_ENC_CODEWRD_92_enc_codeword = y_nr_enc[   92] ;
assign i_LDPC_ENC_CODEWRD_93_enc_codeword = y_nr_enc[   93] ;
assign i_LDPC_ENC_CODEWRD_94_enc_codeword = y_nr_enc[   94] ;
assign i_LDPC_ENC_CODEWRD_95_enc_codeword = y_nr_enc[   95] ;
assign i_LDPC_ENC_CODEWRD_96_enc_codeword = y_nr_enc[   96] ;
assign i_LDPC_ENC_CODEWRD_97_enc_codeword = y_nr_enc[   97] ;
assign i_LDPC_ENC_CODEWRD_98_enc_codeword = y_nr_enc[   98] ;
assign i_LDPC_ENC_CODEWRD_99_enc_codeword = y_nr_enc[   99] ;
assign i_LDPC_ENC_CODEWRD_100_enc_codeword = y_nr_enc[   100] ;
assign i_LDPC_ENC_CODEWRD_101_enc_codeword = y_nr_enc[   101] ;
assign i_LDPC_ENC_CODEWRD_102_enc_codeword = y_nr_enc[   102] ;
assign i_LDPC_ENC_CODEWRD_103_enc_codeword = y_nr_enc[   103] ;
assign i_LDPC_ENC_CODEWRD_104_enc_codeword = y_nr_enc[   104] ;
assign i_LDPC_ENC_CODEWRD_105_enc_codeword = y_nr_enc[   105] ;
assign i_LDPC_ENC_CODEWRD_106_enc_codeword = y_nr_enc[   106] ;
assign i_LDPC_ENC_CODEWRD_107_enc_codeword = y_nr_enc[   107] ;
assign i_LDPC_ENC_CODEWRD_108_enc_codeword = y_nr_enc[   108] ;
assign i_LDPC_ENC_CODEWRD_109_enc_codeword = y_nr_enc[   109] ;
assign i_LDPC_ENC_CODEWRD_110_enc_codeword = y_nr_enc[   110] ;
assign i_LDPC_ENC_CODEWRD_111_enc_codeword = y_nr_enc[   111] ;
assign i_LDPC_ENC_CODEWRD_112_enc_codeword = y_nr_enc[   112] ;
assign i_LDPC_ENC_CODEWRD_113_enc_codeword = y_nr_enc[   113] ;
assign i_LDPC_ENC_CODEWRD_114_enc_codeword = y_nr_enc[   114] ;
assign i_LDPC_ENC_CODEWRD_115_enc_codeword = y_nr_enc[   115] ;
assign i_LDPC_ENC_CODEWRD_116_enc_codeword = y_nr_enc[   116] ;
assign i_LDPC_ENC_CODEWRD_117_enc_codeword = y_nr_enc[   117] ;
assign i_LDPC_ENC_CODEWRD_118_enc_codeword = y_nr_enc[   118] ;
assign i_LDPC_ENC_CODEWRD_119_enc_codeword = y_nr_enc[   119] ;
assign i_LDPC_ENC_CODEWRD_120_enc_codeword = y_nr_enc[   120] ;
assign i_LDPC_ENC_CODEWRD_121_enc_codeword = y_nr_enc[   121] ;
assign i_LDPC_ENC_CODEWRD_122_enc_codeword = y_nr_enc[   122] ;
assign i_LDPC_ENC_CODEWRD_123_enc_codeword = y_nr_enc[   123] ;
assign i_LDPC_ENC_CODEWRD_124_enc_codeword = y_nr_enc[   124] ;
assign i_LDPC_ENC_CODEWRD_125_enc_codeword = y_nr_enc[   125] ;
assign i_LDPC_ENC_CODEWRD_126_enc_codeword = y_nr_enc[   126] ;
assign i_LDPC_ENC_CODEWRD_127_enc_codeword = y_nr_enc[   127] ;
assign i_LDPC_ENC_CODEWRD_128_enc_codeword = y_nr_enc[   128] ;
assign i_LDPC_ENC_CODEWRD_129_enc_codeword = y_nr_enc[   129] ;
assign i_LDPC_ENC_CODEWRD_130_enc_codeword = y_nr_enc[   130] ;
assign i_LDPC_ENC_CODEWRD_131_enc_codeword = y_nr_enc[   131] ;
assign i_LDPC_ENC_CODEWRD_132_enc_codeword = y_nr_enc[   132] ;
assign i_LDPC_ENC_CODEWRD_133_enc_codeword = y_nr_enc[   133] ;
assign i_LDPC_ENC_CODEWRD_134_enc_codeword = y_nr_enc[   134] ;
assign i_LDPC_ENC_CODEWRD_135_enc_codeword = y_nr_enc[   135] ;
assign i_LDPC_ENC_CODEWRD_136_enc_codeword = y_nr_enc[   136] ;
assign i_LDPC_ENC_CODEWRD_137_enc_codeword = y_nr_enc[   137] ;
assign i_LDPC_ENC_CODEWRD_138_enc_codeword = y_nr_enc[   138] ;
assign i_LDPC_ENC_CODEWRD_139_enc_codeword = y_nr_enc[   139] ;
assign i_LDPC_ENC_CODEWRD_140_enc_codeword = y_nr_enc[   140] ;
assign i_LDPC_ENC_CODEWRD_141_enc_codeword = y_nr_enc[   141] ;
assign i_LDPC_ENC_CODEWRD_142_enc_codeword = y_nr_enc[   142] ;
assign i_LDPC_ENC_CODEWRD_143_enc_codeword = y_nr_enc[   143] ;
assign i_LDPC_ENC_CODEWRD_144_enc_codeword = y_nr_enc[   144] ;
assign i_LDPC_ENC_CODEWRD_145_enc_codeword = y_nr_enc[   145] ;
assign i_LDPC_ENC_CODEWRD_146_enc_codeword = y_nr_enc[   146] ;
assign i_LDPC_ENC_CODEWRD_147_enc_codeword = y_nr_enc[   147] ;
assign i_LDPC_ENC_CODEWRD_148_enc_codeword = y_nr_enc[   148] ;
assign i_LDPC_ENC_CODEWRD_149_enc_codeword = y_nr_enc[   149] ;
assign i_LDPC_ENC_CODEWRD_150_enc_codeword = y_nr_enc[   150] ;
assign i_LDPC_ENC_CODEWRD_151_enc_codeword = y_nr_enc[   151] ;
assign i_LDPC_ENC_CODEWRD_152_enc_codeword = y_nr_enc[   152] ;
assign i_LDPC_ENC_CODEWRD_153_enc_codeword = y_nr_enc[   153] ;
assign i_LDPC_ENC_CODEWRD_154_enc_codeword = y_nr_enc[   154] ;
assign i_LDPC_ENC_CODEWRD_155_enc_codeword = y_nr_enc[   155] ;
assign i_LDPC_ENC_CODEWRD_156_enc_codeword = y_nr_enc[   156] ;
assign i_LDPC_ENC_CODEWRD_157_enc_codeword = y_nr_enc[   157] ;
assign i_LDPC_ENC_CODEWRD_158_enc_codeword = y_nr_enc[   158] ;
assign i_LDPC_ENC_CODEWRD_159_enc_codeword = y_nr_enc[   159] ;
assign i_LDPC_ENC_CODEWRD_160_enc_codeword = y_nr_enc[   160] ;
assign i_LDPC_ENC_CODEWRD_161_enc_codeword = y_nr_enc[   161] ;
assign i_LDPC_ENC_CODEWRD_162_enc_codeword = y_nr_enc[   162] ;
assign i_LDPC_ENC_CODEWRD_163_enc_codeword = y_nr_enc[   163] ;
assign i_LDPC_ENC_CODEWRD_164_enc_codeword = y_nr_enc[   164] ;
assign i_LDPC_ENC_CODEWRD_165_enc_codeword = y_nr_enc[   165] ;
assign i_LDPC_ENC_CODEWRD_166_enc_codeword = y_nr_enc[   166] ;
assign i_LDPC_ENC_CODEWRD_167_enc_codeword = y_nr_enc[   167] ;
assign i_LDPC_ENC_CODEWRD_168_enc_codeword = y_nr_enc[   168] ;
assign i_LDPC_ENC_CODEWRD_169_enc_codeword = y_nr_enc[   169] ;
assign i_LDPC_ENC_CODEWRD_170_enc_codeword = y_nr_enc[   170] ;
assign i_LDPC_ENC_CODEWRD_171_enc_codeword = y_nr_enc[   171] ;
assign i_LDPC_ENC_CODEWRD_172_enc_codeword = y_nr_enc[   172] ;
assign i_LDPC_ENC_CODEWRD_173_enc_codeword = y_nr_enc[   173] ;
assign i_LDPC_ENC_CODEWRD_174_enc_codeword = y_nr_enc[   174] ;
assign i_LDPC_ENC_CODEWRD_175_enc_codeword = y_nr_enc[   175] ;
assign i_LDPC_ENC_CODEWRD_176_enc_codeword = y_nr_enc[   176] ;
assign i_LDPC_ENC_CODEWRD_177_enc_codeword = y_nr_enc[   177] ;
assign i_LDPC_ENC_CODEWRD_178_enc_codeword = y_nr_enc[   178] ;
assign i_LDPC_ENC_CODEWRD_179_enc_codeword = y_nr_enc[   179] ;
assign i_LDPC_ENC_CODEWRD_180_enc_codeword = y_nr_enc[   180] ;
assign i_LDPC_ENC_CODEWRD_181_enc_codeword = y_nr_enc[   181] ;
assign i_LDPC_ENC_CODEWRD_182_enc_codeword = y_nr_enc[   182] ;
assign i_LDPC_ENC_CODEWRD_183_enc_codeword = y_nr_enc[   183] ;
assign i_LDPC_ENC_CODEWRD_184_enc_codeword = y_nr_enc[   184] ;
assign i_LDPC_ENC_CODEWRD_185_enc_codeword = y_nr_enc[   185] ;
assign i_LDPC_ENC_CODEWRD_186_enc_codeword = y_nr_enc[   186] ;
assign i_LDPC_ENC_CODEWRD_187_enc_codeword = y_nr_enc[   187] ;
assign i_LDPC_ENC_CODEWRD_188_enc_codeword = y_nr_enc[   188] ;
assign i_LDPC_ENC_CODEWRD_189_enc_codeword = y_nr_enc[   189] ;
assign i_LDPC_ENC_CODEWRD_190_enc_codeword = y_nr_enc[   190] ;
assign i_LDPC_ENC_CODEWRD_191_enc_codeword = y_nr_enc[   191] ;
assign i_LDPC_ENC_CODEWRD_192_enc_codeword = y_nr_enc[   192] ;
assign i_LDPC_ENC_CODEWRD_193_enc_codeword = y_nr_enc[   193] ;
assign i_LDPC_ENC_CODEWRD_194_enc_codeword = y_nr_enc[   194] ;
assign i_LDPC_ENC_CODEWRD_195_enc_codeword = y_nr_enc[   195] ;
assign i_LDPC_ENC_CODEWRD_196_enc_codeword = y_nr_enc[   196] ;
assign i_LDPC_ENC_CODEWRD_197_enc_codeword = y_nr_enc[   197] ;
assign i_LDPC_ENC_CODEWRD_198_enc_codeword = y_nr_enc[   198] ;
assign i_LDPC_ENC_CODEWRD_199_enc_codeword = y_nr_enc[   199] ;
assign i_LDPC_ENC_CODEWRD_200_enc_codeword = y_nr_enc[   200] ;
assign i_LDPC_ENC_CODEWRD_201_enc_codeword = y_nr_enc[   201] ;
assign i_LDPC_ENC_CODEWRD_202_enc_codeword = y_nr_enc[   202] ;
assign i_LDPC_ENC_CODEWRD_203_enc_codeword = y_nr_enc[   203] ;
assign i_LDPC_ENC_CODEWRD_204_enc_codeword = y_nr_enc[   204] ;
assign i_LDPC_ENC_CODEWRD_205_enc_codeword = y_nr_enc[   205] ;
assign i_LDPC_ENC_CODEWRD_206_enc_codeword = y_nr_enc[   206] ;
assign i_LDPC_ENC_CODEWRD_207_enc_codeword = y_nr_enc[   207] ;
assign i_LDPC_ENC_CODEWRD_VLD_enc_codeword_valid =  valid_cword_enc;
assign q0_0[   0] =  o_LDPC_DEC_CODEWRD_0_cword_q0[ 0] ;
assign q0_0[   1] =  o_LDPC_DEC_CODEWRD_1_cword_q0[ 0] ;
assign q0_0[   2] =  o_LDPC_DEC_CODEWRD_2_cword_q0[ 0] ;
assign q0_0[   3] =  o_LDPC_DEC_CODEWRD_3_cword_q0[ 0] ;
assign q0_0[   4] =  o_LDPC_DEC_CODEWRD_4_cword_q0[ 0] ;
assign q0_0[   5] =  o_LDPC_DEC_CODEWRD_5_cword_q0[ 0] ;
assign q0_0[   6] =  o_LDPC_DEC_CODEWRD_6_cword_q0[ 0] ;
assign q0_0[   7] =  o_LDPC_DEC_CODEWRD_7_cword_q0[ 0] ;
assign q0_0[   8] =  o_LDPC_DEC_CODEWRD_8_cword_q0[ 0] ;
assign q0_0[   9] =  o_LDPC_DEC_CODEWRD_9_cword_q0[ 0] ;
assign q0_0[   10] =  o_LDPC_DEC_CODEWRD_10_cword_q0[ 0] ;
assign q0_0[   11] =  o_LDPC_DEC_CODEWRD_11_cword_q0[ 0] ;
assign q0_0[   12] =  o_LDPC_DEC_CODEWRD_12_cword_q0[ 0] ;
assign q0_0[   13] =  o_LDPC_DEC_CODEWRD_13_cword_q0[ 0] ;
assign q0_0[   14] =  o_LDPC_DEC_CODEWRD_14_cword_q0[ 0] ;
assign q0_0[   15] =  o_LDPC_DEC_CODEWRD_15_cword_q0[ 0] ;
assign q0_0[   16] =  o_LDPC_DEC_CODEWRD_16_cword_q0[ 0] ;
assign q0_0[   17] =  o_LDPC_DEC_CODEWRD_17_cword_q0[ 0] ;
assign q0_0[   18] =  o_LDPC_DEC_CODEWRD_18_cword_q0[ 0] ;
assign q0_0[   19] =  o_LDPC_DEC_CODEWRD_19_cword_q0[ 0] ;
assign q0_0[   20] =  o_LDPC_DEC_CODEWRD_20_cword_q0[ 0] ;
assign q0_0[   21] =  o_LDPC_DEC_CODEWRD_21_cword_q0[ 0] ;
assign q0_0[   22] =  o_LDPC_DEC_CODEWRD_22_cword_q0[ 0] ;
assign q0_0[   23] =  o_LDPC_DEC_CODEWRD_23_cword_q0[ 0] ;
assign q0_0[   24] =  o_LDPC_DEC_CODEWRD_24_cword_q0[ 0] ;
assign q0_0[   25] =  o_LDPC_DEC_CODEWRD_25_cword_q0[ 0] ;
assign q0_0[   26] =  o_LDPC_DEC_CODEWRD_26_cword_q0[ 0] ;
assign q0_0[   27] =  o_LDPC_DEC_CODEWRD_27_cword_q0[ 0] ;
assign q0_0[   28] =  o_LDPC_DEC_CODEWRD_28_cword_q0[ 0] ;
assign q0_0[   29] =  o_LDPC_DEC_CODEWRD_29_cword_q0[ 0] ;
assign q0_0[   30] =  o_LDPC_DEC_CODEWRD_30_cword_q0[ 0] ;
assign q0_0[   31] =  o_LDPC_DEC_CODEWRD_31_cword_q0[ 0] ;
assign q0_0[   32] =  o_LDPC_DEC_CODEWRD_32_cword_q0[ 0] ;
assign q0_0[   33] =  o_LDPC_DEC_CODEWRD_33_cword_q0[ 0] ;
assign q0_0[   34] =  o_LDPC_DEC_CODEWRD_34_cword_q0[ 0] ;
assign q0_0[   35] =  o_LDPC_DEC_CODEWRD_35_cword_q0[ 0] ;
assign q0_0[   36] =  o_LDPC_DEC_CODEWRD_36_cword_q0[ 0] ;
assign q0_0[   37] =  o_LDPC_DEC_CODEWRD_37_cword_q0[ 0] ;
assign q0_0[   38] =  o_LDPC_DEC_CODEWRD_38_cword_q0[ 0] ;
assign q0_0[   39] =  o_LDPC_DEC_CODEWRD_39_cword_q0[ 0] ;
assign q0_0[   40] =  o_LDPC_DEC_CODEWRD_40_cword_q0[ 0] ;
assign q0_0[   41] =  o_LDPC_DEC_CODEWRD_41_cword_q0[ 0] ;
assign q0_0[   42] =  o_LDPC_DEC_CODEWRD_42_cword_q0[ 0] ;
assign q0_0[   43] =  o_LDPC_DEC_CODEWRD_43_cword_q0[ 0] ;
assign q0_0[   44] =  o_LDPC_DEC_CODEWRD_44_cword_q0[ 0] ;
assign q0_0[   45] =  o_LDPC_DEC_CODEWRD_45_cword_q0[ 0] ;
assign q0_0[   46] =  o_LDPC_DEC_CODEWRD_46_cword_q0[ 0] ;
assign q0_0[   47] =  o_LDPC_DEC_CODEWRD_47_cword_q0[ 0] ;
assign q0_0[   48] =  o_LDPC_DEC_CODEWRD_48_cword_q0[ 0] ;
assign q0_0[   49] =  o_LDPC_DEC_CODEWRD_49_cword_q0[ 0] ;
assign q0_0[   50] =  o_LDPC_DEC_CODEWRD_50_cword_q0[ 0] ;
assign q0_0[   51] =  o_LDPC_DEC_CODEWRD_51_cword_q0[ 0] ;
assign q0_0[   52] =  o_LDPC_DEC_CODEWRD_52_cword_q0[ 0] ;
assign q0_0[   53] =  o_LDPC_DEC_CODEWRD_53_cword_q0[ 0] ;
assign q0_0[   54] =  o_LDPC_DEC_CODEWRD_54_cword_q0[ 0] ;
assign q0_0[   55] =  o_LDPC_DEC_CODEWRD_55_cword_q0[ 0] ;
assign q0_0[   56] =  o_LDPC_DEC_CODEWRD_56_cword_q0[ 0] ;
assign q0_0[   57] =  o_LDPC_DEC_CODEWRD_57_cword_q0[ 0] ;
assign q0_0[   58] =  o_LDPC_DEC_CODEWRD_58_cword_q0[ 0] ;
assign q0_0[   59] =  o_LDPC_DEC_CODEWRD_59_cword_q0[ 0] ;
assign q0_0[   60] =  o_LDPC_DEC_CODEWRD_60_cword_q0[ 0] ;
assign q0_0[   61] =  o_LDPC_DEC_CODEWRD_61_cword_q0[ 0] ;
assign q0_0[   62] =  o_LDPC_DEC_CODEWRD_62_cword_q0[ 0] ;
assign q0_0[   63] =  o_LDPC_DEC_CODEWRD_63_cword_q0[ 0] ;
assign q0_0[   64] =  o_LDPC_DEC_CODEWRD_64_cword_q0[ 0] ;
assign q0_0[   65] =  o_LDPC_DEC_CODEWRD_65_cword_q0[ 0] ;
assign q0_0[   66] =  o_LDPC_DEC_CODEWRD_66_cword_q0[ 0] ;
assign q0_0[   67] =  o_LDPC_DEC_CODEWRD_67_cword_q0[ 0] ;
assign q0_0[   68] =  o_LDPC_DEC_CODEWRD_68_cword_q0[ 0] ;
assign q0_0[   69] =  o_LDPC_DEC_CODEWRD_69_cword_q0[ 0] ;
assign q0_0[   70] =  o_LDPC_DEC_CODEWRD_70_cword_q0[ 0] ;
assign q0_0[   71] =  o_LDPC_DEC_CODEWRD_71_cword_q0[ 0] ;
assign q0_0[   72] =  o_LDPC_DEC_CODEWRD_72_cword_q0[ 0] ;
assign q0_0[   73] =  o_LDPC_DEC_CODEWRD_73_cword_q0[ 0] ;
assign q0_0[   74] =  o_LDPC_DEC_CODEWRD_74_cword_q0[ 0] ;
assign q0_0[   75] =  o_LDPC_DEC_CODEWRD_75_cword_q0[ 0] ;
assign q0_0[   76] =  o_LDPC_DEC_CODEWRD_76_cword_q0[ 0] ;
assign q0_0[   77] =  o_LDPC_DEC_CODEWRD_77_cword_q0[ 0] ;
assign q0_0[   78] =  o_LDPC_DEC_CODEWRD_78_cword_q0[ 0] ;
assign q0_0[   79] =  o_LDPC_DEC_CODEWRD_79_cword_q0[ 0] ;
assign q0_0[   80] =  o_LDPC_DEC_CODEWRD_80_cword_q0[ 0] ;
assign q0_0[   81] =  o_LDPC_DEC_CODEWRD_81_cword_q0[ 0] ;
assign q0_0[   82] =  o_LDPC_DEC_CODEWRD_82_cword_q0[ 0] ;
assign q0_0[   83] =  o_LDPC_DEC_CODEWRD_83_cword_q0[ 0] ;
assign q0_0[   84] =  o_LDPC_DEC_CODEWRD_84_cword_q0[ 0] ;
assign q0_0[   85] =  o_LDPC_DEC_CODEWRD_85_cword_q0[ 0] ;
assign q0_0[   86] =  o_LDPC_DEC_CODEWRD_86_cword_q0[ 0] ;
assign q0_0[   87] =  o_LDPC_DEC_CODEWRD_87_cword_q0[ 0] ;
assign q0_0[   88] =  o_LDPC_DEC_CODEWRD_88_cword_q0[ 0] ;
assign q0_0[   89] =  o_LDPC_DEC_CODEWRD_89_cword_q0[ 0] ;
assign q0_0[   90] =  o_LDPC_DEC_CODEWRD_90_cword_q0[ 0] ;
assign q0_0[   91] =  o_LDPC_DEC_CODEWRD_91_cword_q0[ 0] ;
assign q0_0[   92] =  o_LDPC_DEC_CODEWRD_92_cword_q0[ 0] ;
assign q0_0[   93] =  o_LDPC_DEC_CODEWRD_93_cword_q0[ 0] ;
assign q0_0[   94] =  o_LDPC_DEC_CODEWRD_94_cword_q0[ 0] ;
assign q0_0[   95] =  o_LDPC_DEC_CODEWRD_95_cword_q0[ 0] ;
assign q0_0[   96] =  o_LDPC_DEC_CODEWRD_96_cword_q0[ 0] ;
assign q0_0[   97] =  o_LDPC_DEC_CODEWRD_97_cword_q0[ 0] ;
assign q0_0[   98] =  o_LDPC_DEC_CODEWRD_98_cword_q0[ 0] ;
assign q0_0[   99] =  o_LDPC_DEC_CODEWRD_99_cword_q0[ 0] ;
assign q0_0[   100] =  o_LDPC_DEC_CODEWRD_100_cword_q0[ 0] ;
assign q0_0[   101] =  o_LDPC_DEC_CODEWRD_101_cword_q0[ 0] ;
assign q0_0[   102] =  o_LDPC_DEC_CODEWRD_102_cword_q0[ 0] ;
assign q0_0[   103] =  o_LDPC_DEC_CODEWRD_103_cword_q0[ 0] ;
assign q0_0[   104] =  o_LDPC_DEC_CODEWRD_104_cword_q0[ 0] ;
assign q0_0[   105] =  o_LDPC_DEC_CODEWRD_105_cword_q0[ 0] ;
assign q0_0[   106] =  o_LDPC_DEC_CODEWRD_106_cword_q0[ 0] ;
assign q0_0[   107] =  o_LDPC_DEC_CODEWRD_107_cword_q0[ 0] ;
assign q0_0[   108] =  o_LDPC_DEC_CODEWRD_108_cword_q0[ 0] ;
assign q0_0[   109] =  o_LDPC_DEC_CODEWRD_109_cword_q0[ 0] ;
assign q0_0[   110] =  o_LDPC_DEC_CODEWRD_110_cword_q0[ 0] ;
assign q0_0[   111] =  o_LDPC_DEC_CODEWRD_111_cword_q0[ 0] ;
assign q0_0[   112] =  o_LDPC_DEC_CODEWRD_112_cword_q0[ 0] ;
assign q0_0[   113] =  o_LDPC_DEC_CODEWRD_113_cword_q0[ 0] ;
assign q0_0[   114] =  o_LDPC_DEC_CODEWRD_114_cword_q0[ 0] ;
assign q0_0[   115] =  o_LDPC_DEC_CODEWRD_115_cword_q0[ 0] ;
assign q0_0[   116] =  o_LDPC_DEC_CODEWRD_116_cword_q0[ 0] ;
assign q0_0[   117] =  o_LDPC_DEC_CODEWRD_117_cword_q0[ 0] ;
assign q0_0[   118] =  o_LDPC_DEC_CODEWRD_118_cword_q0[ 0] ;
assign q0_0[   119] =  o_LDPC_DEC_CODEWRD_119_cword_q0[ 0] ;
assign q0_0[   120] =  o_LDPC_DEC_CODEWRD_120_cword_q0[ 0] ;
assign q0_0[   121] =  o_LDPC_DEC_CODEWRD_121_cword_q0[ 0] ;
assign q0_0[   122] =  o_LDPC_DEC_CODEWRD_122_cword_q0[ 0] ;
assign q0_0[   123] =  o_LDPC_DEC_CODEWRD_123_cword_q0[ 0] ;
assign q0_0[   124] =  o_LDPC_DEC_CODEWRD_124_cword_q0[ 0] ;
assign q0_0[   125] =  o_LDPC_DEC_CODEWRD_125_cword_q0[ 0] ;
assign q0_0[   126] =  o_LDPC_DEC_CODEWRD_126_cword_q0[ 0] ;
assign q0_0[   127] =  o_LDPC_DEC_CODEWRD_127_cword_q0[ 0] ;
assign q0_0[   128] =  o_LDPC_DEC_CODEWRD_128_cword_q0[ 0] ;
assign q0_0[   129] =  o_LDPC_DEC_CODEWRD_129_cword_q0[ 0] ;
assign q0_0[   130] =  o_LDPC_DEC_CODEWRD_130_cword_q0[ 0] ;
assign q0_0[   131] =  o_LDPC_DEC_CODEWRD_131_cword_q0[ 0] ;
assign q0_0[   132] =  o_LDPC_DEC_CODEWRD_132_cword_q0[ 0] ;
assign q0_0[   133] =  o_LDPC_DEC_CODEWRD_133_cword_q0[ 0] ;
assign q0_0[   134] =  o_LDPC_DEC_CODEWRD_134_cword_q0[ 0] ;
assign q0_0[   135] =  o_LDPC_DEC_CODEWRD_135_cword_q0[ 0] ;
assign q0_0[   136] =  o_LDPC_DEC_CODEWRD_136_cword_q0[ 0] ;
assign q0_0[   137] =  o_LDPC_DEC_CODEWRD_137_cword_q0[ 0] ;
assign q0_0[   138] =  o_LDPC_DEC_CODEWRD_138_cword_q0[ 0] ;
assign q0_0[   139] =  o_LDPC_DEC_CODEWRD_139_cword_q0[ 0] ;
assign q0_0[   140] =  o_LDPC_DEC_CODEWRD_140_cword_q0[ 0] ;
assign q0_0[   141] =  o_LDPC_DEC_CODEWRD_141_cword_q0[ 0] ;
assign q0_0[   142] =  o_LDPC_DEC_CODEWRD_142_cword_q0[ 0] ;
assign q0_0[   143] =  o_LDPC_DEC_CODEWRD_143_cword_q0[ 0] ;
assign q0_0[   144] =  o_LDPC_DEC_CODEWRD_144_cword_q0[ 0] ;
assign q0_0[   145] =  o_LDPC_DEC_CODEWRD_145_cword_q0[ 0] ;
assign q0_0[   146] =  o_LDPC_DEC_CODEWRD_146_cword_q0[ 0] ;
assign q0_0[   147] =  o_LDPC_DEC_CODEWRD_147_cword_q0[ 0] ;
assign q0_0[   148] =  o_LDPC_DEC_CODEWRD_148_cword_q0[ 0] ;
assign q0_0[   149] =  o_LDPC_DEC_CODEWRD_149_cword_q0[ 0] ;
assign q0_0[   150] =  o_LDPC_DEC_CODEWRD_150_cword_q0[ 0] ;
assign q0_0[   151] =  o_LDPC_DEC_CODEWRD_151_cword_q0[ 0] ;
assign q0_0[   152] =  o_LDPC_DEC_CODEWRD_152_cword_q0[ 0] ;
assign q0_0[   153] =  o_LDPC_DEC_CODEWRD_153_cword_q0[ 0] ;
assign q0_0[   154] =  o_LDPC_DEC_CODEWRD_154_cword_q0[ 0] ;
assign q0_0[   155] =  o_LDPC_DEC_CODEWRD_155_cword_q0[ 0] ;
assign q0_0[   156] =  o_LDPC_DEC_CODEWRD_156_cword_q0[ 0] ;
assign q0_0[   157] =  o_LDPC_DEC_CODEWRD_157_cword_q0[ 0] ;
assign q0_0[   158] =  o_LDPC_DEC_CODEWRD_158_cword_q0[ 0] ;
assign q0_0[   159] =  o_LDPC_DEC_CODEWRD_159_cword_q0[ 0] ;
assign q0_0[   160] =  o_LDPC_DEC_CODEWRD_160_cword_q0[ 0] ;
assign q0_0[   161] =  o_LDPC_DEC_CODEWRD_161_cword_q0[ 0] ;
assign q0_0[   162] =  o_LDPC_DEC_CODEWRD_162_cword_q0[ 0] ;
assign q0_0[   163] =  o_LDPC_DEC_CODEWRD_163_cword_q0[ 0] ;
assign q0_0[   164] =  o_LDPC_DEC_CODEWRD_164_cword_q0[ 0] ;
assign q0_0[   165] =  o_LDPC_DEC_CODEWRD_165_cword_q0[ 0] ;
assign q0_0[   166] =  o_LDPC_DEC_CODEWRD_166_cword_q0[ 0] ;
assign q0_0[   167] =  o_LDPC_DEC_CODEWRD_167_cword_q0[ 0] ;
assign q0_0[   168] =  o_LDPC_DEC_CODEWRD_168_cword_q0[ 0] ;
assign q0_0[   169] =  o_LDPC_DEC_CODEWRD_169_cword_q0[ 0] ;
assign q0_0[   170] =  o_LDPC_DEC_CODEWRD_170_cword_q0[ 0] ;
assign q0_0[   171] =  o_LDPC_DEC_CODEWRD_171_cword_q0[ 0] ;
assign q0_0[   172] =  o_LDPC_DEC_CODEWRD_172_cword_q0[ 0] ;
assign q0_0[   173] =  o_LDPC_DEC_CODEWRD_173_cword_q0[ 0] ;
assign q0_0[   174] =  o_LDPC_DEC_CODEWRD_174_cword_q0[ 0] ;
assign q0_0[   175] =  o_LDPC_DEC_CODEWRD_175_cword_q0[ 0] ;
assign q0_0[   176] =  o_LDPC_DEC_CODEWRD_176_cword_q0[ 0] ;
assign q0_0[   177] =  o_LDPC_DEC_CODEWRD_177_cword_q0[ 0] ;
assign q0_0[   178] =  o_LDPC_DEC_CODEWRD_178_cword_q0[ 0] ;
assign q0_0[   179] =  o_LDPC_DEC_CODEWRD_179_cword_q0[ 0] ;
assign q0_0[   180] =  o_LDPC_DEC_CODEWRD_180_cword_q0[ 0] ;
assign q0_0[   181] =  o_LDPC_DEC_CODEWRD_181_cword_q0[ 0] ;
assign q0_0[   182] =  o_LDPC_DEC_CODEWRD_182_cword_q0[ 0] ;
assign q0_0[   183] =  o_LDPC_DEC_CODEWRD_183_cword_q0[ 0] ;
assign q0_0[   184] =  o_LDPC_DEC_CODEWRD_184_cword_q0[ 0] ;
assign q0_0[   185] =  o_LDPC_DEC_CODEWRD_185_cword_q0[ 0] ;
assign q0_0[   186] =  o_LDPC_DEC_CODEWRD_186_cword_q0[ 0] ;
assign q0_0[   187] =  o_LDPC_DEC_CODEWRD_187_cword_q0[ 0] ;
assign q0_0[   188] =  o_LDPC_DEC_CODEWRD_188_cword_q0[ 0] ;
assign q0_0[   189] =  o_LDPC_DEC_CODEWRD_189_cword_q0[ 0] ;
assign q0_0[   190] =  o_LDPC_DEC_CODEWRD_190_cword_q0[ 0] ;
assign q0_0[   191] =  o_LDPC_DEC_CODEWRD_191_cword_q0[ 0] ;
assign q0_0[   192] =  o_LDPC_DEC_CODEWRD_192_cword_q0[ 0] ;
assign q0_0[   193] =  o_LDPC_DEC_CODEWRD_193_cword_q0[ 0] ;
assign q0_0[   194] =  o_LDPC_DEC_CODEWRD_194_cword_q0[ 0] ;
assign q0_0[   195] =  o_LDPC_DEC_CODEWRD_195_cword_q0[ 0] ;
assign q0_0[   196] =  o_LDPC_DEC_CODEWRD_196_cword_q0[ 0] ;
assign q0_0[   197] =  o_LDPC_DEC_CODEWRD_197_cword_q0[ 0] ;
assign q0_0[   198] =  o_LDPC_DEC_CODEWRD_198_cword_q0[ 0] ;
assign q0_0[   199] =  o_LDPC_DEC_CODEWRD_199_cword_q0[ 0] ;
assign q0_0[   200] =  o_LDPC_DEC_CODEWRD_200_cword_q0[ 0] ;
assign q0_0[   201] =  o_LDPC_DEC_CODEWRD_201_cword_q0[ 0] ;
assign q0_0[   202] =  o_LDPC_DEC_CODEWRD_202_cword_q0[ 0] ;
assign q0_0[   203] =  o_LDPC_DEC_CODEWRD_203_cword_q0[ 0] ;
assign q0_0[   204] =  o_LDPC_DEC_CODEWRD_204_cword_q0[ 0] ;
assign q0_0[   205] =  o_LDPC_DEC_CODEWRD_205_cword_q0[ 0] ;
assign q0_0[   206] =  o_LDPC_DEC_CODEWRD_206_cword_q0[ 0] ;
assign q0_0[   207] =  o_LDPC_DEC_CODEWRD_207_cword_q0[ 0] ;
assign q0_1[   0] =  o_LDPC_DEC_CODEWRD_0_cword_q0[ 1] ;
assign q0_1[   1] =  o_LDPC_DEC_CODEWRD_1_cword_q0[ 1] ;
assign q0_1[   2] =  o_LDPC_DEC_CODEWRD_2_cword_q0[ 1] ;
assign q0_1[   3] =  o_LDPC_DEC_CODEWRD_3_cword_q0[ 1] ;
assign q0_1[   4] =  o_LDPC_DEC_CODEWRD_4_cword_q0[ 1] ;
assign q0_1[   5] =  o_LDPC_DEC_CODEWRD_5_cword_q0[ 1] ;
assign q0_1[   6] =  o_LDPC_DEC_CODEWRD_6_cword_q0[ 1] ;
assign q0_1[   7] =  o_LDPC_DEC_CODEWRD_7_cword_q0[ 1] ;
assign q0_1[   8] =  o_LDPC_DEC_CODEWRD_8_cword_q0[ 1] ;
assign q0_1[   9] =  o_LDPC_DEC_CODEWRD_9_cword_q0[ 1] ;
assign q0_1[   10] =  o_LDPC_DEC_CODEWRD_10_cword_q0[ 1] ;
assign q0_1[   11] =  o_LDPC_DEC_CODEWRD_11_cword_q0[ 1] ;
assign q0_1[   12] =  o_LDPC_DEC_CODEWRD_12_cword_q0[ 1] ;
assign q0_1[   13] =  o_LDPC_DEC_CODEWRD_13_cword_q0[ 1] ;
assign q0_1[   14] =  o_LDPC_DEC_CODEWRD_14_cword_q0[ 1] ;
assign q0_1[   15] =  o_LDPC_DEC_CODEWRD_15_cword_q0[ 1] ;
assign q0_1[   16] =  o_LDPC_DEC_CODEWRD_16_cword_q0[ 1] ;
assign q0_1[   17] =  o_LDPC_DEC_CODEWRD_17_cword_q0[ 1] ;
assign q0_1[   18] =  o_LDPC_DEC_CODEWRD_18_cword_q0[ 1] ;
assign q0_1[   19] =  o_LDPC_DEC_CODEWRD_19_cword_q0[ 1] ;
assign q0_1[   20] =  o_LDPC_DEC_CODEWRD_20_cword_q0[ 1] ;
assign q0_1[   21] =  o_LDPC_DEC_CODEWRD_21_cword_q0[ 1] ;
assign q0_1[   22] =  o_LDPC_DEC_CODEWRD_22_cword_q0[ 1] ;
assign q0_1[   23] =  o_LDPC_DEC_CODEWRD_23_cword_q0[ 1] ;
assign q0_1[   24] =  o_LDPC_DEC_CODEWRD_24_cword_q0[ 1] ;
assign q0_1[   25] =  o_LDPC_DEC_CODEWRD_25_cword_q0[ 1] ;
assign q0_1[   26] =  o_LDPC_DEC_CODEWRD_26_cword_q0[ 1] ;
assign q0_1[   27] =  o_LDPC_DEC_CODEWRD_27_cword_q0[ 1] ;
assign q0_1[   28] =  o_LDPC_DEC_CODEWRD_28_cword_q0[ 1] ;
assign q0_1[   29] =  o_LDPC_DEC_CODEWRD_29_cword_q0[ 1] ;
assign q0_1[   30] =  o_LDPC_DEC_CODEWRD_30_cword_q0[ 1] ;
assign q0_1[   31] =  o_LDPC_DEC_CODEWRD_31_cword_q0[ 1] ;
assign q0_1[   32] =  o_LDPC_DEC_CODEWRD_32_cword_q0[ 1] ;
assign q0_1[   33] =  o_LDPC_DEC_CODEWRD_33_cword_q0[ 1] ;
assign q0_1[   34] =  o_LDPC_DEC_CODEWRD_34_cword_q0[ 1] ;
assign q0_1[   35] =  o_LDPC_DEC_CODEWRD_35_cword_q0[ 1] ;
assign q0_1[   36] =  o_LDPC_DEC_CODEWRD_36_cword_q0[ 1] ;
assign q0_1[   37] =  o_LDPC_DEC_CODEWRD_37_cword_q0[ 1] ;
assign q0_1[   38] =  o_LDPC_DEC_CODEWRD_38_cword_q0[ 1] ;
assign q0_1[   39] =  o_LDPC_DEC_CODEWRD_39_cword_q0[ 1] ;
assign q0_1[   40] =  o_LDPC_DEC_CODEWRD_40_cword_q0[ 1] ;
assign q0_1[   41] =  o_LDPC_DEC_CODEWRD_41_cword_q0[ 1] ;
assign q0_1[   42] =  o_LDPC_DEC_CODEWRD_42_cword_q0[ 1] ;
assign q0_1[   43] =  o_LDPC_DEC_CODEWRD_43_cword_q0[ 1] ;
assign q0_1[   44] =  o_LDPC_DEC_CODEWRD_44_cword_q0[ 1] ;
assign q0_1[   45] =  o_LDPC_DEC_CODEWRD_45_cword_q0[ 1] ;
assign q0_1[   46] =  o_LDPC_DEC_CODEWRD_46_cword_q0[ 1] ;
assign q0_1[   47] =  o_LDPC_DEC_CODEWRD_47_cword_q0[ 1] ;
assign q0_1[   48] =  o_LDPC_DEC_CODEWRD_48_cword_q0[ 1] ;
assign q0_1[   49] =  o_LDPC_DEC_CODEWRD_49_cword_q0[ 1] ;
assign q0_1[   50] =  o_LDPC_DEC_CODEWRD_50_cword_q0[ 1] ;
assign q0_1[   51] =  o_LDPC_DEC_CODEWRD_51_cword_q0[ 1] ;
assign q0_1[   52] =  o_LDPC_DEC_CODEWRD_52_cword_q0[ 1] ;
assign q0_1[   53] =  o_LDPC_DEC_CODEWRD_53_cword_q0[ 1] ;
assign q0_1[   54] =  o_LDPC_DEC_CODEWRD_54_cword_q0[ 1] ;
assign q0_1[   55] =  o_LDPC_DEC_CODEWRD_55_cword_q0[ 1] ;
assign q0_1[   56] =  o_LDPC_DEC_CODEWRD_56_cword_q0[ 1] ;
assign q0_1[   57] =  o_LDPC_DEC_CODEWRD_57_cword_q0[ 1] ;
assign q0_1[   58] =  o_LDPC_DEC_CODEWRD_58_cword_q0[ 1] ;
assign q0_1[   59] =  o_LDPC_DEC_CODEWRD_59_cword_q0[ 1] ;
assign q0_1[   60] =  o_LDPC_DEC_CODEWRD_60_cword_q0[ 1] ;
assign q0_1[   61] =  o_LDPC_DEC_CODEWRD_61_cword_q0[ 1] ;
assign q0_1[   62] =  o_LDPC_DEC_CODEWRD_62_cword_q0[ 1] ;
assign q0_1[   63] =  o_LDPC_DEC_CODEWRD_63_cword_q0[ 1] ;
assign q0_1[   64] =  o_LDPC_DEC_CODEWRD_64_cword_q0[ 1] ;
assign q0_1[   65] =  o_LDPC_DEC_CODEWRD_65_cword_q0[ 1] ;
assign q0_1[   66] =  o_LDPC_DEC_CODEWRD_66_cword_q0[ 1] ;
assign q0_1[   67] =  o_LDPC_DEC_CODEWRD_67_cword_q0[ 1] ;
assign q0_1[   68] =  o_LDPC_DEC_CODEWRD_68_cword_q0[ 1] ;
assign q0_1[   69] =  o_LDPC_DEC_CODEWRD_69_cword_q0[ 1] ;
assign q0_1[   70] =  o_LDPC_DEC_CODEWRD_70_cword_q0[ 1] ;
assign q0_1[   71] =  o_LDPC_DEC_CODEWRD_71_cword_q0[ 1] ;
assign q0_1[   72] =  o_LDPC_DEC_CODEWRD_72_cword_q0[ 1] ;
assign q0_1[   73] =  o_LDPC_DEC_CODEWRD_73_cword_q0[ 1] ;
assign q0_1[   74] =  o_LDPC_DEC_CODEWRD_74_cword_q0[ 1] ;
assign q0_1[   75] =  o_LDPC_DEC_CODEWRD_75_cword_q0[ 1] ;
assign q0_1[   76] =  o_LDPC_DEC_CODEWRD_76_cword_q0[ 1] ;
assign q0_1[   77] =  o_LDPC_DEC_CODEWRD_77_cword_q0[ 1] ;
assign q0_1[   78] =  o_LDPC_DEC_CODEWRD_78_cword_q0[ 1] ;
assign q0_1[   79] =  o_LDPC_DEC_CODEWRD_79_cword_q0[ 1] ;
assign q0_1[   80] =  o_LDPC_DEC_CODEWRD_80_cword_q0[ 1] ;
assign q0_1[   81] =  o_LDPC_DEC_CODEWRD_81_cword_q0[ 1] ;
assign q0_1[   82] =  o_LDPC_DEC_CODEWRD_82_cword_q0[ 1] ;
assign q0_1[   83] =  o_LDPC_DEC_CODEWRD_83_cword_q0[ 1] ;
assign q0_1[   84] =  o_LDPC_DEC_CODEWRD_84_cword_q0[ 1] ;
assign q0_1[   85] =  o_LDPC_DEC_CODEWRD_85_cword_q0[ 1] ;
assign q0_1[   86] =  o_LDPC_DEC_CODEWRD_86_cword_q0[ 1] ;
assign q0_1[   87] =  o_LDPC_DEC_CODEWRD_87_cword_q0[ 1] ;
assign q0_1[   88] =  o_LDPC_DEC_CODEWRD_88_cword_q0[ 1] ;
assign q0_1[   89] =  o_LDPC_DEC_CODEWRD_89_cword_q0[ 1] ;
assign q0_1[   90] =  o_LDPC_DEC_CODEWRD_90_cword_q0[ 1] ;
assign q0_1[   91] =  o_LDPC_DEC_CODEWRD_91_cword_q0[ 1] ;
assign q0_1[   92] =  o_LDPC_DEC_CODEWRD_92_cword_q0[ 1] ;
assign q0_1[   93] =  o_LDPC_DEC_CODEWRD_93_cword_q0[ 1] ;
assign q0_1[   94] =  o_LDPC_DEC_CODEWRD_94_cword_q0[ 1] ;
assign q0_1[   95] =  o_LDPC_DEC_CODEWRD_95_cword_q0[ 1] ;
assign q0_1[   96] =  o_LDPC_DEC_CODEWRD_96_cword_q0[ 1] ;
assign q0_1[   97] =  o_LDPC_DEC_CODEWRD_97_cword_q0[ 1] ;
assign q0_1[   98] =  o_LDPC_DEC_CODEWRD_98_cword_q0[ 1] ;
assign q0_1[   99] =  o_LDPC_DEC_CODEWRD_99_cword_q0[ 1] ;
assign q0_1[   100] =  o_LDPC_DEC_CODEWRD_100_cword_q0[ 1] ;
assign q0_1[   101] =  o_LDPC_DEC_CODEWRD_101_cword_q0[ 1] ;
assign q0_1[   102] =  o_LDPC_DEC_CODEWRD_102_cword_q0[ 1] ;
assign q0_1[   103] =  o_LDPC_DEC_CODEWRD_103_cword_q0[ 1] ;
assign q0_1[   104] =  o_LDPC_DEC_CODEWRD_104_cword_q0[ 1] ;
assign q0_1[   105] =  o_LDPC_DEC_CODEWRD_105_cword_q0[ 1] ;
assign q0_1[   106] =  o_LDPC_DEC_CODEWRD_106_cword_q0[ 1] ;
assign q0_1[   107] =  o_LDPC_DEC_CODEWRD_107_cword_q0[ 1] ;
assign q0_1[   108] =  o_LDPC_DEC_CODEWRD_108_cword_q0[ 1] ;
assign q0_1[   109] =  o_LDPC_DEC_CODEWRD_109_cword_q0[ 1] ;
assign q0_1[   110] =  o_LDPC_DEC_CODEWRD_110_cword_q0[ 1] ;
assign q0_1[   111] =  o_LDPC_DEC_CODEWRD_111_cword_q0[ 1] ;
assign q0_1[   112] =  o_LDPC_DEC_CODEWRD_112_cword_q0[ 1] ;
assign q0_1[   113] =  o_LDPC_DEC_CODEWRD_113_cword_q0[ 1] ;
assign q0_1[   114] =  o_LDPC_DEC_CODEWRD_114_cword_q0[ 1] ;
assign q0_1[   115] =  o_LDPC_DEC_CODEWRD_115_cword_q0[ 1] ;
assign q0_1[   116] =  o_LDPC_DEC_CODEWRD_116_cword_q0[ 1] ;
assign q0_1[   117] =  o_LDPC_DEC_CODEWRD_117_cword_q0[ 1] ;
assign q0_1[   118] =  o_LDPC_DEC_CODEWRD_118_cword_q0[ 1] ;
assign q0_1[   119] =  o_LDPC_DEC_CODEWRD_119_cword_q0[ 1] ;
assign q0_1[   120] =  o_LDPC_DEC_CODEWRD_120_cword_q0[ 1] ;
assign q0_1[   121] =  o_LDPC_DEC_CODEWRD_121_cword_q0[ 1] ;
assign q0_1[   122] =  o_LDPC_DEC_CODEWRD_122_cword_q0[ 1] ;
assign q0_1[   123] =  o_LDPC_DEC_CODEWRD_123_cword_q0[ 1] ;
assign q0_1[   124] =  o_LDPC_DEC_CODEWRD_124_cword_q0[ 1] ;
assign q0_1[   125] =  o_LDPC_DEC_CODEWRD_125_cword_q0[ 1] ;
assign q0_1[   126] =  o_LDPC_DEC_CODEWRD_126_cword_q0[ 1] ;
assign q0_1[   127] =  o_LDPC_DEC_CODEWRD_127_cword_q0[ 1] ;
assign q0_1[   128] =  o_LDPC_DEC_CODEWRD_128_cword_q0[ 1] ;
assign q0_1[   129] =  o_LDPC_DEC_CODEWRD_129_cword_q0[ 1] ;
assign q0_1[   130] =  o_LDPC_DEC_CODEWRD_130_cword_q0[ 1] ;
assign q0_1[   131] =  o_LDPC_DEC_CODEWRD_131_cword_q0[ 1] ;
assign q0_1[   132] =  o_LDPC_DEC_CODEWRD_132_cword_q0[ 1] ;
assign q0_1[   133] =  o_LDPC_DEC_CODEWRD_133_cword_q0[ 1] ;
assign q0_1[   134] =  o_LDPC_DEC_CODEWRD_134_cword_q0[ 1] ;
assign q0_1[   135] =  o_LDPC_DEC_CODEWRD_135_cword_q0[ 1] ;
assign q0_1[   136] =  o_LDPC_DEC_CODEWRD_136_cword_q0[ 1] ;
assign q0_1[   137] =  o_LDPC_DEC_CODEWRD_137_cword_q0[ 1] ;
assign q0_1[   138] =  o_LDPC_DEC_CODEWRD_138_cword_q0[ 1] ;
assign q0_1[   139] =  o_LDPC_DEC_CODEWRD_139_cword_q0[ 1] ;
assign q0_1[   140] =  o_LDPC_DEC_CODEWRD_140_cword_q0[ 1] ;
assign q0_1[   141] =  o_LDPC_DEC_CODEWRD_141_cword_q0[ 1] ;
assign q0_1[   142] =  o_LDPC_DEC_CODEWRD_142_cword_q0[ 1] ;
assign q0_1[   143] =  o_LDPC_DEC_CODEWRD_143_cword_q0[ 1] ;
assign q0_1[   144] =  o_LDPC_DEC_CODEWRD_144_cword_q0[ 1] ;
assign q0_1[   145] =  o_LDPC_DEC_CODEWRD_145_cword_q0[ 1] ;
assign q0_1[   146] =  o_LDPC_DEC_CODEWRD_146_cword_q0[ 1] ;
assign q0_1[   147] =  o_LDPC_DEC_CODEWRD_147_cword_q0[ 1] ;
assign q0_1[   148] =  o_LDPC_DEC_CODEWRD_148_cword_q0[ 1] ;
assign q0_1[   149] =  o_LDPC_DEC_CODEWRD_149_cword_q0[ 1] ;
assign q0_1[   150] =  o_LDPC_DEC_CODEWRD_150_cword_q0[ 1] ;
assign q0_1[   151] =  o_LDPC_DEC_CODEWRD_151_cword_q0[ 1] ;
assign q0_1[   152] =  o_LDPC_DEC_CODEWRD_152_cword_q0[ 1] ;
assign q0_1[   153] =  o_LDPC_DEC_CODEWRD_153_cword_q0[ 1] ;
assign q0_1[   154] =  o_LDPC_DEC_CODEWRD_154_cword_q0[ 1] ;
assign q0_1[   155] =  o_LDPC_DEC_CODEWRD_155_cword_q0[ 1] ;
assign q0_1[   156] =  o_LDPC_DEC_CODEWRD_156_cword_q0[ 1] ;
assign q0_1[   157] =  o_LDPC_DEC_CODEWRD_157_cword_q0[ 1] ;
assign q0_1[   158] =  o_LDPC_DEC_CODEWRD_158_cword_q0[ 1] ;
assign q0_1[   159] =  o_LDPC_DEC_CODEWRD_159_cword_q0[ 1] ;
assign q0_1[   160] =  o_LDPC_DEC_CODEWRD_160_cword_q0[ 1] ;
assign q0_1[   161] =  o_LDPC_DEC_CODEWRD_161_cword_q0[ 1] ;
assign q0_1[   162] =  o_LDPC_DEC_CODEWRD_162_cword_q0[ 1] ;
assign q0_1[   163] =  o_LDPC_DEC_CODEWRD_163_cword_q0[ 1] ;
assign q0_1[   164] =  o_LDPC_DEC_CODEWRD_164_cword_q0[ 1] ;
assign q0_1[   165] =  o_LDPC_DEC_CODEWRD_165_cword_q0[ 1] ;
assign q0_1[   166] =  o_LDPC_DEC_CODEWRD_166_cword_q0[ 1] ;
assign q0_1[   167] =  o_LDPC_DEC_CODEWRD_167_cword_q0[ 1] ;
assign q0_1[   168] =  o_LDPC_DEC_CODEWRD_168_cword_q0[ 1] ;
assign q0_1[   169] =  o_LDPC_DEC_CODEWRD_169_cword_q0[ 1] ;
assign q0_1[   170] =  o_LDPC_DEC_CODEWRD_170_cword_q0[ 1] ;
assign q0_1[   171] =  o_LDPC_DEC_CODEWRD_171_cword_q0[ 1] ;
assign q0_1[   172] =  o_LDPC_DEC_CODEWRD_172_cword_q0[ 1] ;
assign q0_1[   173] =  o_LDPC_DEC_CODEWRD_173_cword_q0[ 1] ;
assign q0_1[   174] =  o_LDPC_DEC_CODEWRD_174_cword_q0[ 1] ;
assign q0_1[   175] =  o_LDPC_DEC_CODEWRD_175_cword_q0[ 1] ;
assign q0_1[   176] =  o_LDPC_DEC_CODEWRD_176_cword_q0[ 1] ;
assign q0_1[   177] =  o_LDPC_DEC_CODEWRD_177_cword_q0[ 1] ;
assign q0_1[   178] =  o_LDPC_DEC_CODEWRD_178_cword_q0[ 1] ;
assign q0_1[   179] =  o_LDPC_DEC_CODEWRD_179_cword_q0[ 1] ;
assign q0_1[   180] =  o_LDPC_DEC_CODEWRD_180_cword_q0[ 1] ;
assign q0_1[   181] =  o_LDPC_DEC_CODEWRD_181_cword_q0[ 1] ;
assign q0_1[   182] =  o_LDPC_DEC_CODEWRD_182_cword_q0[ 1] ;
assign q0_1[   183] =  o_LDPC_DEC_CODEWRD_183_cword_q0[ 1] ;
assign q0_1[   184] =  o_LDPC_DEC_CODEWRD_184_cword_q0[ 1] ;
assign q0_1[   185] =  o_LDPC_DEC_CODEWRD_185_cword_q0[ 1] ;
assign q0_1[   186] =  o_LDPC_DEC_CODEWRD_186_cword_q0[ 1] ;
assign q0_1[   187] =  o_LDPC_DEC_CODEWRD_187_cword_q0[ 1] ;
assign q0_1[   188] =  o_LDPC_DEC_CODEWRD_188_cword_q0[ 1] ;
assign q0_1[   189] =  o_LDPC_DEC_CODEWRD_189_cword_q0[ 1] ;
assign q0_1[   190] =  o_LDPC_DEC_CODEWRD_190_cword_q0[ 1] ;
assign q0_1[   191] =  o_LDPC_DEC_CODEWRD_191_cword_q0[ 1] ;
assign q0_1[   192] =  o_LDPC_DEC_CODEWRD_192_cword_q0[ 1] ;
assign q0_1[   193] =  o_LDPC_DEC_CODEWRD_193_cword_q0[ 1] ;
assign q0_1[   194] =  o_LDPC_DEC_CODEWRD_194_cword_q0[ 1] ;
assign q0_1[   195] =  o_LDPC_DEC_CODEWRD_195_cword_q0[ 1] ;
assign q0_1[   196] =  o_LDPC_DEC_CODEWRD_196_cword_q0[ 1] ;
assign q0_1[   197] =  o_LDPC_DEC_CODEWRD_197_cword_q0[ 1] ;
assign q0_1[   198] =  o_LDPC_DEC_CODEWRD_198_cword_q0[ 1] ;
assign q0_1[   199] =  o_LDPC_DEC_CODEWRD_199_cword_q0[ 1] ;
assign q0_1[   200] =  o_LDPC_DEC_CODEWRD_200_cword_q0[ 1] ;
assign q0_1[   201] =  o_LDPC_DEC_CODEWRD_201_cword_q0[ 1] ;
assign q0_1[   202] =  o_LDPC_DEC_CODEWRD_202_cword_q0[ 1] ;
assign q0_1[   203] =  o_LDPC_DEC_CODEWRD_203_cword_q0[ 1] ;
assign q0_1[   204] =  o_LDPC_DEC_CODEWRD_204_cword_q0[ 1] ;
assign q0_1[   205] =  o_LDPC_DEC_CODEWRD_205_cword_q0[ 1] ;
assign q0_1[   206] =  o_LDPC_DEC_CODEWRD_206_cword_q0[ 1] ;
assign q0_1[   207] =  o_LDPC_DEC_CODEWRD_207_cword_q0[ 1] ;
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
assign i_LDPC_DEC_converged_valid_NOT_USED_convered_valid = 0 ;
assign i_LDPC_DEC_valid_NOT_USED_dec_valid = dec_valid ;
assign i_LDPC_DEC_valid_codeword_NOT_USED_dec_valid_cword = dec_valid_cword ;
assign start =  o_LDPC_DEC_start_start;
assign i_LDPC_DEC_converged_valid_convered_vld = converged_loops_ended ; 
assign i_LDPC_DEC_converged_status_convered_stat = converged_pass_fail ;
assign i_LDPC_DEC_CODEWRD_OUT_BIT_0_final_cword = final_y_nr_dec[0];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_1_final_cword = final_y_nr_dec[1];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_2_final_cword = final_y_nr_dec[2];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_3_final_cword = final_y_nr_dec[3];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_4_final_cword = final_y_nr_dec[4];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_5_final_cword = final_y_nr_dec[5];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_6_final_cword = final_y_nr_dec[6];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_7_final_cword = final_y_nr_dec[7];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_8_final_cword = final_y_nr_dec[8];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_9_final_cword = final_y_nr_dec[9];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_10_final_cword = final_y_nr_dec[10];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_11_final_cword = final_y_nr_dec[11];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_12_final_cword = final_y_nr_dec[12];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_13_final_cword = final_y_nr_dec[13];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_14_final_cword = final_y_nr_dec[14];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_15_final_cword = final_y_nr_dec[15];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_16_final_cword = final_y_nr_dec[16];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_17_final_cword = final_y_nr_dec[17];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_18_final_cword = final_y_nr_dec[18];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_19_final_cword = final_y_nr_dec[19];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_20_final_cword = final_y_nr_dec[20];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_21_final_cword = final_y_nr_dec[21];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_22_final_cword = final_y_nr_dec[22];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_23_final_cword = final_y_nr_dec[23];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_24_final_cword = final_y_nr_dec[24];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_25_final_cword = final_y_nr_dec[25];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_26_final_cword = final_y_nr_dec[26];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_27_final_cword = final_y_nr_dec[27];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_28_final_cword = final_y_nr_dec[28];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_29_final_cword = final_y_nr_dec[29];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_30_final_cword = final_y_nr_dec[30];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_31_final_cword = final_y_nr_dec[31];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_32_final_cword = final_y_nr_dec[32];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_33_final_cword = final_y_nr_dec[33];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_34_final_cword = final_y_nr_dec[34];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_35_final_cword = final_y_nr_dec[35];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_36_final_cword = final_y_nr_dec[36];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_37_final_cword = final_y_nr_dec[37];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_38_final_cword = final_y_nr_dec[38];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_39_final_cword = final_y_nr_dec[39];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_40_final_cword = final_y_nr_dec[40];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_41_final_cword = final_y_nr_dec[41];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_42_final_cword = final_y_nr_dec[42];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_43_final_cword = final_y_nr_dec[43];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_44_final_cword = final_y_nr_dec[44];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_45_final_cword = final_y_nr_dec[45];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_46_final_cword = final_y_nr_dec[46];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_47_final_cword = final_y_nr_dec[47];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_48_final_cword = final_y_nr_dec[48];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_49_final_cword = final_y_nr_dec[49];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_50_final_cword = final_y_nr_dec[50];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_51_final_cword = final_y_nr_dec[51];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_52_final_cword = final_y_nr_dec[52];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_53_final_cword = final_y_nr_dec[53];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_54_final_cword = final_y_nr_dec[54];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_55_final_cword = final_y_nr_dec[55];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_56_final_cword = final_y_nr_dec[56];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_57_final_cword = final_y_nr_dec[57];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_58_final_cword = final_y_nr_dec[58];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_59_final_cword = final_y_nr_dec[59];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_60_final_cword = final_y_nr_dec[60];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_61_final_cword = final_y_nr_dec[61];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_62_final_cword = final_y_nr_dec[62];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_63_final_cword = final_y_nr_dec[63];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_64_final_cword = final_y_nr_dec[64];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_65_final_cword = final_y_nr_dec[65];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_66_final_cword = final_y_nr_dec[66];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_67_final_cword = final_y_nr_dec[67];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_68_final_cword = final_y_nr_dec[68];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_69_final_cword = final_y_nr_dec[69];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_70_final_cword = final_y_nr_dec[70];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_71_final_cword = final_y_nr_dec[71];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_72_final_cword = final_y_nr_dec[72];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_73_final_cword = final_y_nr_dec[73];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_74_final_cword = final_y_nr_dec[74];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_75_final_cword = final_y_nr_dec[75];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_76_final_cword = final_y_nr_dec[76];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_77_final_cword = final_y_nr_dec[77];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_78_final_cword = final_y_nr_dec[78];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_79_final_cword = final_y_nr_dec[79];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_80_final_cword = final_y_nr_dec[80];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_81_final_cword = final_y_nr_dec[81];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_82_final_cword = final_y_nr_dec[82];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_83_final_cword = final_y_nr_dec[83];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_84_final_cword = final_y_nr_dec[84];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_85_final_cword = final_y_nr_dec[85];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_86_final_cword = final_y_nr_dec[86];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_87_final_cword = final_y_nr_dec[87];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_88_final_cword = final_y_nr_dec[88];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_89_final_cword = final_y_nr_dec[89];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_90_final_cword = final_y_nr_dec[90];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_91_final_cword = final_y_nr_dec[91];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_92_final_cword = final_y_nr_dec[92];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_93_final_cword = final_y_nr_dec[93];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_94_final_cword = final_y_nr_dec[94];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_95_final_cword = final_y_nr_dec[95];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_96_final_cword = final_y_nr_dec[96];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_97_final_cword = final_y_nr_dec[97];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_98_final_cword = final_y_nr_dec[98];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_99_final_cword = final_y_nr_dec[99];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_100_final_cword = final_y_nr_dec[100];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_101_final_cword = final_y_nr_dec[101];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_102_final_cword = final_y_nr_dec[102];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_103_final_cword = final_y_nr_dec[103];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_104_final_cword = final_y_nr_dec[104];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_105_final_cword = final_y_nr_dec[105];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_106_final_cword = final_y_nr_dec[106];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_107_final_cword = final_y_nr_dec[107];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_108_final_cword = final_y_nr_dec[108];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_109_final_cword = final_y_nr_dec[109];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_110_final_cword = final_y_nr_dec[110];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_111_final_cword = final_y_nr_dec[111];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_112_final_cword = final_y_nr_dec[112];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_113_final_cword = final_y_nr_dec[113];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_114_final_cword = final_y_nr_dec[114];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_115_final_cword = final_y_nr_dec[115];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_116_final_cword = final_y_nr_dec[116];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_117_final_cword = final_y_nr_dec[117];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_118_final_cword = final_y_nr_dec[118];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_119_final_cword = final_y_nr_dec[119];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_120_final_cword = final_y_nr_dec[120];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_121_final_cword = final_y_nr_dec[121];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_122_final_cword = final_y_nr_dec[122];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_123_final_cword = final_y_nr_dec[123];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_124_final_cword = final_y_nr_dec[124];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_125_final_cword = final_y_nr_dec[125];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_126_final_cword = final_y_nr_dec[126];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_127_final_cword = final_y_nr_dec[127];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_128_final_cword = final_y_nr_dec[128];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_129_final_cword = final_y_nr_dec[129];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_130_final_cword = final_y_nr_dec[130];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_131_final_cword = final_y_nr_dec[131];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_132_final_cword = final_y_nr_dec[132];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_133_final_cword = final_y_nr_dec[133];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_134_final_cword = final_y_nr_dec[134];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_135_final_cword = final_y_nr_dec[135];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_136_final_cword = final_y_nr_dec[136];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_137_final_cword = final_y_nr_dec[137];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_138_final_cword = final_y_nr_dec[138];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_139_final_cword = final_y_nr_dec[139];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_140_final_cword = final_y_nr_dec[140];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_141_final_cword = final_y_nr_dec[141];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_142_final_cword = final_y_nr_dec[142];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_143_final_cword = final_y_nr_dec[143];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_144_final_cword = final_y_nr_dec[144];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_145_final_cword = final_y_nr_dec[145];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_146_final_cword = final_y_nr_dec[146];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_147_final_cword = final_y_nr_dec[147];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_148_final_cword = final_y_nr_dec[148];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_149_final_cword = final_y_nr_dec[149];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_150_final_cword = final_y_nr_dec[150];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_151_final_cword = final_y_nr_dec[151];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_152_final_cword = final_y_nr_dec[152];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_153_final_cword = final_y_nr_dec[153];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_154_final_cword = final_y_nr_dec[154];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_155_final_cword = final_y_nr_dec[155];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_156_final_cword = final_y_nr_dec[156];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_157_final_cword = final_y_nr_dec[157];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_158_final_cword = final_y_nr_dec[158];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_159_final_cword = final_y_nr_dec[159];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_160_final_cword = final_y_nr_dec[160];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_161_final_cword = final_y_nr_dec[161];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_162_final_cword = final_y_nr_dec[162];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_163_final_cword = final_y_nr_dec[163];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_164_final_cword = final_y_nr_dec[164];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_165_final_cword = final_y_nr_dec[165];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_166_final_cword = final_y_nr_dec[166];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_167_final_cword = final_y_nr_dec[167];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_168_final_cword = final_y_nr_dec[168];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_169_final_cword = final_y_nr_dec[169];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_170_final_cword = final_y_nr_dec[170];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_171_final_cword = final_y_nr_dec[171];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_172_final_cword = final_y_nr_dec[172];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_173_final_cword = final_y_nr_dec[173];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_174_final_cword = final_y_nr_dec[174];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_175_final_cword = final_y_nr_dec[175];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_176_final_cword = final_y_nr_dec[176];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_177_final_cword = final_y_nr_dec[177];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_178_final_cword = final_y_nr_dec[178];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_179_final_cword = final_y_nr_dec[179];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_180_final_cword = final_y_nr_dec[180];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_181_final_cword = final_y_nr_dec[181];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_182_final_cword = final_y_nr_dec[182];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_183_final_cword = final_y_nr_dec[183];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_184_final_cword = final_y_nr_dec[184];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_185_final_cword = final_y_nr_dec[185];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_186_final_cword = final_y_nr_dec[186];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_187_final_cword = final_y_nr_dec[187];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_188_final_cword = final_y_nr_dec[188];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_189_final_cword = final_y_nr_dec[189];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_190_final_cword = final_y_nr_dec[190];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_191_final_cword = final_y_nr_dec[191];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_192_final_cword = final_y_nr_dec[192];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_193_final_cword = final_y_nr_dec[193];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_194_final_cword = final_y_nr_dec[194];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_195_final_cword = final_y_nr_dec[195];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_196_final_cword = final_y_nr_dec[196];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_197_final_cword = final_y_nr_dec[197];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_198_final_cword = final_y_nr_dec[198];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_199_final_cword = final_y_nr_dec[199];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_200_final_cword = final_y_nr_dec[200];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_201_final_cword = final_y_nr_dec[201];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_202_final_cword = final_y_nr_dec[202];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_203_final_cword = final_y_nr_dec[203];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_204_final_cword = final_y_nr_dec[204];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_205_final_cword = final_y_nr_dec[205];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_206_final_cword = final_y_nr_dec[206];
assign i_LDPC_DEC_CODEWRD_OUT_BIT_207_final_cword = final_y_nr_dec[207];

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
.y_nr_enc(y_nr_enc),
.valid_cword_enc(valid_cword_enc),
.clr(1'b0),
.rstn(~wb_rst_i),
.clk(wb_clk_i)

);

sntc_ldpc_decoder_wrapper sntc_ldpc_decoder_wrapper_U
 (

.q0_0(q0_0),
.q0_1(q0_1),

.final_y_nr_dec(final_y_nr_dec),
.exp_syn(exp_syn),
.percent_probability_int (percent_probability_int),
.HamDist_loop_max(HamDist_loop_max),
.HamDist_loop_percentage( HamDist_loop_percentage),

.HamDist_iir1(HamDist_iir1),
.HamDist_iir2(HamDist_iir2),
.HamDist_iir3(HamDist_iir3),

.converged_loops_ended(converged_loops_ended),
.converged_pass_fail(converged_pass_fail),

.start_dec(start),
.syn_valid_cword_dec(syn_valid_cword_dec),
.clr(1'b0),
.rstn(~wb_rst_i),
.clk(wb_clk_i)







);



endmodule

`default_nettype wire
