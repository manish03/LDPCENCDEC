

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

for i in range (LDPC_MM,LDPC_NN):
    j = i-LDPC_MM
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






line = f"""int enc_cword  [208];
"""
f5.write(line)





for i in range (LDPC_NN): 
    j = i
    regname =  f"""LDPC_ENC_CODEWRD_{j}"""
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
    line = f"""assign i_{regname}_enc_codeword = y_nr[   {j}] ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""enc_cword [   {j}] = {regname} ;
"""
    f5.write(line)


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
    line = f"""assign i_{regname}_enc_codeword_valid =  valid_cword;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4



line = r"""
    int dec_cword  [208];
    int insert_err =0;
    for (int i=0;i<208;i++) {
        if (i<20) {
             insert_err = 1;
        } else {
             insert_err = 0;
        }
        if  ( enc_cword[i] ^ insert_err) {
           dec_cword[i] = 0x3;
        } else {
           dec_cword[i] = 0x1;
        }
    }
"""
f5.write(line)

for i in range (LDPC_NN): 
    j = i
    regname =  f"""LDPC_DEC_CODEWRD_{j}"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: cword_q0, bit_assignment: { width: 2 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: reserved }"""
    f.write (line)

    line = f"""wire [1:0] o_{regname}_cword_q0;
"""
    f1.write (line)
    line = f""".o_{regname}_cword_q0(o_{regname}_cword_q0),
"""
    f2.write (line)
    line = f"""assign q0[   {j}] =  o_{regname}_cword_q0 ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     {regname}  = dec_cword[{j}];
"""
    f5.write(line)




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
    regname =  f"""LDPC_DEC_HamDist_loop_max"""
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



if (1):
    regname =  f"""LDPC_DEC_HamDist_loop_percentage"""
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





if (1):
    regname =  f"""LDPC_DEC_HamDist_iir1"""
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




if (1):
    regname =  f"""LDPC_DEC_HamDist_iir2_NOT_USED"""
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




if (1):
    regname =  f"""LDPC_DEC_HamDist_iir3_NOT_USED"""
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





if (1):
    regname =  f"""LDPC_DEC_converged_valid_NOT_USED"""
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










if (1):
    regname =  f"""LDPC_DEC_valid_NOT_USED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: dec_valid, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)



    line = f"""wire i_{regname}_dec_valid;
"""
    f1.write (line)
    line = f""".i_{regname}_dec_valid(i_{regname}_dec_valid),
"""
    f2.write (line)
    line = f"""assign i_{regname}_dec_valid = dec_valid ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4






if (1): 
    regname =  f"""LDPC_DEC_valid_codeword_NOT_USED"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: dec_valid_cword, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)



    line = f"""wire i_{regname}_dec_valid_cword;
"""
    f1.write (line)
    line = f""".i_{regname}_dec_valid_cword(i_{regname}_dec_valid_cword),
"""
    f2.write (line)
    line = f"""assign i_{regname}_dec_valid_cword = dec_valid_cword ;
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4





if (1):
    regname =  f"""LDPC_DEC_start"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: start, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)


    line = f"""wire o_{regname}_start;
"""
    f1.write (line)
    line = f""".o_{regname}_start(o_{regname}_start),
"""
    f2.write (line)
    line = f"""assign start =  o_{regname}_start;
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





if (1):
    regname =  f"""LDPC_DEC_converged_valid"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: convered_vld, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_convered_vld;
"""
    f1.write (line)
    line = f""".i_{regname}_convered_vld(i_{regname}_convered_vld),
"""
    f2.write (line)
    line = f"""assign i_{regname}_convered_vld = converged[1];
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""     while( {regname} != 0x00000001) {{}}
"""
    f5.write(line)




if (1):
    regname =  f"""LDPC_DEC_converged_status"""
    line =f"""
          - name: {regname}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: convered_stat, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 31 }, type: reserved }"""
    f.write (line)

    line = f"""wire i_{regname}_convered_stat;
"""
    f1.write (line)
    line = f""".i_{regname}_convered_stat(i_{regname}_convered_stat),
"""
    f2.write (line)
    line = f"""assign i_{regname}_convered_stat = converged[0];
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4

    line = f"""     int status; status = {regname}; 
"""
    f5.write(line)






line = f"""int final_cword  [208];
"""
f5.write(line)





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
    line = f"""assign i_{regname}_final_cword = tmp_bit[{j}];
"""
    f3.write (line)
    line = f"""#define  {regname} (*(volatile uint32_t  *) 0x{reg_addr:08x} )
"""
    f4.write(line)
    reg_addr += 4
    line = f"""final_cword [   {j}] = {regname} ;
"""
    f5.write(line)




#rggen --plugin rggen-verilog -c config.yml LDPC_rggen.yml

#// ln((1-p)/p)*(2**11) + 0,5
