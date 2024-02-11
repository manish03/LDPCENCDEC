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
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
parameter MM   = 'h 000a8 ,
parameter NN   = 'h 000d0 ,
parameter SUM_LEN        = 32,
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
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
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    input       [MM-1:0]                      P_y_nr_in_port,
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
    input                                     P_ldpc_from_io,
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
    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

ldpcEncDec mprj (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif

    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_dat_o(wbs_dat_o),

    // Logic Analyzer

    .la_data_in(la_data_in),
    .la_data_out(la_data_out),
    .la_oenb (la_oenb),

    // IO Pads

    .io_in ({io_in[37:30],io_in[7:0]}),
    .io_out({io_out[37:30],io_out[7:0]}),
    .io_oeb({io_oeb[37:30],io_oeb[7:0]}),

    .P_y_nr_in_port(P_y_nr_in_port),
    .PO_y_nr_enc(PO_y_nr_enc),
    .PO_valid_cword_enc(PO_valid_cword_enc),
    .P_sel_q0_0_frmC(P_sel_q0_0_frmC),
    .P_sel_q0_1_frmC(P_sel_q0_1_frmC),
    .P_err_intro_q0_0_frmC(P_err_intro_q0_0_frmC),
    .P_err_intro_q0_1_frmC(P_err_intro_q0_1_frmC),
    .P_err_intro(P_err_intro),
    .P_q0_0_frmC(P_q0_0_frmC),
    .P_q0_1_frmC(P_q0_1_frmC),
    .PO_err_intro_decoder(PO_err_intro_decoder),
    .P_exp_syn(P_exp_syn),
    .P_percent_probability_int(P_percent_probability_int),
    .P_HamDist_loop_max(P_HamDist_loop_max),
    .P_ldpc_from_io(P_ldpc_from_io),
    .P_HamDist_loop_percentage(P_HamDist_loop_percentage),
    .P_HamDist_iir1(P_HamDist_iir1),
    .P_HamDist_iir2(P_HamDist_iir2),
    .P_HamDist_iir3(P_HamDist_iir3),
    .PO_converged_valid(PO_converged_valid),
    .PO_dec_valid_not_used(PO_dec_valid_not_used),
    .PO_syn_valid_cword_dec(PO_syn_valid_cword_dec),
    .P_start_dec(P_start_dec),
    .PO_converged_loops_ended(PO_converged_loops_ended),
    .P_reg_mprj_slave(P_reg_mprj_slave),
    .PO_converged_pass_fail(PO_converged_pass_fail),
    .PO_final_y_nr_dec(PO_final_y_nr_dec),
    .P_pass_fail(P_pass_fail),
    .PO_tb_pass_fail_decoder(PO_tb_pass_fail_decoder),
    // IRQ
    .irq(user_irq)
);

endmodule	// user_project_wrapper

`default_nettype wire
