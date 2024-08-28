parameter n_minus_m = 'd40;
parameter n_int = 'd208;
parameter m_int = 'd168;



parameter z_int = 'd4;



wire syn_nr_0_0; 
assign syn_nr_0_0 = 
        y_nr_in[1] ^ 
        y_nr_in[5] ^ 
        y_nr_in[8] ^ 
        y_nr_in[14] ^ 
        y_nr_in[25] ^ 
0; 



wire syn_nr_0_1; 
assign syn_nr_0_1 = 
        y_nr_in[37] ^ 
        y_nr_in[40] ^ 
        y_nr_in[44] ^ 
0; 



assign syn_nr[0] = 
syn_nr_0_0 ^ 
syn_nr_0_1 ^ 
0; 



wire syn_nr_1_0; 
assign syn_nr_1_0 = 
        y_nr_in[2] ^ 
        y_nr_in[6] ^ 
        y_nr_in[9] ^ 
        y_nr_in[15] ^ 
        y_nr_in[26] ^ 
0; 



wire syn_nr_1_1; 
assign syn_nr_1_1 = 
        y_nr_in[38] ^ 
        y_nr_in[41] ^ 
        y_nr_in[45] ^ 
0; 



assign syn_nr[1] = 
syn_nr_1_0 ^ 
syn_nr_1_1 ^ 
0; 



wire syn_nr_2_0; 
assign syn_nr_2_0 = 
        y_nr_in[3] ^ 
        y_nr_in[7] ^ 
        y_nr_in[10] ^ 
        y_nr_in[12] ^ 
        y_nr_in[27] ^ 
0; 



wire syn_nr_2_1; 
assign syn_nr_2_1 = 
        y_nr_in[39] ^ 
        y_nr_in[42] ^ 
        y_nr_in[46] ^ 
0; 



assign syn_nr[2] = 
syn_nr_2_0 ^ 
syn_nr_2_1 ^ 
0; 



wire syn_nr_3_0; 
assign syn_nr_3_0 = 
        y_nr_in[0] ^ 
        y_nr_in[4] ^ 
        y_nr_in[11] ^ 
        y_nr_in[13] ^ 
        y_nr_in[24] ^ 
0; 



wire syn_nr_3_1; 
assign syn_nr_3_1 = 
        y_nr_in[36] ^ 
        y_nr_in[43] ^ 
        y_nr_in[47] ^ 
0; 



assign syn_nr[3] = 
syn_nr_3_0 ^ 
syn_nr_3_1 ^ 
0; 



wire syn_nr_4_0; 
assign syn_nr_4_0 = 
        y_nr_in[3] ^ 
        y_nr_in[14] ^ 
        y_nr_in[17] ^ 
        y_nr_in[21] ^ 
        y_nr_in[26] ^ 
0; 



wire syn_nr_4_1; 
assign syn_nr_4_1 = 
        y_nr_in[28] ^ 
        y_nr_in[32] ^ 
        y_nr_in[36] ^ 
        y_nr_in[44] ^ 
        y_nr_in[48] ^ 
0; 



assign syn_nr[4] = 
syn_nr_4_0 ^ 
syn_nr_4_1 ^ 
0; 



wire syn_nr_5_0; 
assign syn_nr_5_0 = 
        y_nr_in[0] ^ 
        y_nr_in[15] ^ 
        y_nr_in[18] ^ 
        y_nr_in[22] ^ 
        y_nr_in[27] ^ 
0; 



wire syn_nr_5_1; 
assign syn_nr_5_1 = 
        y_nr_in[29] ^ 
        y_nr_in[33] ^ 
        y_nr_in[37] ^ 
        y_nr_in[45] ^ 
        y_nr_in[49] ^ 
0; 



assign syn_nr[5] = 
syn_nr_5_0 ^ 
syn_nr_5_1 ^ 
0; 



wire syn_nr_6_0; 
assign syn_nr_6_0 = 
        y_nr_in[1] ^ 
        y_nr_in[12] ^ 
        y_nr_in[19] ^ 
        y_nr_in[23] ^ 
        y_nr_in[24] ^ 
0; 



wire syn_nr_6_1; 
assign syn_nr_6_1 = 
        y_nr_in[30] ^ 
        y_nr_in[34] ^ 
        y_nr_in[38] ^ 
        y_nr_in[46] ^ 
        y_nr_in[50] ^ 
0; 



assign syn_nr[6] = 
syn_nr_6_0 ^ 
syn_nr_6_1 ^ 
0; 



wire syn_nr_7_0; 
assign syn_nr_7_0 = 
        y_nr_in[2] ^ 
        y_nr_in[13] ^ 
        y_nr_in[16] ^ 
        y_nr_in[20] ^ 
        y_nr_in[25] ^ 
0; 



wire syn_nr_7_1; 
assign syn_nr_7_1 = 
        y_nr_in[31] ^ 
        y_nr_in[35] ^ 
        y_nr_in[39] ^ 
        y_nr_in[47] ^ 
        y_nr_in[51] ^ 
0; 



assign syn_nr[7] = 
syn_nr_7_0 ^ 
syn_nr_7_1 ^ 
0; 



wire syn_nr_8_0; 
assign syn_nr_8_0 = 
        y_nr_in[1] ^ 
        y_nr_in[6] ^ 
        y_nr_in[12] ^ 
        y_nr_in[16] ^ 
        y_nr_in[32] ^ 
0; 



wire syn_nr_8_1; 
assign syn_nr_8_1 = 
        y_nr_in[40] ^ 
        y_nr_in[48] ^ 
        y_nr_in[52] ^ 
0; 



assign syn_nr[8] = 
syn_nr_8_0 ^ 
syn_nr_8_1 ^ 
0; 



wire syn_nr_9_0; 
assign syn_nr_9_0 = 
        y_nr_in[2] ^ 
        y_nr_in[7] ^ 
        y_nr_in[13] ^ 
        y_nr_in[17] ^ 
        y_nr_in[33] ^ 
0; 



wire syn_nr_9_1; 
assign syn_nr_9_1 = 
        y_nr_in[41] ^ 
        y_nr_in[49] ^ 
        y_nr_in[53] ^ 
0; 



assign syn_nr[9] = 
syn_nr_9_0 ^ 
syn_nr_9_1 ^ 
0; 



wire syn_nr_10_0; 
assign syn_nr_10_0 = 
        y_nr_in[3] ^ 
        y_nr_in[4] ^ 
        y_nr_in[14] ^ 
        y_nr_in[18] ^ 
        y_nr_in[34] ^ 
0; 



wire syn_nr_10_1; 
assign syn_nr_10_1 = 
        y_nr_in[42] ^ 
        y_nr_in[50] ^ 
        y_nr_in[54] ^ 
0; 



assign syn_nr[10] = 
syn_nr_10_0 ^ 
syn_nr_10_1 ^ 
0; 



wire syn_nr_11_0; 
assign syn_nr_11_0 = 
        y_nr_in[0] ^ 
        y_nr_in[5] ^ 
        y_nr_in[15] ^ 
        y_nr_in[19] ^ 
        y_nr_in[35] ^ 
0; 



wire syn_nr_11_1; 
assign syn_nr_11_1 = 
        y_nr_in[43] ^ 
        y_nr_in[51] ^ 
        y_nr_in[55] ^ 
0; 



assign syn_nr[11] = 
syn_nr_11_0 ^ 
syn_nr_11_1 ^ 
0; 



wire syn_nr_12_0; 
assign syn_nr_12_0 = 
        y_nr_in[4] ^ 
        y_nr_in[10] ^ 
        y_nr_in[18] ^ 
        y_nr_in[20] ^ 
        y_nr_in[25] ^ 
0; 



wire syn_nr_12_1; 
assign syn_nr_12_1 = 
        y_nr_in[30] ^ 
        y_nr_in[34] ^ 
        y_nr_in[36] ^ 
        y_nr_in[40] ^ 
        y_nr_in[52] ^ 
0; 



assign syn_nr[12] = 
syn_nr_12_0 ^ 
syn_nr_12_1 ^ 
0; 



wire syn_nr_13_0; 
assign syn_nr_13_0 = 
        y_nr_in[5] ^ 
        y_nr_in[11] ^ 
        y_nr_in[19] ^ 
        y_nr_in[21] ^ 
        y_nr_in[26] ^ 
0; 



wire syn_nr_13_1; 
assign syn_nr_13_1 = 
        y_nr_in[31] ^ 
        y_nr_in[35] ^ 
        y_nr_in[37] ^ 
        y_nr_in[41] ^ 
        y_nr_in[53] ^ 
0; 



assign syn_nr[13] = 
syn_nr_13_0 ^ 
syn_nr_13_1 ^ 
0; 



wire syn_nr_14_0; 
assign syn_nr_14_0 = 
        y_nr_in[6] ^ 
        y_nr_in[8] ^ 
        y_nr_in[16] ^ 
        y_nr_in[22] ^ 
        y_nr_in[27] ^ 
0; 



wire syn_nr_14_1; 
assign syn_nr_14_1 = 
        y_nr_in[28] ^ 
        y_nr_in[32] ^ 
        y_nr_in[38] ^ 
        y_nr_in[42] ^ 
        y_nr_in[54] ^ 
0; 



assign syn_nr[14] = 
syn_nr_14_0 ^ 
syn_nr_14_1 ^ 
0; 



wire syn_nr_15_0; 
assign syn_nr_15_0 = 
        y_nr_in[7] ^ 
        y_nr_in[9] ^ 
        y_nr_in[17] ^ 
        y_nr_in[23] ^ 
        y_nr_in[24] ^ 
0; 



wire syn_nr_15_1; 
assign syn_nr_15_1 = 
        y_nr_in[29] ^ 
        y_nr_in[33] ^ 
        y_nr_in[39] ^ 
        y_nr_in[43] ^ 
        y_nr_in[55] ^ 
0; 



assign syn_nr[15] = 
syn_nr_15_0 ^ 
syn_nr_15_1 ^ 
0; 



wire syn_nr_16_0; 
assign syn_nr_16_0 = 
        y_nr_in[3] ^ 
        y_nr_in[6] ^ 
        y_nr_in[47] ^ 
        y_nr_in[56] ^ 
0; 



assign syn_nr[16] = 
syn_nr_16_0 ^ 
0; 



wire syn_nr_17_0; 
assign syn_nr_17_0 = 
        y_nr_in[0] ^ 
        y_nr_in[7] ^ 
        y_nr_in[44] ^ 
        y_nr_in[57] ^ 
0; 



assign syn_nr[17] = 
syn_nr_17_0 ^ 
0; 



wire syn_nr_18_0; 
assign syn_nr_18_0 = 
        y_nr_in[1] ^ 
        y_nr_in[4] ^ 
        y_nr_in[45] ^ 
        y_nr_in[58] ^ 
0; 



assign syn_nr[18] = 
syn_nr_18_0 ^ 
0; 



wire syn_nr_19_0; 
assign syn_nr_19_0 = 
        y_nr_in[2] ^ 
        y_nr_in[5] ^ 
        y_nr_in[46] ^ 
        y_nr_in[59] ^ 
0; 



assign syn_nr[19] = 
syn_nr_19_0 ^ 
0; 



wire syn_nr_20_0; 
assign syn_nr_20_0 = 
        y_nr_in[3] ^ 
        y_nr_in[5] ^ 
        y_nr_in[22] ^ 
        y_nr_in[31] ^ 
        y_nr_in[47] ^ 
0; 



wire syn_nr_20_1; 
assign syn_nr_20_1 = 
        y_nr_in[60] ^ 
0; 



assign syn_nr[20] = 
syn_nr_20_0 ^ 
syn_nr_20_1 ^ 
0; 



wire syn_nr_21_0; 
assign syn_nr_21_0 = 
        y_nr_in[0] ^ 
        y_nr_in[6] ^ 
        y_nr_in[23] ^ 
        y_nr_in[28] ^ 
        y_nr_in[44] ^ 
0; 



wire syn_nr_21_1; 
assign syn_nr_21_1 = 
        y_nr_in[61] ^ 
0; 



assign syn_nr[21] = 
syn_nr_21_0 ^ 
syn_nr_21_1 ^ 
0; 



wire syn_nr_22_0; 
assign syn_nr_22_0 = 
        y_nr_in[1] ^ 
        y_nr_in[7] ^ 
        y_nr_in[20] ^ 
        y_nr_in[29] ^ 
        y_nr_in[45] ^ 
0; 



wire syn_nr_22_1; 
assign syn_nr_22_1 = 
        y_nr_in[62] ^ 
0; 



assign syn_nr[22] = 
syn_nr_22_0 ^ 
syn_nr_22_1 ^ 
0; 



wire syn_nr_23_0; 
assign syn_nr_23_0 = 
        y_nr_in[2] ^ 
        y_nr_in[4] ^ 
        y_nr_in[21] ^ 
        y_nr_in[30] ^ 
        y_nr_in[46] ^ 
0; 



wire syn_nr_23_1; 
assign syn_nr_23_1 = 
        y_nr_in[63] ^ 
0; 



assign syn_nr[23] = 
syn_nr_23_0 ^ 
syn_nr_23_1 ^ 
0; 



wire syn_nr_24_0; 
assign syn_nr_24_0 = 
        y_nr_in[3] ^ 
        y_nr_in[20] ^ 
        y_nr_in[29] ^ 
        y_nr_in[36] ^ 
        y_nr_in[46] ^ 
0; 



wire syn_nr_24_1; 
assign syn_nr_24_1 = 
        y_nr_in[64] ^ 
0; 



assign syn_nr[24] = 
syn_nr_24_0 ^ 
syn_nr_24_1 ^ 
0; 



wire syn_nr_25_0; 
assign syn_nr_25_0 = 
        y_nr_in[0] ^ 
        y_nr_in[21] ^ 
        y_nr_in[30] ^ 
        y_nr_in[37] ^ 
        y_nr_in[47] ^ 
0; 



wire syn_nr_25_1; 
assign syn_nr_25_1 = 
        y_nr_in[65] ^ 
0; 



assign syn_nr[25] = 
syn_nr_25_0 ^ 
syn_nr_25_1 ^ 
0; 



wire syn_nr_26_0; 
assign syn_nr_26_0 = 
        y_nr_in[1] ^ 
        y_nr_in[22] ^ 
        y_nr_in[31] ^ 
        y_nr_in[38] ^ 
        y_nr_in[44] ^ 
0; 



wire syn_nr_26_1; 
assign syn_nr_26_1 = 
        y_nr_in[66] ^ 
0; 



assign syn_nr[26] = 
syn_nr_26_0 ^ 
syn_nr_26_1 ^ 
0; 



wire syn_nr_27_0; 
assign syn_nr_27_0 = 
        y_nr_in[2] ^ 
        y_nr_in[23] ^ 
        y_nr_in[28] ^ 
        y_nr_in[39] ^ 
        y_nr_in[45] ^ 
0; 



wire syn_nr_27_1; 
assign syn_nr_27_1 = 
        y_nr_in[67] ^ 
0; 



assign syn_nr[27] = 
syn_nr_27_0 ^ 
syn_nr_27_1 ^ 
0; 



wire syn_nr_28_0; 
assign syn_nr_28_0 = 
        y_nr_in[5] ^ 
        y_nr_in[23] ^ 
        y_nr_in[28] ^ 
        y_nr_in[47] ^ 
        y_nr_in[52] ^ 
0; 



wire syn_nr_28_1; 
assign syn_nr_28_1 = 
        y_nr_in[68] ^ 
0; 



assign syn_nr[28] = 
syn_nr_28_0 ^ 
syn_nr_28_1 ^ 
0; 



wire syn_nr_29_0; 
assign syn_nr_29_0 = 
        y_nr_in[6] ^ 
        y_nr_in[20] ^ 
        y_nr_in[29] ^ 
        y_nr_in[44] ^ 
        y_nr_in[53] ^ 
0; 



wire syn_nr_29_1; 
assign syn_nr_29_1 = 
        y_nr_in[69] ^ 
0; 



assign syn_nr[29] = 
syn_nr_29_0 ^ 
syn_nr_29_1 ^ 
0; 



wire syn_nr_30_0; 
assign syn_nr_30_0 = 
        y_nr_in[7] ^ 
        y_nr_in[21] ^ 
        y_nr_in[30] ^ 
        y_nr_in[45] ^ 
        y_nr_in[54] ^ 
0; 



wire syn_nr_30_1; 
assign syn_nr_30_1 = 
        y_nr_in[70] ^ 
0; 



assign syn_nr[30] = 
syn_nr_30_0 ^ 
syn_nr_30_1 ^ 
0; 



wire syn_nr_31_0; 
assign syn_nr_31_0 = 
        y_nr_in[4] ^ 
        y_nr_in[22] ^ 
        y_nr_in[31] ^ 
        y_nr_in[46] ^ 
        y_nr_in[55] ^ 
0; 



wire syn_nr_31_1; 
assign syn_nr_31_1 = 
        y_nr_in[71] ^ 
0; 



assign syn_nr[31] = 
syn_nr_31_0 ^ 
syn_nr_31_1 ^ 
0; 



wire syn_nr_32_0; 
assign syn_nr_32_0 = 
        y_nr_in[2] ^ 
        y_nr_in[6] ^ 
        y_nr_in[50] ^ 
        y_nr_in[72] ^ 
0; 



assign syn_nr[32] = 
syn_nr_32_0 ^ 
0; 



wire syn_nr_33_0; 
assign syn_nr_33_0 = 
        y_nr_in[3] ^ 
        y_nr_in[7] ^ 
        y_nr_in[51] ^ 
        y_nr_in[73] ^ 
0; 



assign syn_nr[33] = 
syn_nr_33_0 ^ 
0; 



wire syn_nr_34_0; 
assign syn_nr_34_0 = 
        y_nr_in[0] ^ 
        y_nr_in[4] ^ 
        y_nr_in[48] ^ 
        y_nr_in[74] ^ 
0; 



assign syn_nr[34] = 
syn_nr_34_0 ^ 
0; 



wire syn_nr_35_0; 
assign syn_nr_35_0 = 
        y_nr_in[1] ^ 
        y_nr_in[5] ^ 
        y_nr_in[49] ^ 
        y_nr_in[75] ^ 
0; 



assign syn_nr[35] = 
syn_nr_35_0 ^ 
0; 



wire syn_nr_36_0; 
assign syn_nr_36_0 = 
        y_nr_in[7] ^ 
        y_nr_in[33] ^ 
        y_nr_in[41] ^ 
        y_nr_in[47] ^ 
        y_nr_in[76] ^ 
0; 



assign syn_nr[36] = 
syn_nr_36_0 ^ 
0; 



wire syn_nr_37_0; 
assign syn_nr_37_0 = 
        y_nr_in[4] ^ 
        y_nr_in[34] ^ 
        y_nr_in[42] ^ 
        y_nr_in[44] ^ 
        y_nr_in[77] ^ 
0; 



assign syn_nr[37] = 
syn_nr_37_0 ^ 
0; 



wire syn_nr_38_0; 
assign syn_nr_38_0 = 
        y_nr_in[5] ^ 
        y_nr_in[35] ^ 
        y_nr_in[43] ^ 
        y_nr_in[45] ^ 
        y_nr_in[78] ^ 
0; 



assign syn_nr[38] = 
syn_nr_38_0 ^ 
0; 



wire syn_nr_39_0; 
assign syn_nr_39_0 = 
        y_nr_in[6] ^ 
        y_nr_in[32] ^ 
        y_nr_in[40] ^ 
        y_nr_in[46] ^ 
        y_nr_in[79] ^ 
0; 



assign syn_nr[39] = 
syn_nr_39_0 ^ 
0; 



wire syn_nr_40_0; 
assign syn_nr_40_0 = 
        y_nr_in[3] ^ 
        y_nr_in[5] ^ 
        y_nr_in[24] ^ 
        y_nr_in[29] ^ 
        y_nr_in[80] ^ 
0; 



assign syn_nr[40] = 
syn_nr_40_0 ^ 
0; 



wire syn_nr_41_0; 
assign syn_nr_41_0 = 
        y_nr_in[0] ^ 
        y_nr_in[6] ^ 
        y_nr_in[25] ^ 
        y_nr_in[30] ^ 
        y_nr_in[81] ^ 
0; 



assign syn_nr[41] = 
syn_nr_41_0 ^ 
0; 



wire syn_nr_42_0; 
assign syn_nr_42_0 = 
        y_nr_in[1] ^ 
        y_nr_in[7] ^ 
        y_nr_in[26] ^ 
        y_nr_in[31] ^ 
        y_nr_in[82] ^ 
0; 



assign syn_nr[42] = 
syn_nr_42_0 ^ 
0; 



wire syn_nr_43_0; 
assign syn_nr_43_0 = 
        y_nr_in[2] ^ 
        y_nr_in[4] ^ 
        y_nr_in[27] ^ 
        y_nr_in[28] ^ 
        y_nr_in[83] ^ 
0; 



assign syn_nr[43] = 
syn_nr_43_0 ^ 
0; 



wire syn_nr_44_0; 
assign syn_nr_44_0 = 
        y_nr_in[3] ^ 
        y_nr_in[28] ^ 
        y_nr_in[38] ^ 
        y_nr_in[52] ^ 
        y_nr_in[84] ^ 
0; 



assign syn_nr[44] = 
syn_nr_44_0 ^ 
0; 



wire syn_nr_45_0; 
assign syn_nr_45_0 = 
        y_nr_in[0] ^ 
        y_nr_in[29] ^ 
        y_nr_in[39] ^ 
        y_nr_in[53] ^ 
        y_nr_in[85] ^ 
0; 



assign syn_nr[45] = 
syn_nr_45_0 ^ 
0; 



wire syn_nr_46_0; 
assign syn_nr_46_0 = 
        y_nr_in[1] ^ 
        y_nr_in[30] ^ 
        y_nr_in[36] ^ 
        y_nr_in[54] ^ 
        y_nr_in[86] ^ 
0; 



assign syn_nr[46] = 
syn_nr_46_0 ^ 
0; 



wire syn_nr_47_0; 
assign syn_nr_47_0 = 
        y_nr_in[2] ^ 
        y_nr_in[31] ^ 
        y_nr_in[37] ^ 
        y_nr_in[55] ^ 
        y_nr_in[87] ^ 
0; 



assign syn_nr[47] = 
syn_nr_47_0 ^ 
0; 



wire syn_nr_48_0; 
assign syn_nr_48_0 = 
        y_nr_in[7] ^ 
        y_nr_in[15] ^ 
        y_nr_in[46] ^ 
        y_nr_in[88] ^ 
0; 



assign syn_nr[48] = 
syn_nr_48_0 ^ 
0; 



wire syn_nr_49_0; 
assign syn_nr_49_0 = 
        y_nr_in[4] ^ 
        y_nr_in[12] ^ 
        y_nr_in[47] ^ 
        y_nr_in[89] ^ 
0; 



assign syn_nr[49] = 
syn_nr_49_0 ^ 
0; 



wire syn_nr_50_0; 
assign syn_nr_50_0 = 
        y_nr_in[5] ^ 
        y_nr_in[13] ^ 
        y_nr_in[44] ^ 
        y_nr_in[90] ^ 
0; 



assign syn_nr[50] = 
syn_nr_50_0 ^ 
0; 



wire syn_nr_51_0; 
assign syn_nr_51_0 = 
        y_nr_in[6] ^ 
        y_nr_in[14] ^ 
        y_nr_in[45] ^ 
        y_nr_in[91] ^ 
0; 



assign syn_nr[51] = 
syn_nr_51_0 ^ 
0; 



wire syn_nr_52_0; 
assign syn_nr_52_0 = 
        y_nr_in[3] ^ 
        y_nr_in[6] ^ 
        y_nr_in[34] ^ 
        y_nr_in[54] ^ 
        y_nr_in[92] ^ 
0; 



assign syn_nr[52] = 
syn_nr_52_0 ^ 
0; 



wire syn_nr_53_0; 
assign syn_nr_53_0 = 
        y_nr_in[0] ^ 
        y_nr_in[7] ^ 
        y_nr_in[35] ^ 
        y_nr_in[55] ^ 
        y_nr_in[93] ^ 
0; 



assign syn_nr[53] = 
syn_nr_53_0 ^ 
0; 



wire syn_nr_54_0; 
assign syn_nr_54_0 = 
        y_nr_in[1] ^ 
        y_nr_in[4] ^ 
        y_nr_in[32] ^ 
        y_nr_in[52] ^ 
        y_nr_in[94] ^ 
0; 



assign syn_nr[54] = 
syn_nr_54_0 ^ 
0; 



wire syn_nr_55_0; 
assign syn_nr_55_0 = 
        y_nr_in[2] ^ 
        y_nr_in[5] ^ 
        y_nr_in[33] ^ 
        y_nr_in[53] ^ 
        y_nr_in[95] ^ 
0; 



assign syn_nr[55] = 
syn_nr_55_0 ^ 
0; 



wire syn_nr_56_0; 
assign syn_nr_56_0 = 
        y_nr_in[7] ^ 
        y_nr_in[25] ^ 
        y_nr_in[47] ^ 
        y_nr_in[52] ^ 
        y_nr_in[96] ^ 
0; 



assign syn_nr[56] = 
syn_nr_56_0 ^ 
0; 



wire syn_nr_57_0; 
assign syn_nr_57_0 = 
        y_nr_in[4] ^ 
        y_nr_in[26] ^ 
        y_nr_in[44] ^ 
        y_nr_in[53] ^ 
        y_nr_in[97] ^ 
0; 



assign syn_nr[57] = 
syn_nr_57_0 ^ 
0; 



wire syn_nr_58_0; 
assign syn_nr_58_0 = 
        y_nr_in[5] ^ 
        y_nr_in[27] ^ 
        y_nr_in[45] ^ 
        y_nr_in[54] ^ 
        y_nr_in[98] ^ 
0; 



assign syn_nr[58] = 
syn_nr_58_0 ^ 
0; 



wire syn_nr_59_0; 
assign syn_nr_59_0 = 
        y_nr_in[6] ^ 
        y_nr_in[24] ^ 
        y_nr_in[46] ^ 
        y_nr_in[55] ^ 
        y_nr_in[99] ^ 
0; 



assign syn_nr[59] = 
syn_nr_59_0 ^ 
0; 



wire syn_nr_60_0; 
assign syn_nr_60_0 = 
        y_nr_in[3] ^ 
        y_nr_in[43] ^ 
        y_nr_in[45] ^ 
        y_nr_in[100] ^ 
0; 



assign syn_nr[60] = 
syn_nr_60_0 ^ 
0; 



wire syn_nr_61_0; 
assign syn_nr_61_0 = 
        y_nr_in[0] ^ 
        y_nr_in[40] ^ 
        y_nr_in[46] ^ 
        y_nr_in[101] ^ 
0; 



assign syn_nr[61] = 
syn_nr_61_0 ^ 
0; 



wire syn_nr_62_0; 
assign syn_nr_62_0 = 
        y_nr_in[1] ^ 
        y_nr_in[41] ^ 
        y_nr_in[47] ^ 
        y_nr_in[102] ^ 
0; 



assign syn_nr[62] = 
syn_nr_62_0 ^ 
0; 



wire syn_nr_63_0; 
assign syn_nr_63_0 = 
        y_nr_in[2] ^ 
        y_nr_in[42] ^ 
        y_nr_in[44] ^ 
        y_nr_in[103] ^ 
0; 



assign syn_nr[63] = 
syn_nr_63_0 ^ 
0; 



wire syn_nr_64_0; 
assign syn_nr_64_0 = 
        y_nr_in[7] ^ 
        y_nr_in[38] ^ 
        y_nr_in[44] ^ 
        y_nr_in[50] ^ 
        y_nr_in[104] ^ 
0; 



assign syn_nr[64] = 
syn_nr_64_0 ^ 
0; 



wire syn_nr_65_0; 
assign syn_nr_65_0 = 
        y_nr_in[4] ^ 
        y_nr_in[39] ^ 
        y_nr_in[45] ^ 
        y_nr_in[51] ^ 
        y_nr_in[105] ^ 
0; 



assign syn_nr[65] = 
syn_nr_65_0 ^ 
0; 



wire syn_nr_66_0; 
assign syn_nr_66_0 = 
        y_nr_in[5] ^ 
        y_nr_in[36] ^ 
        y_nr_in[46] ^ 
        y_nr_in[48] ^ 
        y_nr_in[106] ^ 
0; 



assign syn_nr[66] = 
syn_nr_66_0 ^ 
0; 



wire syn_nr_67_0; 
assign syn_nr_67_0 = 
        y_nr_in[6] ^ 
        y_nr_in[37] ^ 
        y_nr_in[47] ^ 
        y_nr_in[49] ^ 
        y_nr_in[107] ^ 
0; 



assign syn_nr[67] = 
syn_nr_67_0 ^ 
0; 



wire syn_nr_68_0; 
assign syn_nr_68_0 = 
        y_nr_in[6] ^ 
        y_nr_in[20] ^ 
        y_nr_in[46] ^ 
        y_nr_in[48] ^ 
        y_nr_in[108] ^ 
0; 



assign syn_nr[68] = 
syn_nr_68_0 ^ 
0; 



wire syn_nr_69_0; 
assign syn_nr_69_0 = 
        y_nr_in[7] ^ 
        y_nr_in[21] ^ 
        y_nr_in[47] ^ 
        y_nr_in[49] ^ 
        y_nr_in[109] ^ 
0; 



assign syn_nr[69] = 
syn_nr_69_0 ^ 
0; 



wire syn_nr_70_0; 
assign syn_nr_70_0 = 
        y_nr_in[4] ^ 
        y_nr_in[22] ^ 
        y_nr_in[44] ^ 
        y_nr_in[50] ^ 
        y_nr_in[110] ^ 
0; 



assign syn_nr[70] = 
syn_nr_70_0 ^ 
0; 



wire syn_nr_71_0; 
assign syn_nr_71_0 = 
        y_nr_in[5] ^ 
        y_nr_in[23] ^ 
        y_nr_in[45] ^ 
        y_nr_in[51] ^ 
        y_nr_in[111] ^ 
0; 



assign syn_nr[71] = 
syn_nr_71_0 ^ 
0; 



wire syn_nr_72_0; 
assign syn_nr_72_0 = 
        y_nr_in[0] ^ 
        y_nr_in[26] ^ 
        y_nr_in[30] ^ 
        y_nr_in[112] ^ 
0; 



assign syn_nr[72] = 
syn_nr_72_0 ^ 
0; 



wire syn_nr_73_0; 
assign syn_nr_73_0 = 
        y_nr_in[1] ^ 
        y_nr_in[27] ^ 
        y_nr_in[31] ^ 
        y_nr_in[113] ^ 
0; 



assign syn_nr[73] = 
syn_nr_73_0 ^ 
0; 



wire syn_nr_74_0; 
assign syn_nr_74_0 = 
        y_nr_in[2] ^ 
        y_nr_in[24] ^ 
        y_nr_in[28] ^ 
        y_nr_in[114] ^ 
0; 



assign syn_nr[74] = 
syn_nr_74_0 ^ 
0; 



wire syn_nr_75_0; 
assign syn_nr_75_0 = 
        y_nr_in[3] ^ 
        y_nr_in[25] ^ 
        y_nr_in[29] ^ 
        y_nr_in[115] ^ 
0; 



assign syn_nr[75] = 
syn_nr_75_0 ^ 
0; 



wire syn_nr_76_0; 
assign syn_nr_76_0 = 
        y_nr_in[3] ^ 
        y_nr_in[4] ^ 
        y_nr_in[41] ^ 
        y_nr_in[116] ^ 
0; 



assign syn_nr[76] = 
syn_nr_76_0 ^ 
0; 



wire syn_nr_77_0; 
assign syn_nr_77_0 = 
        y_nr_in[0] ^ 
        y_nr_in[5] ^ 
        y_nr_in[42] ^ 
        y_nr_in[117] ^ 
0; 



assign syn_nr[77] = 
syn_nr_77_0 ^ 
0; 



wire syn_nr_78_0; 
assign syn_nr_78_0 = 
        y_nr_in[1] ^ 
        y_nr_in[6] ^ 
        y_nr_in[43] ^ 
        y_nr_in[118] ^ 
0; 



assign syn_nr[78] = 
syn_nr_78_0 ^ 
0; 



wire syn_nr_79_0; 
assign syn_nr_79_0 = 
        y_nr_in[2] ^ 
        y_nr_in[7] ^ 
        y_nr_in[40] ^ 
        y_nr_in[119] ^ 
0; 



assign syn_nr[79] = 
syn_nr_79_0 ^ 
0; 



wire syn_nr_80_0; 
assign syn_nr_80_0 = 
        y_nr_in[6] ^ 
        y_nr_in[17] ^ 
        y_nr_in[45] ^ 
        y_nr_in[120] ^ 
0; 



assign syn_nr[80] = 
syn_nr_80_0 ^ 
0; 



wire syn_nr_81_0; 
assign syn_nr_81_0 = 
        y_nr_in[7] ^ 
        y_nr_in[18] ^ 
        y_nr_in[46] ^ 
        y_nr_in[121] ^ 
0; 



assign syn_nr[81] = 
syn_nr_81_0 ^ 
0; 



wire syn_nr_82_0; 
assign syn_nr_82_0 = 
        y_nr_in[4] ^ 
        y_nr_in[19] ^ 
        y_nr_in[47] ^ 
        y_nr_in[122] ^ 
0; 



assign syn_nr[82] = 
syn_nr_82_0 ^ 
0; 



wire syn_nr_83_0; 
assign syn_nr_83_0 = 
        y_nr_in[5] ^ 
        y_nr_in[16] ^ 
        y_nr_in[44] ^ 
        y_nr_in[123] ^ 
0; 



assign syn_nr[83] = 
syn_nr_83_0 ^ 
0; 



wire syn_nr_84_0; 
assign syn_nr_84_0 = 
        y_nr_in[0] ^ 
        y_nr_in[34] ^ 
        y_nr_in[54] ^ 
        y_nr_in[124] ^ 
0; 



assign syn_nr[84] = 
syn_nr_84_0 ^ 
0; 



wire syn_nr_85_0; 
assign syn_nr_85_0 = 
        y_nr_in[1] ^ 
        y_nr_in[35] ^ 
        y_nr_in[55] ^ 
        y_nr_in[125] ^ 
0; 



assign syn_nr[85] = 
syn_nr_85_0 ^ 
0; 



wire syn_nr_86_0; 
assign syn_nr_86_0 = 
        y_nr_in[2] ^ 
        y_nr_in[32] ^ 
        y_nr_in[52] ^ 
        y_nr_in[126] ^ 
0; 



assign syn_nr[86] = 
syn_nr_86_0 ^ 
0; 



wire syn_nr_87_0; 
assign syn_nr_87_0 = 
        y_nr_in[3] ^ 
        y_nr_in[33] ^ 
        y_nr_in[53] ^ 
        y_nr_in[127] ^ 
0; 



assign syn_nr[87] = 
syn_nr_87_0 ^ 
0; 



wire syn_nr_88_0; 
assign syn_nr_88_0 = 
        y_nr_in[6] ^ 
        y_nr_in[11] ^ 
        y_nr_in[128] ^ 
0; 



assign syn_nr[88] = 
syn_nr_88_0 ^ 
0; 



wire syn_nr_89_0; 
assign syn_nr_89_0 = 
        y_nr_in[7] ^ 
        y_nr_in[8] ^ 
        y_nr_in[129] ^ 
0; 



assign syn_nr[89] = 
syn_nr_89_0 ^ 
0; 



wire syn_nr_90_0; 
assign syn_nr_90_0 = 
        y_nr_in[4] ^ 
        y_nr_in[9] ^ 
        y_nr_in[130] ^ 
0; 



assign syn_nr[90] = 
syn_nr_90_0 ^ 
0; 



wire syn_nr_91_0; 
assign syn_nr_91_0 = 
        y_nr_in[5] ^ 
        y_nr_in[10] ^ 
        y_nr_in[131] ^ 
0; 



assign syn_nr[91] = 
syn_nr_91_0 ^ 
0; 



wire syn_nr_92_0; 
assign syn_nr_92_0 = 
        y_nr_in[3] ^ 
        y_nr_in[15] ^ 
        y_nr_in[22] ^ 
        y_nr_in[132] ^ 
0; 



assign syn_nr[92] = 
syn_nr_92_0 ^ 
0; 



wire syn_nr_93_0; 
assign syn_nr_93_0 = 
        y_nr_in[0] ^ 
        y_nr_in[12] ^ 
        y_nr_in[23] ^ 
        y_nr_in[133] ^ 
0; 



assign syn_nr[93] = 
syn_nr_93_0 ^ 
0; 



wire syn_nr_94_0; 
assign syn_nr_94_0 = 
        y_nr_in[1] ^ 
        y_nr_in[13] ^ 
        y_nr_in[20] ^ 
        y_nr_in[134] ^ 
0; 



assign syn_nr[94] = 
syn_nr_94_0 ^ 
0; 



wire syn_nr_95_0; 
assign syn_nr_95_0 = 
        y_nr_in[2] ^ 
        y_nr_in[14] ^ 
        y_nr_in[21] ^ 
        y_nr_in[135] ^ 
0; 



assign syn_nr[95] = 
syn_nr_95_0 ^ 
0; 



wire syn_nr_96_0; 
assign syn_nr_96_0 = 
        y_nr_in[6] ^ 
        y_nr_in[11] ^ 
        y_nr_in[36] ^ 
        y_nr_in[136] ^ 
0; 



assign syn_nr[96] = 
syn_nr_96_0 ^ 
0; 



wire syn_nr_97_0; 
assign syn_nr_97_0 = 
        y_nr_in[7] ^ 
        y_nr_in[8] ^ 
        y_nr_in[37] ^ 
        y_nr_in[137] ^ 
0; 



assign syn_nr[97] = 
syn_nr_97_0 ^ 
0; 



wire syn_nr_98_0; 
assign syn_nr_98_0 = 
        y_nr_in[4] ^ 
        y_nr_in[9] ^ 
        y_nr_in[38] ^ 
        y_nr_in[138] ^ 
0; 



assign syn_nr[98] = 
syn_nr_98_0 ^ 
0; 



wire syn_nr_99_0; 
assign syn_nr_99_0 = 
        y_nr_in[5] ^ 
        y_nr_in[10] ^ 
        y_nr_in[39] ^ 
        y_nr_in[139] ^ 
0; 



assign syn_nr[99] = 
syn_nr_99_0 ^ 
0; 



wire syn_nr_100_0; 
assign syn_nr_100_0 = 
        y_nr_in[0] ^ 
        y_nr_in[20] ^ 
        y_nr_in[140] ^ 
0; 



assign syn_nr[100] = 
syn_nr_100_0 ^ 
0; 



wire syn_nr_101_0; 
assign syn_nr_101_0 = 
        y_nr_in[1] ^ 
        y_nr_in[21] ^ 
        y_nr_in[141] ^ 
0; 



assign syn_nr[101] = 
syn_nr_101_0 ^ 
0; 



wire syn_nr_102_0; 
assign syn_nr_102_0 = 
        y_nr_in[2] ^ 
        y_nr_in[22] ^ 
        y_nr_in[142] ^ 
0; 



assign syn_nr[102] = 
syn_nr_102_0 ^ 
0; 



wire syn_nr_103_0; 
assign syn_nr_103_0 = 
        y_nr_in[3] ^ 
        y_nr_in[23] ^ 
        y_nr_in[143] ^ 
0; 



assign syn_nr[103] = 
syn_nr_103_0 ^ 
0; 



wire syn_nr_104_0; 
assign syn_nr_104_0 = 
        y_nr_in[9] ^ 
        y_nr_in[31] ^ 
        y_nr_in[48] ^ 
        y_nr_in[54] ^ 
        y_nr_in[144] ^ 
0; 



assign syn_nr[104] = 
syn_nr_104_0 ^ 
0; 



wire syn_nr_105_0; 
assign syn_nr_105_0 = 
        y_nr_in[10] ^ 
        y_nr_in[28] ^ 
        y_nr_in[49] ^ 
        y_nr_in[55] ^ 
        y_nr_in[145] ^ 
0; 



assign syn_nr[105] = 
syn_nr_105_0 ^ 
0; 



wire syn_nr_106_0; 
assign syn_nr_106_0 = 
        y_nr_in[11] ^ 
        y_nr_in[29] ^ 
        y_nr_in[50] ^ 
        y_nr_in[52] ^ 
        y_nr_in[146] ^ 
0; 



assign syn_nr[106] = 
syn_nr_106_0 ^ 
0; 



wire syn_nr_107_0; 
assign syn_nr_107_0 = 
        y_nr_in[8] ^ 
        y_nr_in[30] ^ 
        y_nr_in[51] ^ 
        y_nr_in[53] ^ 
        y_nr_in[147] ^ 
0; 



assign syn_nr[107] = 
syn_nr_107_0 ^ 
0; 



wire syn_nr_108_0; 
assign syn_nr_108_0 = 
        y_nr_in[0] ^ 
        y_nr_in[27] ^ 
        y_nr_in[148] ^ 
0; 



assign syn_nr[108] = 
syn_nr_108_0 ^ 
0; 



wire syn_nr_109_0; 
assign syn_nr_109_0 = 
        y_nr_in[1] ^ 
        y_nr_in[24] ^ 
        y_nr_in[149] ^ 
0; 



assign syn_nr[109] = 
syn_nr_109_0 ^ 
0; 



wire syn_nr_110_0; 
assign syn_nr_110_0 = 
        y_nr_in[2] ^ 
        y_nr_in[25] ^ 
        y_nr_in[150] ^ 
0; 



assign syn_nr[110] = 
syn_nr_110_0 ^ 
0; 



wire syn_nr_111_0; 
assign syn_nr_111_0 = 
        y_nr_in[3] ^ 
        y_nr_in[26] ^ 
        y_nr_in[151] ^ 
0; 



assign syn_nr[111] = 
syn_nr_111_0 ^ 
0; 



wire syn_nr_112_0; 
assign syn_nr_112_0 = 
        y_nr_in[6] ^ 
        y_nr_in[9] ^ 
        y_nr_in[23] ^ 
        y_nr_in[152] ^ 
0; 



assign syn_nr[112] = 
syn_nr_112_0 ^ 
0; 



wire syn_nr_113_0; 
assign syn_nr_113_0 = 
        y_nr_in[7] ^ 
        y_nr_in[10] ^ 
        y_nr_in[20] ^ 
        y_nr_in[153] ^ 
0; 



assign syn_nr[113] = 
syn_nr_113_0 ^ 
0; 



wire syn_nr_114_0; 
assign syn_nr_114_0 = 
        y_nr_in[4] ^ 
        y_nr_in[11] ^ 
        y_nr_in[21] ^ 
        y_nr_in[154] ^ 
0; 



assign syn_nr[114] = 
syn_nr_114_0 ^ 
0; 



wire syn_nr_115_0; 
assign syn_nr_115_0 = 
        y_nr_in[5] ^ 
        y_nr_in[8] ^ 
        y_nr_in[22] ^ 
        y_nr_in[155] ^ 
0; 



assign syn_nr[115] = 
syn_nr_115_0 ^ 
0; 



wire syn_nr_116_0; 
assign syn_nr_116_0 = 
        y_nr_in[2] ^ 
        y_nr_in[16] ^ 
        y_nr_in[156] ^ 
0; 



assign syn_nr[116] = 
syn_nr_116_0 ^ 
0; 



wire syn_nr_117_0; 
assign syn_nr_117_0 = 
        y_nr_in[3] ^ 
        y_nr_in[17] ^ 
        y_nr_in[157] ^ 
0; 



assign syn_nr[117] = 
syn_nr_117_0 ^ 
0; 



wire syn_nr_118_0; 
assign syn_nr_118_0 = 
        y_nr_in[0] ^ 
        y_nr_in[18] ^ 
        y_nr_in[158] ^ 
0; 



assign syn_nr[118] = 
syn_nr_118_0 ^ 
0; 



wire syn_nr_119_0; 
assign syn_nr_119_0 = 
        y_nr_in[1] ^ 
        y_nr_in[19] ^ 
        y_nr_in[159] ^ 
0; 



assign syn_nr[119] = 
syn_nr_119_0 ^ 
0; 



wire syn_nr_120_0; 
assign syn_nr_120_0 = 
        y_nr_in[11] ^ 
        y_nr_in[20] ^ 
        y_nr_in[29] ^ 
        y_nr_in[36] ^ 
        y_nr_in[160] ^ 
0; 



assign syn_nr[120] = 
syn_nr_120_0 ^ 
0; 



wire syn_nr_121_0; 
assign syn_nr_121_0 = 
        y_nr_in[8] ^ 
        y_nr_in[21] ^ 
        y_nr_in[30] ^ 
        y_nr_in[37] ^ 
        y_nr_in[161] ^ 
0; 



assign syn_nr[121] = 
syn_nr_121_0 ^ 
0; 



wire syn_nr_122_0; 
assign syn_nr_122_0 = 
        y_nr_in[9] ^ 
        y_nr_in[22] ^ 
        y_nr_in[31] ^ 
        y_nr_in[38] ^ 
        y_nr_in[162] ^ 
0; 



assign syn_nr[122] = 
syn_nr_122_0 ^ 
0; 



wire syn_nr_123_0; 
assign syn_nr_123_0 = 
        y_nr_in[10] ^ 
        y_nr_in[23] ^ 
        y_nr_in[28] ^ 
        y_nr_in[39] ^ 
        y_nr_in[163] ^ 
0; 



assign syn_nr[123] = 
syn_nr_123_0 ^ 
0; 



wire syn_nr_124_0; 
assign syn_nr_124_0 = 
        y_nr_in[6] ^ 
        y_nr_in[53] ^ 
        y_nr_in[164] ^ 
0; 



assign syn_nr[124] = 
syn_nr_124_0 ^ 
0; 



wire syn_nr_125_0; 
assign syn_nr_125_0 = 
        y_nr_in[7] ^ 
        y_nr_in[54] ^ 
        y_nr_in[165] ^ 
0; 



assign syn_nr[125] = 
syn_nr_125_0 ^ 
0; 



wire syn_nr_126_0; 
assign syn_nr_126_0 = 
        y_nr_in[4] ^ 
        y_nr_in[55] ^ 
        y_nr_in[166] ^ 
0; 



assign syn_nr[126] = 
syn_nr_126_0 ^ 
0; 



wire syn_nr_127_0; 
assign syn_nr_127_0 = 
        y_nr_in[5] ^ 
        y_nr_in[52] ^ 
        y_nr_in[167] ^ 
0; 



assign syn_nr[127] = 
syn_nr_127_0 ^ 
0; 



wire syn_nr_128_0; 
assign syn_nr_128_0 = 
        y_nr_in[2] ^ 
        y_nr_in[20] ^ 
        y_nr_in[50] ^ 
        y_nr_in[168] ^ 
0; 



assign syn_nr[128] = 
syn_nr_128_0 ^ 
0; 



wire syn_nr_129_0; 
assign syn_nr_129_0 = 
        y_nr_in[3] ^ 
        y_nr_in[21] ^ 
        y_nr_in[51] ^ 
        y_nr_in[169] ^ 
0; 



assign syn_nr[129] = 
syn_nr_129_0 ^ 
0; 



wire syn_nr_130_0; 
assign syn_nr_130_0 = 
        y_nr_in[0] ^ 
        y_nr_in[22] ^ 
        y_nr_in[48] ^ 
        y_nr_in[170] ^ 
0; 



assign syn_nr[130] = 
syn_nr_130_0 ^ 
0; 



wire syn_nr_131_0; 
assign syn_nr_131_0 = 
        y_nr_in[1] ^ 
        y_nr_in[23] ^ 
        y_nr_in[49] ^ 
        y_nr_in[171] ^ 
0; 



assign syn_nr[131] = 
syn_nr_131_0 ^ 
0; 



wire syn_nr_132_0; 
assign syn_nr_132_0 = 
        y_nr_in[8] ^ 
        y_nr_in[28] ^ 
        y_nr_in[43] ^ 
        y_nr_in[172] ^ 
0; 



assign syn_nr[132] = 
syn_nr_132_0 ^ 
0; 



wire syn_nr_133_0; 
assign syn_nr_133_0 = 
        y_nr_in[9] ^ 
        y_nr_in[29] ^ 
        y_nr_in[40] ^ 
        y_nr_in[173] ^ 
0; 



assign syn_nr[133] = 
syn_nr_133_0 ^ 
0; 



wire syn_nr_134_0; 
assign syn_nr_134_0 = 
        y_nr_in[10] ^ 
        y_nr_in[30] ^ 
        y_nr_in[41] ^ 
        y_nr_in[174] ^ 
0; 



assign syn_nr[134] = 
syn_nr_134_0 ^ 
0; 



wire syn_nr_135_0; 
assign syn_nr_135_0 = 
        y_nr_in[11] ^ 
        y_nr_in[31] ^ 
        y_nr_in[42] ^ 
        y_nr_in[175] ^ 
0; 



assign syn_nr[135] = 
syn_nr_135_0 ^ 
0; 



wire syn_nr_136_0; 
assign syn_nr_136_0 = 
        y_nr_in[3] ^ 
        y_nr_in[49] ^ 
        y_nr_in[52] ^ 
        y_nr_in[176] ^ 
0; 



assign syn_nr[136] = 
syn_nr_136_0 ^ 
0; 



wire syn_nr_137_0; 
assign syn_nr_137_0 = 
        y_nr_in[0] ^ 
        y_nr_in[50] ^ 
        y_nr_in[53] ^ 
        y_nr_in[177] ^ 
0; 



assign syn_nr[137] = 
syn_nr_137_0 ^ 
0; 



wire syn_nr_138_0; 
assign syn_nr_138_0 = 
        y_nr_in[1] ^ 
        y_nr_in[51] ^ 
        y_nr_in[54] ^ 
        y_nr_in[178] ^ 
0; 



assign syn_nr[138] = 
syn_nr_138_0 ^ 
0; 



wire syn_nr_139_0; 
assign syn_nr_139_0 = 
        y_nr_in[2] ^ 
        y_nr_in[48] ^ 
        y_nr_in[55] ^ 
        y_nr_in[179] ^ 
0; 



assign syn_nr[139] = 
syn_nr_139_0 ^ 
0; 



wire syn_nr_140_0; 
assign syn_nr_140_0 = 
        y_nr_in[5] ^ 
        y_nr_in[20] ^ 
        y_nr_in[47] ^ 
        y_nr_in[180] ^ 
0; 



assign syn_nr[140] = 
syn_nr_140_0 ^ 
0; 



wire syn_nr_141_0; 
assign syn_nr_141_0 = 
        y_nr_in[6] ^ 
        y_nr_in[21] ^ 
        y_nr_in[44] ^ 
        y_nr_in[181] ^ 
0; 



assign syn_nr[141] = 
syn_nr_141_0 ^ 
0; 



wire syn_nr_142_0; 
assign syn_nr_142_0 = 
        y_nr_in[7] ^ 
        y_nr_in[22] ^ 
        y_nr_in[45] ^ 
        y_nr_in[182] ^ 
0; 



assign syn_nr[142] = 
syn_nr_142_0 ^ 
0; 



wire syn_nr_143_0; 
assign syn_nr_143_0 = 
        y_nr_in[4] ^ 
        y_nr_in[23] ^ 
        y_nr_in[46] ^ 
        y_nr_in[183] ^ 
0; 



assign syn_nr[143] = 
syn_nr_143_0 ^ 
0; 



wire syn_nr_144_0; 
assign syn_nr_144_0 = 
        y_nr_in[0] ^ 
        y_nr_in[10] ^ 
        y_nr_in[30] ^ 
        y_nr_in[184] ^ 
0; 



assign syn_nr[144] = 
syn_nr_144_0 ^ 
0; 



wire syn_nr_145_0; 
assign syn_nr_145_0 = 
        y_nr_in[1] ^ 
        y_nr_in[11] ^ 
        y_nr_in[31] ^ 
        y_nr_in[185] ^ 
0; 



assign syn_nr[145] = 
syn_nr_145_0 ^ 
0; 



wire syn_nr_146_0; 
assign syn_nr_146_0 = 
        y_nr_in[2] ^ 
        y_nr_in[8] ^ 
        y_nr_in[28] ^ 
        y_nr_in[186] ^ 
0; 



assign syn_nr[146] = 
syn_nr_146_0 ^ 
0; 



wire syn_nr_147_0; 
assign syn_nr_147_0 = 
        y_nr_in[3] ^ 
        y_nr_in[9] ^ 
        y_nr_in[29] ^ 
        y_nr_in[187] ^ 
0; 



assign syn_nr[147] = 
syn_nr_147_0 ^ 
0; 



wire syn_nr_148_0; 
assign syn_nr_148_0 = 
        y_nr_in[43] ^ 
        y_nr_in[55] ^ 
        y_nr_in[188] ^ 
0; 



assign syn_nr[148] = 
syn_nr_148_0 ^ 
0; 



wire syn_nr_149_0; 
assign syn_nr_149_0 = 
        y_nr_in[40] ^ 
        y_nr_in[52] ^ 
        y_nr_in[189] ^ 
0; 



assign syn_nr[149] = 
syn_nr_149_0 ^ 
0; 



wire syn_nr_150_0; 
assign syn_nr_150_0 = 
        y_nr_in[41] ^ 
        y_nr_in[53] ^ 
        y_nr_in[190] ^ 
0; 



assign syn_nr[150] = 
syn_nr_150_0 ^ 
0; 



wire syn_nr_151_0; 
assign syn_nr_151_0 = 
        y_nr_in[42] ^ 
        y_nr_in[54] ^ 
        y_nr_in[191] ^ 
0; 



assign syn_nr[151] = 
syn_nr_151_0 ^ 
0; 



wire syn_nr_152_0; 
assign syn_nr_152_0 = 
        y_nr_in[7] ^ 
        y_nr_in[22] ^ 
        y_nr_in[46] ^ 
        y_nr_in[192] ^ 
0; 



assign syn_nr[152] = 
syn_nr_152_0 ^ 
0; 



wire syn_nr_153_0; 
assign syn_nr_153_0 = 
        y_nr_in[4] ^ 
        y_nr_in[23] ^ 
        y_nr_in[47] ^ 
        y_nr_in[193] ^ 
0; 



assign syn_nr[153] = 
syn_nr_153_0 ^ 
0; 



wire syn_nr_154_0; 
assign syn_nr_154_0 = 
        y_nr_in[5] ^ 
        y_nr_in[20] ^ 
        y_nr_in[44] ^ 
        y_nr_in[194] ^ 
0; 



assign syn_nr[154] = 
syn_nr_154_0 ^ 
0; 



wire syn_nr_155_0; 
assign syn_nr_155_0 = 
        y_nr_in[6] ^ 
        y_nr_in[21] ^ 
        y_nr_in[45] ^ 
        y_nr_in[195] ^ 
0; 



assign syn_nr[155] = 
syn_nr_155_0 ^ 
0; 



wire syn_nr_156_0; 
assign syn_nr_156_0 = 
        y_nr_in[3] ^ 
        y_nr_in[28] ^ 
        y_nr_in[50] ^ 
        y_nr_in[196] ^ 
0; 



assign syn_nr[156] = 
syn_nr_156_0 ^ 
0; 



wire syn_nr_157_0; 
assign syn_nr_157_0 = 
        y_nr_in[0] ^ 
        y_nr_in[29] ^ 
        y_nr_in[51] ^ 
        y_nr_in[197] ^ 
0; 



assign syn_nr[157] = 
syn_nr_157_0 ^ 
0; 



wire syn_nr_158_0; 
assign syn_nr_158_0 = 
        y_nr_in[1] ^ 
        y_nr_in[30] ^ 
        y_nr_in[48] ^ 
        y_nr_in[198] ^ 
0; 



assign syn_nr[158] = 
syn_nr_158_0 ^ 
0; 



wire syn_nr_159_0; 
assign syn_nr_159_0 = 
        y_nr_in[2] ^ 
        y_nr_in[31] ^ 
        y_nr_in[49] ^ 
        y_nr_in[199] ^ 
0; 



assign syn_nr[159] = 
syn_nr_159_0 ^ 
0; 



wire syn_nr_160_0; 
assign syn_nr_160_0 = 
        y_nr_in[8] ^ 
        y_nr_in[43] ^ 
        y_nr_in[52] ^ 
        y_nr_in[200] ^ 
0; 



assign syn_nr[160] = 
syn_nr_160_0 ^ 
0; 



wire syn_nr_161_0; 
assign syn_nr_161_0 = 
        y_nr_in[9] ^ 
        y_nr_in[40] ^ 
        y_nr_in[53] ^ 
        y_nr_in[201] ^ 
0; 



assign syn_nr[161] = 
syn_nr_161_0 ^ 
0; 



wire syn_nr_162_0; 
assign syn_nr_162_0 = 
        y_nr_in[10] ^ 
        y_nr_in[41] ^ 
        y_nr_in[54] ^ 
        y_nr_in[202] ^ 
0; 



assign syn_nr[162] = 
syn_nr_162_0 ^ 
0; 



wire syn_nr_163_0; 
assign syn_nr_163_0 = 
        y_nr_in[11] ^ 
        y_nr_in[42] ^ 
        y_nr_in[55] ^ 
        y_nr_in[203] ^ 
0; 



assign syn_nr[163] = 
syn_nr_163_0 ^ 
0; 



wire syn_nr_164_0; 
assign syn_nr_164_0 = 
        y_nr_in[5] ^ 
        y_nr_in[21] ^ 
        y_nr_in[46] ^ 
        y_nr_in[204] ^ 
0; 



assign syn_nr[164] = 
syn_nr_164_0 ^ 
0; 



wire syn_nr_165_0; 
assign syn_nr_165_0 = 
        y_nr_in[6] ^ 
        y_nr_in[22] ^ 
        y_nr_in[47] ^ 
        y_nr_in[205] ^ 
0; 



assign syn_nr[165] = 
syn_nr_165_0 ^ 
0; 



wire syn_nr_166_0; 
assign syn_nr_166_0 = 
        y_nr_in[7] ^ 
        y_nr_in[23] ^ 
        y_nr_in[44] ^ 
        y_nr_in[206] ^ 
0; 



assign syn_nr[166] = 
syn_nr_166_0 ^ 
0; 



wire syn_nr_167_0; 
assign syn_nr_167_0 = 
        y_nr_in[4] ^ 
        y_nr_in[20] ^ 
        y_nr_in[45] ^ 
        y_nr_in[207] ^ 
0; 



assign syn_nr[167] = 
syn_nr_167_0 ^ 
0; 



