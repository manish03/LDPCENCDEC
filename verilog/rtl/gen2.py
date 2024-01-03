

LDPC_NN = 0xd0
LDPC_MM = 0xa8

f=open('LDPC_rggen.yml', 'w')

line = f"""
register_blocks:
  - name: LDPC_CSR
    byte_size: 8192
    registers:"""

f.write (line)

for i in range (LDPC_MM,LDPC_NN): #0-39
    j = i-LDPC_MM
    line =f"""
          - name: LDPC_ENC_MSG_IN_{j}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: msg_inr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: msg_inw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg,initial_value: 0x0 }"""
    f.write (line)





for i in range (LDPC_NN):  #40-247
    j = i
    line =f"""
          - name: LDPC_ENC_CODEWRD_{j}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: enc_codewrdr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: enc_codewrdw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg,initial_value: 0x0 }"""
    f.write (line)


if (1):   #248
    line =f"""
          - name: LDPC_ENC_CODEWRD_VLD"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: enc_valid_cwordr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: enc_valid_cwordw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg,initial_value: 0x0 }"""
    f.write (line)




for i in range (LDPC_NN):  #249-456
    j = i
    line =f"""
          - name: LDPC_DEC_CODEWRD_{j}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: cword_q0r, bit_assignment: { width: 2 }, type: rotrg, initial_value: 0x0}
            - { name: cword_q0w, bit_assignment: { width: 2 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 28 }, type: rotrg,initial_value: 0x0 }"""
    f.write (line)




for i in range (LDPC_MM):  #457-624
    j = i
    line =f"""
          - name: LDPC_DEC_EXPSYND_{j}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: exp_synr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: exp_synw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg,initial_value: 0x0 }"""
    f.write (line)



if (1): #625
    line =f"""
          - name: LDPC_DEC_PROBABILITY"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: perc_probability, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)


if (1): #626
    line =f"""
          - name: LDPC_DEC_HamDist_loop_max"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_loop_max, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

if (1): #627
    line =f"""
          - name: LDPC_DEC_HamDist_loop_percentage"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_loop_percentage, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

if (1): #628
    line =f"""
          - name: LDPC_DEC_HamDist_iir1"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_iir1, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)


if (1): #629
    line =f"""
          - name: LDPC_DEC_HamDist_iir2_NOT_USED"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_iir2, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)

if (1): #630
    line =f"""
          - name: LDPC_DEC_HamDist_iir3_NOT_USED"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: HamDist_iir3, bit_assignment: { width: 32 }, type: rw, initial_value: 0x0}"""
    f.write (line)


if (1): #631
    line =f"""
          - name: LDPC_DEC_converged_valid"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: convergedr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: convergedw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg, initial_value: 0x0}"""
    f.write (line)


if (1): #631
    line =f"""
          - name: LDPC_DEC_converged_status"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: convergedr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: convergedw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg, initial_value: 0x0}"""
    f.write (line)




if (1): #632
    line =f"""
          - name: LDPC_DEC_converged_valid_NOT_USED"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: converged_validr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: converged_validw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg, initial_value: 0x0}"""
    f.write (line)




if (1): #633
    line =f"""
          - name: LDPC_DEC_start"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: startr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: startw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg, initial_value: 0x0}"""
    f.write (line)





if (1): #634
    line =f"""
          - name: LDPC_DEC_valid_NOT_USED"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: validr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: validw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg, initial_value: 0x0}"""
    f.write (line)




if (1):  #635
    line =f"""
          - name: LDPC_DEC_valid_codeword_NOT_USED"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: valid_codewordr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: valid_codewordw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg, initial_value: 0x0}"""
    f.write (line)


for i in range (LDPC_NN):
    j = i
    line =f"""
          - name: LDPC_DEC_CODEWRD_OUT_BIT_{j}"""
    f.write (line)
    line =r"""
            bit_fields:
            - { name: cword_outr, bit_assignment: { width: 1 }, type: rotrg, initial_value: 0x0}
            - { name: cword_outw, bit_assignment: { width: 1 }, type: rw, initial_value: 0x0}
            - { name: reserved, bit_assignment: { width: 30 }, type: rotrg,initial_value: 0x0 }"""
    f.write (line)



#// ln((1-p)/p)*(2**11) + 0,5
