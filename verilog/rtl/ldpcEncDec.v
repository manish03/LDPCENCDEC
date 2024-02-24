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
 * ldpcEncDec
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

module ldpcEncDec #(
parameter MM   = 'h 000a8 ,
parameter NN   = 'h 000d0 ,
parameter SUM_LEN        = 32,
    parameter BITS = 16
)(
`ifdef USE_POWER_PINS
    inout                                     vccd1,	// User area 1 1.8V supply
    inout                                     vssd1,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input                                     wb_clk_i,
    input                                     wb_rst_i,
    input                                     wbs_stb_i,
    input                                     wbs_cyc_i,
    input                                     wbs_we_i,
    input       [3:0]                         wbs_sel_i,
    input       [31:0]                        wbs_dat_i,
    input       [31:0]                        wbs_adr_i,
    output                                    wbs_ack_o,
    output      [31:0]                        wbs_dat_o,

    // Logic Analyzer Signals
    input       [127:0]                       la_data_in,
    output      [127:0]                       la_data_out,
    input       [127:0]                       la_oenb,

    // IOs
    input       [BITS-1:0]                    io_in,
    output      [BITS-1:0]                    io_out,
    output      [BITS-1:0]                    io_oeb,

    input       [NN-MM-1:0]                   P_y_nr_in_port,
    output wire [NN-1:0]                      PO_y_nr_enc,
    output wire                               PO_valid_cword_enc,
    input                                     P_sel_q0_0_frmC,
    input                                     P_sel_q0_1_frmC,
    input       [NN-1:0]                      P_err_intro_q0_0_frmC,
    input       [NN-1:0]                      P_err_intro_q0_1_frmC,
    input                                     P_err_intro,
    input       [NN-1:0]                      P_q0_0_frmC,
    input       [NN-1:0]                      P_q0_1_frmC,
    output wire                               PO_err_intro_decoder,
    input       [MM-1:0]                      P_exp_syn,
    input       [32-1:0]                      P_percent_probability_int,
    input       [SUM_LEN-1:0]                 P_HamDist_loop_max,
    input       [31:0]                        P_ldpc_from_io,
    input       [SUM_LEN-1:0]                 P_HamDist_loop_percentage,
    input       [SUM_LEN-1:0]                 P_HamDist_iir1,
    input       [SUM_LEN-1:0]                 P_HamDist_iir2,
    input       [SUM_LEN-1:0]                 P_HamDist_iir3,
    output wire                               PO_converged_valid,
    output wire                               PO_dec_valid_not_used,
    output wire                               PO_syn_valid_cword_dec,
    input                                     P_start_dec,
    output wire                               PO_converged_loops_ended,
    input       [32-1:0]                      P_reg_mprj_slave,
    output wire                               PO_converged_pass_fail,
    output wire [NN-1:0]                      PO_final_y_nr_dec,
    input                                     P_pass_fail,
    output wire                               PO_tb_pass_fail_decoder,
    // IRQ
    output      [2:0]                         irq
);

//////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
    wire        [NN-MM-1:0]                   w_y_nr_in_port;

    wire                                      w_sel_q0_0_frmC;
    wire                                      w_sel_q0_1_frmC;
    wire        [NN-1:0]                      w_err_intro_q0_0_frmC;
    wire        [NN-1:0]                      w_err_intro_q0_1_frmC;
    wire                                      w_err_intro;
    wire        [NN-1:0]                      w_q0_0_frmC;
    wire        [NN-1:0]                      w_q0_1_frmC;

    wire        [MM-1:0]                      w_exp_syn;
    wire        [32-1:0]                      w_percent_probability_int;
    wire        [SUM_LEN-1:0]                 w_HamDist_loop_max;
    wire        [31:0]                        w_ldpc_from_io;
    wire        [SUM_LEN-1:0]                 w_HamDist_loop_percentage;
    wire        [SUM_LEN-1:0]                 w_HamDist_iir1;
    wire        [SUM_LEN-1:0]                 w_HamDist_iir2;
    wire        [SUM_LEN-1:0]                 w_HamDist_iir3;



    wire                                      w_start_dec;

    wire        [32-1:0]                      w_reg_mprj_slave;


    wire                                      w_pass_fail;

    ///////////////////////////////////////////////////////////////////
 wire [31:0]                    ldpc_from_io;
    ///////////////////LDPC wire////////////////////////////////////////////////
 wire [NN-MM-1:0]               y_nr_in_port;
 wire [NN-1:0]                  y_nr_enc;
 wire                           valid_cword_enc;
    ///////////////////LDPC wire////////////////////////////////////////////////
 wire  [NN-1:0]                 q0_0;
 wire  [NN-1:0]                 q0_1;
 wire  [NN-1:0]                 q0_0_frmC;
 wire  [NN-1:0]                 q0_1_frmC;
 wire                           sel_q0_0_frmC;
 wire                           sel_q0_1_frmC;
 wire  [NN-1:0]                 err_intro_q0_0_frmC;
 wire  [NN-1:0]                 err_intro_q0_1_frmC;

 wire  [NN-1:0]                 final_y_nr_dec;

 wire  [MM-1:0]                 exp_syn;
 wire  [MM-1:0]                 l_exp_syn;
 wire  [31:0]                   percent_probability_int;
 wire  [SUM_LEN-1:0]            HamDist_loop_max;
 wire  [SUM_LEN-1:0]            HamDist_loop_percentage;

 wire  [SUM_LEN-1:0]            HamDist_iir1;
 wire  [SUM_LEN-1:0]            HamDist_iir2;
 wire  [SUM_LEN-1:0]            HamDist_iir3;
 wire  [31:0]                   reg_mprj_slave;

 wire                           start_dec;
 wire                           start_dec_rtl;
 reg                            start_dec_rtl_Q;
 wire                           dec_valid_not_used;
 wire                           converged_valid;
 wire                           converged_loops_ended ; 
 wire                           converged_pass_fail ;
 wire                           syn_valid_cword_dec;

 wire                           i_wb_cyc;
 wire                           i_wb_stb;
 wire [31:0]                    reg_base_addr;
 wire                           pass_fail;
 wire                           err_intro;
 wire                           err_intro_decoder;
 wire                           tb_pass_fail_decoder;

 wire                           o_wb_stall;
 wire                           o_wb_err;
 wire                           o_wb_rty;

//////////////////////////////////////////// Enc to Dec /////////////////
//////////////////////////////////////////////////////////////////////////
    assign    w_y_nr_in_port                   = ldpc_from_io[0]  ? P_y_nr_in_port           : y_nr_in_port;
    assign    PO_y_nr_enc                      = y_nr_enc;
    assign    PO_valid_cword_enc               = valid_cword_enc;
    assign    w_sel_q0_0_frmC                  = ldpc_from_io[0] ? P_sel_q0_0_frmC           : sel_q0_0_frmC;
    assign    w_sel_q0_1_frmC                  = ldpc_from_io[0] ? P_sel_q0_1_frmC           : sel_q0_1_frmC;
    assign    w_err_intro_q0_0_frmC            = ldpc_from_io[0] ? P_err_intro_q0_0_frmC     : err_intro_q0_0_frmC;
    assign    w_err_intro_q0_1_frmC            = ldpc_from_io[0] ? P_err_intro_q0_1_frmC     : err_intro_q0_1_frmC;
    assign    w_err_intro                      = ldpc_from_io[0] ? P_err_intro               : err_intro;
    assign    w_q0_0_frmC                      = ldpc_from_io[0] ? P_q0_0_frmC               : q0_0_frmC;
    assign    w_q0_1_frmC                      = ldpc_from_io[0] ? P_q0_1_frmC               : q0_1_frmC;
    assign    PO_err_intro_decoder             = err_intro_decoder;
    assign    w_exp_syn                        = ldpc_from_io[0] ? P_exp_syn                 :l_exp_syn;
    assign    w_percent_probability_int        = ldpc_from_io[0] ? P_percent_probability_int :percent_probability_int;
    assign    w_HamDist_loop_max               = ldpc_from_io[0] ? P_HamDist_loop_max        :HamDist_loop_max;
    assign    w_ldpc_from_io                   = ldpc_from_io[0] ? P_ldpc_from_io            :ldpc_from_io;
    assign    w_HamDist_loop_percentage        = ldpc_from_io[0] ? P_HamDist_loop_percentage :HamDist_loop_percentage;
    assign    w_HamDist_iir1                   = ldpc_from_io[0] ? P_HamDist_iir1            :HamDist_iir1;
    assign    w_HamDist_iir2                   = ldpc_from_io[0] ? P_HamDist_iir2            :HamDist_iir2;
    assign    w_HamDist_iir3                   = ldpc_from_io[0] ? P_HamDist_iir3            :HamDist_iir3;               
    assign    PO_converged_valid               = converged_valid;
    assign    PO_dec_valid_not_used            = dec_valid_not_used;
    assign    PO_syn_valid_cword_dec           = syn_valid_cword_dec;
    assign    w_start_dec                      = ldpc_from_io[0] ? P_start_dec               : start_dec;
    assign    PO_converged_loops_ended         = converged_loops_ended;
    assign    w_reg_mprj_slave                 = ldpc_from_io[0] ? P_reg_mprj_slave          : reg_mprj_slave;
    assign    PO_converged_pass_fail           = converged_pass_fail;
    assign    PO_final_y_nr_dec                = final_y_nr_dec;
    assign    w_pass_fail                      = ldpc_from_io[0] ? P_pass_fail               : pass_fail;
    assign    PO_tb_pass_fail_decoder          = tb_pass_fail_decoder;

////////////////////////////////////////////////////////////////////////

assign l_exp_syn = {(MM){1'b0}};

genvar i;
generate
		for (i=0;i<NN;i++) begin
			assign q0_0[i] = w_sel_q0_0_frmC ? w_q0_0_frmC[i] : ((y_nr_enc[i] ? 1'b1:1'b1) ^ w_err_intro_q0_0_frmC[i]);
			assign q0_1[i] = w_sel_q0_1_frmC ? w_q0_1_frmC[i] : ((y_nr_enc[i] ? 1'b1:1'b0) ^ w_err_intro_q0_1_frmC[i]);
		end
endgenerate

assign err_intro_decoder = (~(q0_1 == y_nr_enc));
assign tb_pass_fail_decoder = (final_y_nr_dec == y_nr_enc);


    ///////////////////LDPC wire////////////////////////////////////////////////

    assign reg_base_addr = 32'h3001_0000;
    assign i_wb_cyc = (wbs_adr_i[31:13]==reg_base_addr[31:13]) ? wbs_cyc_i : 1'b0;
    assign i_wb_stb = (wbs_adr_i[31:13]==reg_base_addr[31:13]) ? wbs_stb_i : 1'b0;

    /////////////////////////////////////////////////////////////////////////////
    //wire start/////
    //:r LDPC_inc.sv     Begin File Include
    //
    //

    `include "LDPC_inc.sv"
                 
    //wire end///// LDPC_inc.sv   End File Include
    /////////////////////////////////////////////////////////////////////////////
    //assign start
    // :r LDPC_assign.sv     Begin File Include

    `include "LDPC_assign.sv"


    //assign end   End File Include
    /////////////////////////////////////////////////////////////////////////////

LDPC_CSR LDPC_CSR_U
(
  .i_wb_cyc(i_wb_cyc),
  .i_wb_stb(i_wb_stb),
  .o_wb_stall( o_wb_stall),
  .i_wb_adr(wbs_adr_i[12:0]),
  .i_wb_we(wbs_we_i),
  .i_wb_dat(wbs_dat_i),
  .i_wb_sel(wbs_sel_i),
  .o_wb_ack(wbs_ack_o),
  .o_wb_err( o_wb_err),
  .o_wb_rty( o_wb_rty),
  .o_wb_dat(wbs_dat_o),


  //////////////////////////////////////////////////////////////////////////
  //      rggen --plugin rggen-verilog -c config.yml LDPC_rggen.yml
  //      #// ln((1-p)/p)*(2**11) + 0.5
  //      #// modified bits = NN * p + 0.5
  //////////////////////////////////////////////////////////////////////////
  ///// connect start
  // :r LDPC_inst.sv    Begin File Include


  `include "LDPC_inst.sv"
  
  
  
  ///// connect end   End File Include
  //////////////////////////////////////////////////////////////////////////




  .i_clk(wb_clk_i),
  .i_rst_n(~wb_rst_i)
);


sntc_ldpc_encoder_wrapper sntc_ldpc_encoder_wrapper_U
(
.y_nr_in_port(w_y_nr_in_port),
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
.exp_syn(l_exp_syn),
.percent_probability_int (w_percent_probability_int),
.HamDist_loop_max(w_HamDist_loop_max),
.HamDist_loop_percentage( w_HamDist_loop_percentage),

.HamDist_iir1(w_HamDist_iir1),
.HamDist_iir2(w_HamDist_iir2),
.HamDist_iir3(w_HamDist_iir3),

.converged_loops_ended(converged_loops_ended),
.converged_pass_fail(converged_pass_fail),

.start_dec(start_dec_rtl),
.syn_valid_cword_dec(syn_valid_cword_dec),
.clr(1'b0),
.rstn(~wb_rst_i),
.clk(wb_clk_i)







);

assign start_dec_rtl = w_start_dec & ~start_dec_rtl_Q;
always @(posedge wb_clk_i) begin
	if (wb_rst_i) begin
		start_dec_rtl_Q <= 1'b0;
	end else begin
		start_dec_rtl_Q <= w_start_dec;
	end
end


endmodule

`default_nettype wire
