

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

    line = f"""wire o_{regname}_msg_in;\n"""
    f1.write (line)
    line = f""".o_{regname}_msg_in(o_{regname}_msg_in),\n"""
    f2.write (line)
    line = f"""assign y_nr_in_port[   {j}] =  o_{regname}_msg_in;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    val = random.randrange(0,2)
    line = f"""     {regname}  = {val};\n"""
    f5.write(line)






for i in range (LDPC_NN): 
   line = f"""//uint32_t enc_cword_{i};
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
    line = f"""wire i_{regname}_enc_codeword;\n"""
    f1.write (line)
    line = f""".i_{regname}_enc_codeword(i_{regname}_enc_codeword),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_enc_codeword = y_nr_enc[   {j}] ;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""//enc_cword_{j} = {regname} ;\n"""
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
    line = f"""wire i_{regname}_enc_codeword_valid;\n"""
    f1.write (line)
    line = f""".i_{regname}_enc_codeword_valid(i_{regname}_enc_codeword_valid),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_enc_codeword_valid =  valid_cword_enc;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t encoder_vld_cword; encoder_vld_cword = {regname}; \n"""
    f5.write(line)
    line = f"""     encoder_vld_cword; encoder_vld_cword = {regname}; \n"""
    f5.write(line)
    line = f"""     encoder_vld_cword; encoder_vld_cword = {regname}; \n"""
    f5.write(line)
    line = f"""     encoder_vld_cword; encoder_vld_cword = {regname}; \n"""
    f5.write(line)

###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################
###########################################################################################################

###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_SEL_Q0_0_FRMC"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: sel_q0_0_frmC, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_sel_q0_0_frmC;\n"""
    f1.write (line)
    line = f""".o_{regname}_sel_q0_0_frmC(o_{regname}_sel_q0_0_frmC),\n"""
    f2.write (line)
    line = f"""assign sel_q0_0_frmC =  o_{regname}_sel_q0_0_frmC;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     {regname}  = 0;\n"""
    f5.write(line)

##########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_SEL_Q0_1_FRMC"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: sel_q0_1_frmC, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_sel_q0_1_frmC;\n"""
    f1.write (line)
    line = f""".o_{regname}_sel_q0_1_frmC(o_{regname}_sel_q0_1_frmC),\n"""
    f2.write (line)
    line = f"""assign sel_q0_1_frmC =  o_{regname}_sel_q0_1_frmC;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     {regname}  = 0;\n"""
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


    line = f"""wire o_{regname}_err_intro_q0_0_{i};\n"""
    f1.write (line)
    line = f""".o_{regname}_err_intro_q0_0_{i}(o_{regname}_err_intro_q0_0_{i}),\n"""
    f2.write (line)
    line = f"""assign err_intro_q0_0_frmC[{i}] =  o_{regname}_err_intro_q0_0_{i};\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    if (0):
         line = f"""//     {regname}  = 0x1;\n"""
    else:
         line = f"""//     {regname}  = 0x0;\n"""
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


    line = f"""wire o_{regname}_err_intro_q0_1_{i};\n"""
    f1.write (line)
    line = f""".o_{regname}_err_intro_q0_1_{i}(o_{regname}_err_intro_q0_1_{i}),\n"""
    f2.write (line)
    line = f"""assign err_intro_q0_1_frmC[{i}] =  o_{regname}_err_intro_q0_1_{i};\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    if (i<8):
         line = f"""     {regname}  = 0x1;\n"""
    else:
         line = f"""//     {regname}  = 0x0;\n"""
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


    line = f"""wire o_{regname}_err_intro;\n"""
    f1.write (line)
    line = f""".o_{regname}_err_intro(o_{regname}_err_intro),\n"""
    f2.write (line)
    line = f"""assign err_intro =  o_{regname}_err_intro;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     {regname}  = 0;\n"""
    f5.write(line)

    if (0):
         for j in range (LDPC_NN):
              line = f"""     if ( LDPC_ENC_CODEWRD_OUT_{j} != LDPC_DEC_CODEWRD_IN_q0_1_{j} ) {{
                                    {regname}  = 1;
                              }}"""
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

if (0):
   for i in range (LDPC_NN): 
      line = f"""uint32_t dec_cword_0_{i};\n """
      f5.write(line)
   
   for i in range (LDPC_NN): 
      line = f"""uint32_t dec_cword_1_{i};\n """
      f5.write(line)
   
   line = f"""uint32_t insert_err;\n """
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
              }} \n"""
      f5.write(line)



###########################################################################################################
###########################################################################################################
if (1):
   for i in range (LDPC_NN): 
       j = i
       regname =  f"""LDPC_DEC_CODEWRD_IN_Q0_0_{j}"""
       line =f"""
          - name: {regname}"""
       f.write (line)
       line =r"""
            bit_fields:
            - { name: cword_q0_0, bit_assignment: { width: 1 }, type: rw, initial_value: 0x1}
            - { name: reserved, bit_assignment: { width: 30 }, type: reserved }"""
       f.write (line)
   
       line = f"""wire  o_{regname}_cword_q0_0;\n """
       f1.write (line)
       line = f""".o_{regname}_cword_q0_0(o_{regname}_cword_q0_0),\n """
       f2.write (line)
       line = f"""assign q0_0_frmC[   {j}] =  o_{regname}_cword_q0_0 ;\n """
       f3.write (line)
       line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n """
       f4.write(line)
       reg_addr += 4
       line = f"""//     {regname}  = dec_cword_0_{j};\n """
       f5.write(line)
   


###########################################################################################################
if (1):
    for i in range (LDPC_NN):
        j = i
        regname =  f"""LDPC_DEC_CODEWRD_IN_Q0_1_{j}"""
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
        line = f"""//     {regname}  = dec_cword_1_{j};
    """
        f5.write(line)
    
    

###########################################################################################################

if (1):
    regname =  f"""LDPC_DEC_ERR_INTRO_DECODER"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: err_intro_decoder_bit, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_err_intro_decoder_bit;\n"""
    f1.write (line)
    line = f""".i_{regname}_err_intro_decoder_bit(i_{regname}_err_intro_decoder_bit),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_err_intro_decoder_bit = err_intro_decoder;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t err_intro_decoder_stat; err_intro_decoder_stat = {regname}; \n"""
    f5.write(line)


###########################################################################################################

if (0):
   for i in range (LDPC_MM): 
       j = i
       regname =  f"""LDPC_DEC_EXP_SYND_{j}"""
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
       if (0):
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

    line = f"""wire [31:0] o_{regname}_perc_probability;\n"""
    f1.write (line)
    line = f""".o_{regname}_perc_probability(o_{regname}_perc_probability),\n"""
    f2.write (line)
    line = f"""assign percent_probability_int =  o_{regname}_perc_probability;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 0xce;\n"""
    f5.write(line)

###########################################################################################################

if (1):
    regname =  f"""LDPC_DEC_HAMDIST_LOOP_MAX"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_loop_max, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_HamDist_loop_max;\n"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_loop_max(o_{regname}_HamDist_loop_max),\n"""
    f2.write (line)
    line = f"""assign HamDist_loop_max =  o_{regname}_HamDist_loop_max;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 0x20;\n"""
    f5.write(line)



###########################################################################################################

if (1):
    regname =  f"""LDPC_FROM_IO"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: ldpc_from_io, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

    line = f"""wire [31:0] o_{regname}_ldpc_from_io;\n"""
    f1.write (line)
    line = f""".o_{regname}_ldpc_from_io(o_{regname}_ldpc_from_io),\n"""
    f2.write (line)
    line = f"""assign ldpc_from_io =  o_{regname}_ldpc_from_io;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 0x0;\n"""
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

    line = f"""wire [31:0] o_{regname}_HamDist_loop_percentage;\n"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_loop_percentage(o_{regname}_HamDist_loop_percentage),\n"""
    f2.write (line)
    line = f"""assign HamDist_loop_percentage =  o_{regname}_HamDist_loop_percentage;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 110;\n"""
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

    line = f"""wire [31:0] o_{regname}_HamDist_iir1;\n"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_iir1(o_{regname}_HamDist_iir1),\n"""
    f2.write (line)
    line = f"""assign HamDist_iir1 =  o_{regname}_HamDist_iir1;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 85;\n"""
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

    line = f"""wire [31:0] o_{regname}_HamDist_iir2;\n"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_iir2(o_{regname}_HamDist_iir2),\n"""
    f2.write (line)
    line = f"""assign HamDist_iir2 =  o_{regname}_HamDist_iir2;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 15;\n"""
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

    line = f"""wire [31:0] o_{regname}_HamDist_iir3;\n"""
    f1.write (line)
    line = f""".o_{regname}_HamDist_iir3(o_{regname}_HamDist_iir3),\n"""
    f2.write (line)
    line = f"""assign HamDist_iir3 =  o_{regname}_HamDist_iir3;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 5;\n"""
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


    line = f"""wire i_{regname}_convered_valid;\n"""
    f1.write (line)
    line = f""".i_{regname}_convered_valid(i_{regname}_convered_valid),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_convered_valid = converged_valid ;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
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



    line = f"""wire i_{regname}_dec_valid_not_used;\n"""
    f1.write (line)
    line = f""".i_{regname}_dec_valid_not_used(i_{regname}_dec_valid_not_used),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_dec_valid_not_used = dec_valid_not_used ;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4





###########################################################################################################

if (1): 
    regname =  f"""LDPC_DEC_SYN_VALID_CWORD_DEC_FINAL"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: syn_valid_cword_dec, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)



    line = f"""wire i_{regname}_syn_valid_cword_dec;\n"""
    f1.write (line)
    line = f""".i_{regname}_syn_valid_cword_dec(i_{regname}_syn_valid_cword_dec),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_syn_valid_cword_dec = syn_valid_cword_dec ;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
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


    line = f"""wire o_{regname}_start_dec;\n"""
    f1.write (line)
    line = f""".o_{regname}_start_dec(o_{regname}_start_dec),\n"""
    f2.write (line)
    line = f"""assign start_dec =  o_{regname}_start_dec;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = 1;
                    {regname}  = 0;\n"""
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

    line = f"""wire i_{regname}_converged_loops_ended;\n"""
    f1.write (line)
    line = f""".i_{regname}_converged_loops_ended(i_{regname}_converged_loops_ended),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_converged_loops_ended = converged_loops_ended;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""     while( {regname} != 0x00000001) {{}}\n"""
    f5.write(line)




###########################################################################################################
if (1):
    regname =  f"""reg_mprj_slave"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: reg_mprj_slave, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)


    line = f"""wire [31:0] o_{regname}_reg_mprj_slave;\n"""
    f1.write (line)
    line = f""".o_{regname}_reg_mprj_slave(o_{regname}_reg_mprj_slave),\n"""
    f2.write (line)
    line = f"""assign reg_mprj_slave =  o_{regname}_reg_mprj_slave;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4




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

    line = f"""wire i_{regname}_converged_pass_fail;\n"""
    f1.write (line)
    line = f""".i_{regname}_converged_pass_fail(i_{regname}_converged_pass_fail),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_converged_pass_fail = converged_pass_fail;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t pass_fail_status; pass_fail_status = {regname}; \n"""
    f5.write(line)






line = f"""uint32_t final_cword  [208];\n"""
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

    line = f"""wire i_{regname}_final_cword;\n"""
    f1.write (line)
    line = f""".i_{regname}_final_cword(i_{regname}_final_cword),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_final_cword = final_y_nr_dec[{j}];\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4
    line = f"""//final_cword [   {j}] = {regname} ;\n"""
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


    line = f"""wire o_{regname}_pass_fail;\n"""
    f1.write (line)
    line = f""".o_{regname}_pass_fail(o_{regname}_pass_fail),\n"""
    f2.write (line)
    line = f"""assign pass_fail =  o_{regname}_pass_fail;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    if (0):
        line = f"""     {regname}  = 1;\n"""
        f5.write(line)

        for j in range (LDPC_NN):
             line = f"""     if ( LDPC_DEC_CODEWRD_OUT_BIT_{j} != LDPC_ENC_CODEWRD_OUT_{j}) {{
                                   {regname}  = 0;
                             }}"""
             f5.write(line)

###########################################################################################################
if (1):
    regname =  f"""LDPC_DEC_TB_PASS_FAIL_DECODER"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: tb_pass_fail_decoder_bit, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_tb_pass_fail_decoder_bit;\n"""
    f1.write (line)
    line = f""".i_{regname}_tb_pass_fail_decoder_bit(i_{regname}_tb_pass_fail_decoder_bit),\n"""
    f2.write (line)
    line = f"""assign i_{regname}_tb_pass_fail_decoder_bit = tb_pass_fail_decoder;\n"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )\n"""
    f4.write(line)
    reg_addr += 4

    line = f"""     uint32_t tb_pass_fail_decoder_stat; tb_pass_fail_decoder_stat = {regname}; \n"""
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


cmd = "/usr/local/bin/rggen --plugin rggen-verilog -c config.yml LDPC_rggen.yml"

os.system( cmd )

cmd = "echo run % cd hcb1/hcb/LDPCENCDEC % source run.sh "
os.system( cmd )

#rggen --plugin rggen-verilog -c config.yml LDPC_rggen.yml

#// ln((1-p)/p)*(2**11) + 0.5






