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
wire  [NN-1:0]                 q0_0_frmC;
wire  [NN-1:0]                 q0_1_frmC;
wire                           sel_q0_frmC;
wire                           sel_q1_frmC;
wire  [NN-1:0]                 err_intro_q0_0_frmC;
wire  [NN-1:0]                 err_intro_q0_1_frmC;

wire  [NN-1:0]                 final_y_nr_dec;

wire  [MM-1:0]                 exp_syn;
wire  [31:0]                   percent_probability_int;
wire  [SUM_LEN-1:0]            HamDist_loop_max;
wire  [SUM_LEN-1:0]            HamDist_loop_percentage;

wire  [SUM_LEN-1:0]            HamDist_iir1;
wire  [SUM_LEN-1:0]            HamDist_iir2;
wire  [SUM_LEN-1:0]            HamDist_iir3;

 wire                          start_dec;
 wire                          start_dec_rtl;
 reg                           start_dec_rtl_Q;
 wire                          dec_valid_not_used;
wire converged_loops_ended ; 
wire converged_pass_fail ;
wire syn_valid_cword_dec;

    wire i_wb_cyc ;
    wire i_wb_stb ;
    wire [31:0] reg_base_addr;
    wire pass_fail;
wire err_intro;
wire err_intro_decoder;
wire pass_fail_decoder;
//////////////////////////////////////////// Enc to Dec /////////////////

assign start_dec_rtl = start_dec & ~start_dec_rtl_Q;

genvar i;
generate
		for (i=0;i<NN;i++) begin
			assign q0_0[i] = sel_q0_frmC ? q0_0_frmC[i] : ((y_nr_enc[i] ? 1'b1:1'b1) ^ err_intro_q0_0_frmC[i]);
			assign q0_1[i] = sel_q1_frmC ? q0_1_frmC[i] : ((y_nr_enc[i] ? 1'b1:1'b0) ^ err_intro_q0_1_frmC[i]);
		end
endgenerate

assign err_intro_decoder = (~(q0_1 == y_nr_enc));
assign pass_fail_decoder = (final_y_nr_dec == y_nr_enc);


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

.start_dec(start_dec_rtl),
.syn_valid_cword_dec(syn_valid_cword_dec),
.clr(1'b0),
.rstn(~wb_rst_i),
.clk(wb_clk_i)







);

always @(posedge wb_clk_i) begin
	if (wb_rst_i) begin
		start_dec_rtl_Q <= 1'b0;
	end else begin
		start_dec_rtl_Q <= start_dec;
	end
end


endmodule

`default_nettype wire
