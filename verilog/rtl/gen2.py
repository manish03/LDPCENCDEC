

import os
import random
from string import Template

LDPC_NN = 0xd0
LDPC_MM = 0xa8
BASE_ADDRESS = 0x30010000
reg_addr = BASE_ADDRESS
first_reg_addr = BASE_ADDRESS

f=open('LDPC_rggen.yml', 'w')
f1=open('LDPC_inc.sv', 'w')
f2=open('LDPC_inst.sv', 'w')
f3=open('LDPC_assign.sv', 'w')
f4=open('LDPC_c_inc.h', 'w')
f5=open('LDPC_c_content.h', 'w')

line = f"""
register_blocks:
  - name: LDPC_CSR
    byte_size: 8192
    registers:"""

f.write (line)

###########################################################################################################
for i in range (LDPC_NN-LDPC_MM):
    j = i
    regname =  f"""LDPC_ENC_MSG_IN_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: msg_in, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire o_{regname}_msg_in;
"""
    f1.write (line)
    line = f""".o_{regname}_msg_in(o_{regname}_msg_in),
"""
    f2.write (line)
    line = f"""assign y_nr_in_port[   {j}] =  o_{regname}_msg_in;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    val = random.randrange(0,2)
    line = f"""     {regname}  = {val};
"""
    f5.write(line)






for i in range (LDPC_NN): 
   line = f"""uint32_t enc_cword_{i};
   """
   f5.write(line)





###########################################################################################################
for i in range (LDPC_NN): 
    j = i
    regname =  f"""LDPC_ENC_CODEWRD_OUT_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: enc_codeword, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)
    line = f"""wire i_{regname}_enc_codeword;
"""
    f1.write (line)
    line = f""".i_{regname}_enc_codeword(i_{regname}_enc_codeword),
"""
    f2.write (line)
    line = f"""assign i_{regname}_enc_codeword = y_nr_enc[   {j}] ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""//enc_cword_{j} = {regname} ;
"""
    f5.write(line)


###########################################################################################################
if (1):  
    regname =  f"""LDPC_ENC_CODEWRD_VLD"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: enc_codeword_valid, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)
    f.write (line)
    line = f"""wire i_{regname}_enc_codeword_valid;
"""
    f1.write (line)
    line = f""".i_{regname}_enc_codeword_valid(i_{regname}_enc_codeword_valid),
"""
    f2.write (line)
    line = f"""assign i_{regname}_enc_codeword_valid =  valid_cword_enc;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################

###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_SEL_FRMC"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: sel_q0_frmC, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_sel_q0_frmC;
"""
    f1.write (line)
    line = f""".o_{regname}_sel_q0_frmC(o_{regname}_sel_q0_frmC),
"""
    f2.write (line)
    line = f"""assign sel_q0_frmC =  o_{regname}_sel_q0_frmC;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     {regname}  = 0;
"""
    f5.write(line)

###########################################################################################################
for i in range (LDPC_NN):
    regname =  f"""LDPC_DEC_ERR_Q0_0_INTRO_{i}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =f"""
            bit_fields:
            - {{ name: err_intro_q0_0_{i}, bit_assignment: {{ width: 1 }}, type: rw, initial_value: 0x0}}
            - {{ name: reserved, bit_assignment: {{ width: 31 }}, type: reserved }}"""
    f.write (line)


    line = f"""wire o_{regname}_err_intro_q0_0_{i};
"""
    f1.write (line)
    line = f""".o_{regname}_err_intro_q0_0_{i}(o_{regname}_err_intro_q0_0_{i}),
"""
    f2.write (line)
    line = f"""assign err_intro_q0_0_frmC[{i}] =  o_{regname}_err_intro_q0_0_{i};
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    if (0):
         line = f"""     {regname}  = 0x1;
"""
    else:
         line = f"""     {regname}  = 0x0;
"""
    f5.write(line)

###########################################################################################################
for i in range (LDPC_NN):
    regname =  f"""LDPC_DEC_ERR_Q0_1_INTRO_{i}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =f"""
            bit_fields:
            - {{ name: err_intro_q0_1_{i}, bit_assignment: {{ width: 1 }}, type: rw, initial_value: 0x0}}
            - {{ name: reserved, bit_assignment: {{ width: 31 }}, type: reserved }}"""
    f.write (line)


    line = f"""wire o_{regname}_err_intro_q0_1_{i};
"""
    f1.write (line)
    line = f""".o_{regname}_err_intro_q0_1_{i}(o_{regname}_err_intro_q0_1_{i}),
"""
    f2.write (line)
    line = f"""assign err_intro_q0_1_frmC[{i}] =  o_{regname}_err_intro_q0_1_{i};
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    if (i<8):
         line = f"""     {regname}  = 0x1;
"""
    else:
         line = f"""     {regname}  = 0x0;
"""
    f5.write(line)






###########################################################################################################
###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_ERR_INTRODUCED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: err_intro, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_err_intro;
"""
    f1.write (line)
    line = f""".o_{regname}_err_intro(o_{regname}_err_intro),
"""
    f2.write (line)
    line = f"""assign err_intro =  o_{regname}_err_intro;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     {regname}  = 0;
"""
    f5.write(line)

    for j in range (LDPC_NN):
         line = f"""     if ( LDPC_ENC_CODEWRD_OUT_{j} != LDPC_DEC_CODEWRD_IN_q0_1_{j} ) {{
                               {regname}  = 1;
                         }}
"""
         f5.write(line)
###########################################################################################################






###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
for i in range (LDPC_NN): 
   line = f"""uint32_t dec_cword_0_{i};
   """
   f5.write(line)

for i in range (LDPC_NN): 
   line = f"""uint32_t dec_cword_1_{i};
   """
   f5.write(line)

line = f"""uint32_t insert_err;
"""
f5.write(line)

for i in range (LDPC_NN): 

   line = f"""
           if ({i}<20) {{
                insert_err = 1;
           }} else {{
                insert_err = 0;
           }}

           if  ( enc_cword_{i} ^ insert_err) {{
              dec_cword_0_{i} = 0x1;
              dec_cword_1_{i} = 0x1;
           }} else {{
              dec_cword_0_{i} = 0x1;
              dec_cword_1_{i} = 0x0;
           }}
   """
   f5.write(line)



###########################################################################################################
###########################################################################################################
for i in range (LDPC_NN): 
    j = i
    regname =  f"""LDPC_DEC_CODEWRD_IN_q0_0_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: cword_q0_0, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: reserved }"""
    f.write (line)

    line = f"""wire  o_{regname}_cword_q0_0;
"""
    f1.write (line)
    line = f""".o_{regname}_cword_q0_0(o_{regname}_cword_q0_0),
"""
    f2.write (line)
    line = f"""assign q0_0_frmC[   {j}] =  o_{regname}_cword_q0_0 ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = dec_cword_0_{j};
"""
    f5.write(line)



###########################################################################################################
for i in range (LDPC_NN):
    j = i
    regname =  f"""LDPC_DEC_CODEWRD_IN_q0_1_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: cword_q0_1, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: reserved }"""
    f.write (line)

    line = f"""wire  o_{regname}_cword_q0_1;
"""
    f1.write (line)
    line = f""".o_{regname}_cword_q0_1(o_{regname}_cword_q0_1),
"""
    f2.write (line)
    line = f""" assign q0_1_frmC[   {j}] =  o_{regname}_cword_q0_1 ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = dec_cword_1_{j};
"""
    f5.write(line)



###########################################################################################################

if (1):
    regname =  f"""LDPC_DEC_err_intro_decoder"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: err_intro_decoder_bit, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_err_intro_decoder_bit;
"""
    f1.write (line)
    line = f""".i_{regname}_err_intro_decoder_bit(i_{regname}_err_intro_decoder_bit),
"""
    f2.write (line)
    line = f"""assign i_{regname}_err_intro_decoder_bit = err_intro_decoder;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t err_intro_decoder_stat; err_intro_decoder_stat = {regname}; 
"""
    f5.write(line)


###########################################################################################################

for i in range (LDPC_MM): 
    j = i
    regname =  f"""LDPC_DEC_EXPSYND_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: exp_syn, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire o_{regname}_exp_syn;
"""
    f1.write (line)
    line = f""".o_{regname}_exp_syn(o_{regname}_exp_syn),
"""
    f2.write (line)
    line = f"""assign exp_syn[   {j}] =  o_{regname}_exp_syn;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 0x0;
"""
    f5.write(line)



###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_PROBABILITY"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: perc_probability, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_perc_probability;
"""
    f1.write (line)
    line = f""".o_{regname}_perc_probability(o_{regname}_perc_probability),
"""
    f2.write (line)
    line = f"""assign percent_probability_int =  o_{regname}_perc_probability;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 6592;
"""
    f5.write(line)


if (1):
    regname =  f"""LDPC_DEC_HAMDIST_LOOP_MAX"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_loop_max, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_HamDist_loop_max;
"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_loop_max(o_{regname}_HamDist_loop_max),
"""
    f2.write (line)
    line = f"""assign HamDist_loop_max =  o_{regname}_HamDist_loop_max;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 0x20;
"""
    f5.write(line)



###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_HAMDIST_LOOP_PERCENTAGE"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_loop_percentage, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_HamDist_loop_percentage;
"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_loop_percentage(o_{regname}_HamDist_loop_percentage),
"""
    f2.write (line)
    line = f"""assign HamDist_loop_percentage =  o_{regname}_HamDist_loop_percentage;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 0x20;
"""
    f5.write(line)





###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_HAMDIST_IIR1"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_iir1, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_HamDist_iir1;
"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_iir1(o_{regname}_HamDist_iir1),
"""
    f2.write (line)
    line = f"""assign HamDist_iir1 =  o_{regname}_HamDist_iir1;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 85;
"""
    f5.write(line)




###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_HAMDIST_IIR2_NOT_USED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_iir2, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_HamDist_iir2;
"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_iir2(o_{regname}_HamDist_iir2),
"""
    f2.write (line)
    line = f"""assign HamDist_iir2 =  o_{regname}_HamDist_iir2;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 15;
"""
    f5.write(line)




###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_HAMDIST_IIR3_NOT_USED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_iir3, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_HamDist_iir3;
"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_iir3(o_{regname}_HamDist_iir3),
"""
    f2.write (line)
    line = f"""assign HamDist_iir3 =  o_{regname}_HamDist_iir3;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 5;
"""
    f5.write(line)





###########################################################################################################
if (0):
    regname =  f"""LDPC_DEC_CONVERGED_VALID_NOT_USED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: convered_valid, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire i_{regname}_convered_valid;
"""
    f1.write (line)
    line = f""".i_{regname}_convered_valid(i_{regname}_convered_valid),
"""
    f2.write (line)
    line = f"""assign i_{regname}_convered_valid = converged_valid ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4










###########################################################################################################
if (0):
    regname =  f"""LDPC_DEC_VALID_NOT_USED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: dec_valid_not_used, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)



    line = f"""wire i_{regname}_dec_valid_not_used;
"""
    f1.write (line)
    line = f""".i_{regname}_dec_valid_not_used(i_{regname}_dec_valid_not_used),
"""
    f2.write (line)
    line = f"""assign i_{regname}_dec_valid_not_used = dec_valid_not_used ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4





###########################################################################################################

if (1): 
    regname =  f"""LDPC_DEC_SYN_VALID_CWORD_DEC_final"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: syn_valid_cword_dec, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)



    line = f"""wire i_{regname}_syn_valid_cword_dec;
"""
    f1.write (line)
    line = f""".i_{regname}_syn_valid_cword_dec(i_{regname}_syn_valid_cword_dec),
"""
    f2.write (line)
    line = f"""assign i_{regname}_syn_valid_cword_dec = syn_valid_cword_dec ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4





###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_START_DEC"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: start_dec, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_start_dec;
"""
    f1.write (line)
    line = f""".o_{regname}_start_dec(o_{regname}_start_dec),
"""
    f2.write (line)
    line = f"""assign start_dec =  o_{regname}_start_dec;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 1;
                    {regname}  = 0;
"""
    f5.write(line)




###########################################################################################################

if (1):
    regname =  f"""LDPC_DEC_CONVERGED_LOOPS_ENDED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: converged_loops_ended, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_converged_loops_ended;
"""
    f1.write (line)
    line = f""".i_{regname}_converged_loops_ended(i_{regname}_converged_loops_ended),
"""
    f2.write (line)
    line = f"""assign i_{regname}_converged_loops_ended = converged_loops_ended;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     while( {regname} != 0x00000001) {{}}
"""
    f5.write(line)




###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_CONVERGED_PASS_FAIL"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: converged_pass_fail, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_converged_pass_fail;
"""
    f1.write (line)
    line = f""".i_{regname}_converged_pass_fail(i_{regname}_converged_pass_fail),
"""
    f2.write (line)
    line = f"""assign i_{regname}_converged_pass_fail = converged_pass_fail;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t status; status = {regname}; 
"""
    f5.write(line)






line = f"""uint32_t final_cword  [208];
"""
f5.write(line)




###########################################################################################################

for i in range (LDPC_NN):
    j = i
    regname =  f"""LDPC_DEC_CODEWRD_OUT_BIT_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: final_cword, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_final_cword;
"""
    f1.write (line)
    line = f""".i_{regname}_final_cword(i_{regname}_final_cword),
"""
    f2.write (line)
    line = f"""assign i_{regname}_final_cword = final_y_nr_dec[{j}];
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""final_cword [   {j}] = {regname} ;
"""
    f5.write(line)


###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_PASS_FAIL"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: pass_fail, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_pass_fail;
"""
    f1.write (line)
    line = f""".o_{regname}_pass_fail(o_{regname}_pass_fail),
"""
    f2.write (line)
    line = f"""assign pass_fail =  o_{regname}_pass_fail;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     {regname}  = 1;
"""
    f5.write(line)

    for j in range (LDPC_NN):
         line = f"""     if ( LDPC_DEC_CODEWRD_OUT_BIT_{j} != LDPC_ENC_CODEWRD_OUT_{j}) {{
                               {regname}  = 0;
                         }}
"""
         f5.write(line)

###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_pass_fail_decoder"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: pass_fail_decoder_bit, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_pass_fail_decoder_bit;
"""
    f1.write (line)
    line = f""".i_{regname}_pass_fail_decoder_bit(i_{regname}_pass_fail_decoder_bit),
"""
    f2.write (line)
    line = f"""assign i_{regname}_pass_fail_decoder_bit = pass_fail_decoder;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t pass_fail_decoder_stat; pass_fail_decoder_stat = {regname}; 
"""
    f5.write(line)


###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################

f.close()
f1.close()
f2.close()
f3.close()
f4.close()
f5.close()


cmd = "rggen --plugin rggen-verilog -c config.yml LDPC_rggen.yml"

os.system( cmd )

cmd = "echo run % cd hcb1/hcb/LDPCENCDEC % source run.sh "
os.system( cmd )

#rggen --plugin rggen-verilog -c config.yml LDPC_rggen.yml

#// ln((1-p)/p)*(2**11) + 0.5






