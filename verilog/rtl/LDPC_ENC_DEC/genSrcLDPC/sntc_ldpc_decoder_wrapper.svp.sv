//#;; DO NOT EDIT THIS FILE
/*ENCRYPT_ME*/
////////////////////////////////////////////////////////////////////////////////
//# Copyright (c) 2018 Secantec
//# No Permission to modify and distribute this program
//# even if this copyright message remains unaltered.
//#
//# Author: Secantec 27 April, 2018
//# $Id: $//#
//# Revision History
//#       MM      17  April, 2018    Initial release
//#
////////////////////////////////////////////////////////////////////////////////

// /bin/rm -rf *simv* *csrc* ; perl vpp.pl -perl sntc_berlekamp.1.sv > sntc_berlekamp.1.vpp.sv ; vcs -sverilog -R -debug_all sntc_berlekamp.1.vpp.sv -l sntc_berlekamp.1.vpp.sv.log

 /*ENCRYPT_ME*/

/* verilator lint_off DECLFILENAME */

module  sntc_ldpc_decoder_wrapper #(
// NR_2_0_4/sntc_LDPCparam.sv
parameter MM   = 'h 000a8 ,
// parameter MM =  'h  000a8  , 
parameter NN   = 'h 000d0 ,
// parameter NN =  'h  000d0  , 
parameter cmax = 'h 00017 ,
// parameter cmax =  'h  00017  , 
parameter rmax = 'h 0000a ,
// parameter rmax =  'h  0000a  , 
// 208
// 168
parameter SUM_NN         = $clog2(NN+1), // 8 : nn_width
parameter SUM_MM         = $clog2(MM+1), // 8 : mm_width
parameter LEN            = MM,
parameter SUM_NN_WDTH    = $clog2(SUM_NN+2),
parameter SUM_MM_WDTH    = $clog2(SUM_MM+2),
parameter SUM_LEN= $clog2(NN+1)+1,
parameter HAM_LEN= 16

) (


input wire  [NN-1:0]                 q0_0,
input wire  [NN-1:0]                 q0_1,

output wire  [NN-1:0]                final_y_nr_dec,

input wire  [MM-1:0]                 exp_syn,
input wire  [31:0]                   percent_probability_int,
input wire  [HAM_LEN-1:0]            HamDist_loop_max,
input wire  [HAM_LEN-1:0]            HamDist_loop_percentage,

input wire  [HAM_LEN-1:0]            HamDist_iir1,
input wire  [HAM_LEN-1:0]            HamDist_iir2,
input wire  [HAM_LEN-1:0]            HamDist_iir3,

output wire                          converged_loops_ended,
output wire                          converged_pass_fail,

input  wire                          start_dec,
output wire                          syn_valid_cword_dec,
/* verilator lint_off UNUSED */
input wire                           clr,
/* verilator lint_on UNUSED */
input wire                           rstn,
input wire                           clk
);

`ifdef ENCRYPT
`endif

wire [MM-1:0]                 cur_syndrome;
wire [SUM_LEN-1:0]            HamDist_sum_mm;
reg  [HAM_LEN-1:0]            HamDist_loop;
reg  [HAM_LEN-1:0]            HamDist_cntr;
reg                           iter_start_int;


wire                          HamDist_cntr_inc_converged_valid;


sntc_ldpc_syndrome_wrapper i_sntc_ldpc_syndrome_wrapper
(


                                  .y_nr_in                (final_y_nr_dec),
                                  .syn_nr_port            (cur_syndrome),
/* verilator lint_off UNUSED */
                                  .clr                    (clr),
/* verilator lint_on UNUSED */
                                  .valid_cword            (syn_valid_cword_dec),
                                  .rstn                   (rstn),
                                  .clk                    (clk)
);

sntc_ldpc_decoder i_sntc_ldpc_decoder
(

                                  .q0_0                   (q0_0),
                                  .q0_1                   (q0_1),
                                  .final_y_nr_dec         (final_y_nr_dec),
                                  .exp_syn                (exp_syn),
                                  .percent_probability_int(percent_probability_int),

                                  .HamDist_sum_mm         (HamDist_sum_mm),
                                  .HamDist_loop           (HamDist_loop),
                                  .HamDist_loop_max       (HamDist_loop_max),
                                  .HamDist_loop_percentage(HamDist_loop_percentage),
                                  .converged_loops_ended  (converged_loops_ended),
                                  .converged_pass_fail    (converged_pass_fail),
                                  .HamDist_cntr_inc_converged_valid        (HamDist_cntr_inc_converged_valid),
                                  .HamDist_iir1           (HamDist_iir1),
                                  .HamDist_iir2           (HamDist_iir1),
                                  .HamDist_iir3           (HamDist_iir1),




                                  .start_dec              (start_dec),
                                  .iter_start_int         (iter_start_int),
/* verilator lint_off UNUSED */
                                  .clr                    (clr),
/* verilator lint_on UNUSED */
                                  .rstn                   (rstn),
                                  .clk                    (clk)

);


sntc_HamDist i_sntc_HamDist
(


                                  .HamDist_y              (exp_syn),
                                  .HamDist_x              (cur_syndrome),
                                  .sum_mm                 (HamDist_sum_mm),

/* verilator lint_off UNUSED */
                                  .clr                    (clr),
/* verilator lint_on UNUSED */
                                  .rstn                   (rstn),
                                  .clk                    (clk)
);



always @(posedge clk or negedge rstn)
begin
   if (~rstn) begin
       HamDist_cntr <= {HAM_LEN{1'b0}};
   end else begin

       if (HamDist_cntr_inc_converged_valid) begin
          HamDist_cntr <= HamDist_cntr + 1;
       end

   end
end

always_comb iter_start_int = HamDist_cntr_inc_converged_valid;
always_comb HamDist_loop = HamDist_cntr;

`ifdef ENCRYPT
`endif

endmodule

//C DBG: bsc p:0.100000 probability:2.197225 percent_probability_int:'d141

 //GF Syndrome valid code word
//y_int:
 //a11cfea357547ac81e032722b99b87a1858559177c5c78d06b3d
//syny_err:
 //0200400200100008100880c0000680200320002200
//C DBG: bsc p:0.038462 probability:3.218876 percent_probability_int:'d206