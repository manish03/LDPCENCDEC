/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

// This include is relative to $CARAVEL_PATH (see Makefile)
#include <defs.h>
#include <stub.c>
//#include <stdlib.h>
//#include <stdio.h>
//#include <math.h>

#define reg_mprj_slave (*(volatile uint32_t*)0x30000000)
          #define  LDPC_ENC_MSG_IN_0 (*(volatile uint32_t  *) 0x30010000 )
          #define  LDPC_ENC_MSG_IN_1 (*(volatile uint32_t  *) 0x30010004 )
          #define  LDPC_ENC_MSG_IN_2 (*(volatile uint32_t  *) 0x30010008 )
          #define  LDPC_ENC_MSG_IN_3 (*(volatile uint32_t  *) 0x3001000c )
          #define  LDPC_ENC_MSG_IN_4 (*(volatile uint32_t  *) 0x30010010 )
          #define  LDPC_ENC_MSG_IN_5 (*(volatile uint32_t  *) 0x30010014 )
          #define  LDPC_ENC_MSG_IN_6 (*(volatile uint32_t  *) 0x30010018 )
          #define  LDPC_ENC_MSG_IN_7 (*(volatile uint32_t  *) 0x3001001c )
          #define  LDPC_ENC_MSG_IN_8 (*(volatile uint32_t  *) 0x30010020 )
          #define  LDPC_ENC_MSG_IN_9 (*(volatile uint32_t  *) 0x30010024 )
          #define  LDPC_ENC_MSG_IN_10 (*(volatile uint32_t  *) 0x30010028 )
          #define  LDPC_ENC_MSG_IN_11 (*(volatile uint32_t  *) 0x3001002c )
          #define  LDPC_ENC_MSG_IN_12 (*(volatile uint32_t  *) 0x30010030 )
          #define  LDPC_ENC_MSG_IN_13 (*(volatile uint32_t  *) 0x30010034 )
          #define  LDPC_ENC_MSG_IN_14 (*(volatile uint32_t  *) 0x30010038 )
          #define  LDPC_ENC_MSG_IN_15 (*(volatile uint32_t  *) 0x3001003c )
          #define  LDPC_ENC_MSG_IN_16 (*(volatile uint32_t  *) 0x30010040 )
          #define  LDPC_ENC_MSG_IN_17 (*(volatile uint32_t  *) 0x30010044 )
          #define  LDPC_ENC_MSG_IN_18 (*(volatile uint32_t  *) 0x30010048 )
          #define  LDPC_ENC_MSG_IN_19 (*(volatile uint32_t  *) 0x3001004c )
          #define  LDPC_ENC_MSG_IN_20 (*(volatile uint32_t  *) 0x30010050 )
          #define  LDPC_ENC_MSG_IN_21 (*(volatile uint32_t  *) 0x30010054 )
          #define  LDPC_ENC_MSG_IN_22 (*(volatile uint32_t  *) 0x30010058 )
          #define  LDPC_ENC_MSG_IN_23 (*(volatile uint32_t  *) 0x3001005c )
          #define  LDPC_ENC_MSG_IN_24 (*(volatile uint32_t  *) 0x30010060 )
          #define  LDPC_ENC_MSG_IN_25 (*(volatile uint32_t  *) 0x30010064 )
          #define  LDPC_ENC_MSG_IN_26 (*(volatile uint32_t  *) 0x30010068 )
          #define  LDPC_ENC_MSG_IN_27 (*(volatile uint32_t  *) 0x3001006c )
          #define  LDPC_ENC_MSG_IN_28 (*(volatile uint32_t  *) 0x30010070 )
          #define  LDPC_ENC_MSG_IN_29 (*(volatile uint32_t  *) 0x30010074 )
          #define  LDPC_ENC_MSG_IN_30 (*(volatile uint32_t  *) 0x30010078 )
          #define  LDPC_ENC_MSG_IN_31 (*(volatile uint32_t  *) 0x3001007c )
          #define  LDPC_ENC_MSG_IN_32 (*(volatile uint32_t  *) 0x30010080 )
          #define  LDPC_ENC_MSG_IN_33 (*(volatile uint32_t  *) 0x30010084 )
          #define  LDPC_ENC_MSG_IN_34 (*(volatile uint32_t  *) 0x30010088 )
          #define  LDPC_ENC_MSG_IN_35 (*(volatile uint32_t  *) 0x3001008c )
          #define  LDPC_ENC_MSG_IN_36 (*(volatile uint32_t  *) 0x30010090 )
          #define  LDPC_ENC_MSG_IN_37 (*(volatile uint32_t  *) 0x30010094 )
          #define  LDPC_ENC_MSG_IN_38 (*(volatile uint32_t  *) 0x30010098 )
          #define  LDPC_ENC_MSG_IN_39 (*(volatile uint32_t  *) 0x3001009c )
          #define  LDPC_ENC_CODEWRD_0 (*(volatile uint32_t  *) 0x300100a0 )
          #define  LDPC_ENC_CODEWRD_1 (*(volatile uint32_t  *) 0x300100a4 )
          #define  LDPC_ENC_CODEWRD_2 (*(volatile uint32_t  *) 0x300100a8 )
          #define  LDPC_ENC_CODEWRD_3 (*(volatile uint32_t  *) 0x300100ac )
          #define  LDPC_ENC_CODEWRD_4 (*(volatile uint32_t  *) 0x300100b0 )
          #define  LDPC_ENC_CODEWRD_5 (*(volatile uint32_t  *) 0x300100b4 )
          #define  LDPC_ENC_CODEWRD_6 (*(volatile uint32_t  *) 0x300100b8 )
          #define  LDPC_ENC_CODEWRD_7 (*(volatile uint32_t  *) 0x300100bc )
          #define  LDPC_ENC_CODEWRD_8 (*(volatile uint32_t  *) 0x300100c0 )
          #define  LDPC_ENC_CODEWRD_9 (*(volatile uint32_t  *) 0x300100c4 )
          #define  LDPC_ENC_CODEWRD_10 (*(volatile uint32_t  *) 0x300100c8 )
          #define  LDPC_ENC_CODEWRD_11 (*(volatile uint32_t  *) 0x300100cc )
          #define  LDPC_ENC_CODEWRD_12 (*(volatile uint32_t  *) 0x300100d0 )
          #define  LDPC_ENC_CODEWRD_13 (*(volatile uint32_t  *) 0x300100d4 )
          #define  LDPC_ENC_CODEWRD_14 (*(volatile uint32_t  *) 0x300100d8 )
          #define  LDPC_ENC_CODEWRD_15 (*(volatile uint32_t  *) 0x300100dc )
          #define  LDPC_ENC_CODEWRD_16 (*(volatile uint32_t  *) 0x300100e0 )
          #define  LDPC_ENC_CODEWRD_17 (*(volatile uint32_t  *) 0x300100e4 )
          #define  LDPC_ENC_CODEWRD_18 (*(volatile uint32_t  *) 0x300100e8 )
          #define  LDPC_ENC_CODEWRD_19 (*(volatile uint32_t  *) 0x300100ec )
          #define  LDPC_ENC_CODEWRD_20 (*(volatile uint32_t  *) 0x300100f0 )
          #define  LDPC_ENC_CODEWRD_21 (*(volatile uint32_t  *) 0x300100f4 )
          #define  LDPC_ENC_CODEWRD_22 (*(volatile uint32_t  *) 0x300100f8 )
          #define  LDPC_ENC_CODEWRD_23 (*(volatile uint32_t  *) 0x300100fc )
          #define  LDPC_ENC_CODEWRD_24 (*(volatile uint32_t  *) 0x30010100 )
          #define  LDPC_ENC_CODEWRD_25 (*(volatile uint32_t  *) 0x30010104 )
          #define  LDPC_ENC_CODEWRD_26 (*(volatile uint32_t  *) 0x30010108 )
          #define  LDPC_ENC_CODEWRD_27 (*(volatile uint32_t  *) 0x3001010c )
          #define  LDPC_ENC_CODEWRD_28 (*(volatile uint32_t  *) 0x30010110 )
          #define  LDPC_ENC_CODEWRD_29 (*(volatile uint32_t  *) 0x30010114 )
          #define  LDPC_ENC_CODEWRD_30 (*(volatile uint32_t  *) 0x30010118 )
          #define  LDPC_ENC_CODEWRD_31 (*(volatile uint32_t  *) 0x3001011c )
          #define  LDPC_ENC_CODEWRD_32 (*(volatile uint32_t  *) 0x30010120 )
          #define  LDPC_ENC_CODEWRD_33 (*(volatile uint32_t  *) 0x30010124 )
          #define  LDPC_ENC_CODEWRD_34 (*(volatile uint32_t  *) 0x30010128 )
          #define  LDPC_ENC_CODEWRD_35 (*(volatile uint32_t  *) 0x3001012c )
          #define  LDPC_ENC_CODEWRD_36 (*(volatile uint32_t  *) 0x30010130 )
          #define  LDPC_ENC_CODEWRD_37 (*(volatile uint32_t  *) 0x30010134 )
          #define  LDPC_ENC_CODEWRD_38 (*(volatile uint32_t  *) 0x30010138 )
          #define  LDPC_ENC_CODEWRD_39 (*(volatile uint32_t  *) 0x3001013c )
          #define  LDPC_ENC_CODEWRD_40 (*(volatile uint32_t  *) 0x30010140 )
          #define  LDPC_ENC_CODEWRD_41 (*(volatile uint32_t  *) 0x30010144 )
          #define  LDPC_ENC_CODEWRD_42 (*(volatile uint32_t  *) 0x30010148 )
          #define  LDPC_ENC_CODEWRD_43 (*(volatile uint32_t  *) 0x3001014c )
          #define  LDPC_ENC_CODEWRD_44 (*(volatile uint32_t  *) 0x30010150 )
          #define  LDPC_ENC_CODEWRD_45 (*(volatile uint32_t  *) 0x30010154 )
          #define  LDPC_ENC_CODEWRD_46 (*(volatile uint32_t  *) 0x30010158 )
          #define  LDPC_ENC_CODEWRD_47 (*(volatile uint32_t  *) 0x3001015c )
          #define  LDPC_ENC_CODEWRD_48 (*(volatile uint32_t  *) 0x30010160 )
          #define  LDPC_ENC_CODEWRD_49 (*(volatile uint32_t  *) 0x30010164 )
          #define  LDPC_ENC_CODEWRD_50 (*(volatile uint32_t  *) 0x30010168 )
          #define  LDPC_ENC_CODEWRD_51 (*(volatile uint32_t  *) 0x3001016c )
          #define  LDPC_ENC_CODEWRD_52 (*(volatile uint32_t  *) 0x30010170 )
          #define  LDPC_ENC_CODEWRD_53 (*(volatile uint32_t  *) 0x30010174 )
          #define  LDPC_ENC_CODEWRD_54 (*(volatile uint32_t  *) 0x30010178 )
          #define  LDPC_ENC_CODEWRD_55 (*(volatile uint32_t  *) 0x3001017c )
          #define  LDPC_ENC_CODEWRD_56 (*(volatile uint32_t  *) 0x30010180 )
          #define  LDPC_ENC_CODEWRD_57 (*(volatile uint32_t  *) 0x30010184 )
          #define  LDPC_ENC_CODEWRD_58 (*(volatile uint32_t  *) 0x30010188 )
          #define  LDPC_ENC_CODEWRD_59 (*(volatile uint32_t  *) 0x3001018c )
          #define  LDPC_ENC_CODEWRD_60 (*(volatile uint32_t  *) 0x30010190 )
          #define  LDPC_ENC_CODEWRD_61 (*(volatile uint32_t  *) 0x30010194 )
          #define  LDPC_ENC_CODEWRD_62 (*(volatile uint32_t  *) 0x30010198 )
          #define  LDPC_ENC_CODEWRD_63 (*(volatile uint32_t  *) 0x3001019c )
          #define  LDPC_ENC_CODEWRD_64 (*(volatile uint32_t  *) 0x300101a0 )
          #define  LDPC_ENC_CODEWRD_65 (*(volatile uint32_t  *) 0x300101a4 )
          #define  LDPC_ENC_CODEWRD_66 (*(volatile uint32_t  *) 0x300101a8 )
          #define  LDPC_ENC_CODEWRD_67 (*(volatile uint32_t  *) 0x300101ac )
          #define  LDPC_ENC_CODEWRD_68 (*(volatile uint32_t  *) 0x300101b0 )
          #define  LDPC_ENC_CODEWRD_69 (*(volatile uint32_t  *) 0x300101b4 )
          #define  LDPC_ENC_CODEWRD_70 (*(volatile uint32_t  *) 0x300101b8 )
          #define  LDPC_ENC_CODEWRD_71 (*(volatile uint32_t  *) 0x300101bc )
          #define  LDPC_ENC_CODEWRD_72 (*(volatile uint32_t  *) 0x300101c0 )
          #define  LDPC_ENC_CODEWRD_73 (*(volatile uint32_t  *) 0x300101c4 )
          #define  LDPC_ENC_CODEWRD_74 (*(volatile uint32_t  *) 0x300101c8 )
          #define  LDPC_ENC_CODEWRD_75 (*(volatile uint32_t  *) 0x300101cc )
          #define  LDPC_ENC_CODEWRD_76 (*(volatile uint32_t  *) 0x300101d0 )
          #define  LDPC_ENC_CODEWRD_77 (*(volatile uint32_t  *) 0x300101d4 )
          #define  LDPC_ENC_CODEWRD_78 (*(volatile uint32_t  *) 0x300101d8 )
          #define  LDPC_ENC_CODEWRD_79 (*(volatile uint32_t  *) 0x300101dc )
          #define  LDPC_ENC_CODEWRD_80 (*(volatile uint32_t  *) 0x300101e0 )
          #define  LDPC_ENC_CODEWRD_81 (*(volatile uint32_t  *) 0x300101e4 )
          #define  LDPC_ENC_CODEWRD_82 (*(volatile uint32_t  *) 0x300101e8 )
          #define  LDPC_ENC_CODEWRD_83 (*(volatile uint32_t  *) 0x300101ec )
          #define  LDPC_ENC_CODEWRD_84 (*(volatile uint32_t  *) 0x300101f0 )
          #define  LDPC_ENC_CODEWRD_85 (*(volatile uint32_t  *) 0x300101f4 )
          #define  LDPC_ENC_CODEWRD_86 (*(volatile uint32_t  *) 0x300101f8 )
          #define  LDPC_ENC_CODEWRD_87 (*(volatile uint32_t  *) 0x300101fc )
          #define  LDPC_ENC_CODEWRD_88 (*(volatile uint32_t  *) 0x30010200 )
          #define  LDPC_ENC_CODEWRD_89 (*(volatile uint32_t  *) 0x30010204 )
          #define  LDPC_ENC_CODEWRD_90 (*(volatile uint32_t  *) 0x30010208 )
          #define  LDPC_ENC_CODEWRD_91 (*(volatile uint32_t  *) 0x3001020c )
          #define  LDPC_ENC_CODEWRD_92 (*(volatile uint32_t  *) 0x30010210 )
          #define  LDPC_ENC_CODEWRD_93 (*(volatile uint32_t  *) 0x30010214 )
          #define  LDPC_ENC_CODEWRD_94 (*(volatile uint32_t  *) 0x30010218 )
          #define  LDPC_ENC_CODEWRD_95 (*(volatile uint32_t  *) 0x3001021c )
          #define  LDPC_ENC_CODEWRD_96 (*(volatile uint32_t  *) 0x30010220 )
          #define  LDPC_ENC_CODEWRD_97 (*(volatile uint32_t  *) 0x30010224 )
          #define  LDPC_ENC_CODEWRD_98 (*(volatile uint32_t  *) 0x30010228 )
          #define  LDPC_ENC_CODEWRD_99 (*(volatile uint32_t  *) 0x3001022c )
          #define  LDPC_ENC_CODEWRD_100 (*(volatile uint32_t  *) 0x30010230 )
          #define  LDPC_ENC_CODEWRD_101 (*(volatile uint32_t  *) 0x30010234 )
          #define  LDPC_ENC_CODEWRD_102 (*(volatile uint32_t  *) 0x30010238 )
          #define  LDPC_ENC_CODEWRD_103 (*(volatile uint32_t  *) 0x3001023c )
          #define  LDPC_ENC_CODEWRD_104 (*(volatile uint32_t  *) 0x30010240 )
          #define  LDPC_ENC_CODEWRD_105 (*(volatile uint32_t  *) 0x30010244 )
          #define  LDPC_ENC_CODEWRD_106 (*(volatile uint32_t  *) 0x30010248 )
          #define  LDPC_ENC_CODEWRD_107 (*(volatile uint32_t  *) 0x3001024c )
          #define  LDPC_ENC_CODEWRD_108 (*(volatile uint32_t  *) 0x30010250 )
          #define  LDPC_ENC_CODEWRD_109 (*(volatile uint32_t  *) 0x30010254 )
          #define  LDPC_ENC_CODEWRD_110 (*(volatile uint32_t  *) 0x30010258 )
          #define  LDPC_ENC_CODEWRD_111 (*(volatile uint32_t  *) 0x3001025c )
          #define  LDPC_ENC_CODEWRD_112 (*(volatile uint32_t  *) 0x30010260 )
          #define  LDPC_ENC_CODEWRD_113 (*(volatile uint32_t  *) 0x30010264 )
          #define  LDPC_ENC_CODEWRD_114 (*(volatile uint32_t  *) 0x30010268 )
          #define  LDPC_ENC_CODEWRD_115 (*(volatile uint32_t  *) 0x3001026c )
          #define  LDPC_ENC_CODEWRD_116 (*(volatile uint32_t  *) 0x30010270 )
          #define  LDPC_ENC_CODEWRD_117 (*(volatile uint32_t  *) 0x30010274 )
          #define  LDPC_ENC_CODEWRD_118 (*(volatile uint32_t  *) 0x30010278 )
          #define  LDPC_ENC_CODEWRD_119 (*(volatile uint32_t  *) 0x3001027c )
          #define  LDPC_ENC_CODEWRD_120 (*(volatile uint32_t  *) 0x30010280 )
          #define  LDPC_ENC_CODEWRD_121 (*(volatile uint32_t  *) 0x30010284 )
          #define  LDPC_ENC_CODEWRD_122 (*(volatile uint32_t  *) 0x30010288 )
          #define  LDPC_ENC_CODEWRD_123 (*(volatile uint32_t  *) 0x3001028c )
          #define  LDPC_ENC_CODEWRD_124 (*(volatile uint32_t  *) 0x30010290 )
          #define  LDPC_ENC_CODEWRD_125 (*(volatile uint32_t  *) 0x30010294 )
          #define  LDPC_ENC_CODEWRD_126 (*(volatile uint32_t  *) 0x30010298 )
          #define  LDPC_ENC_CODEWRD_127 (*(volatile uint32_t  *) 0x3001029c )
          #define  LDPC_ENC_CODEWRD_128 (*(volatile uint32_t  *) 0x300102a0 )
          #define  LDPC_ENC_CODEWRD_129 (*(volatile uint32_t  *) 0x300102a4 )
          #define  LDPC_ENC_CODEWRD_130 (*(volatile uint32_t  *) 0x300102a8 )
          #define  LDPC_ENC_CODEWRD_131 (*(volatile uint32_t  *) 0x300102ac )
          #define  LDPC_ENC_CODEWRD_132 (*(volatile uint32_t  *) 0x300102b0 )
          #define  LDPC_ENC_CODEWRD_133 (*(volatile uint32_t  *) 0x300102b4 )
          #define  LDPC_ENC_CODEWRD_134 (*(volatile uint32_t  *) 0x300102b8 )
          #define  LDPC_ENC_CODEWRD_135 (*(volatile uint32_t  *) 0x300102bc )
          #define  LDPC_ENC_CODEWRD_136 (*(volatile uint32_t  *) 0x300102c0 )
          #define  LDPC_ENC_CODEWRD_137 (*(volatile uint32_t  *) 0x300102c4 )
          #define  LDPC_ENC_CODEWRD_138 (*(volatile uint32_t  *) 0x300102c8 )
          #define  LDPC_ENC_CODEWRD_139 (*(volatile uint32_t  *) 0x300102cc )
          #define  LDPC_ENC_CODEWRD_140 (*(volatile uint32_t  *) 0x300102d0 )
          #define  LDPC_ENC_CODEWRD_141 (*(volatile uint32_t  *) 0x300102d4 )
          #define  LDPC_ENC_CODEWRD_142 (*(volatile uint32_t  *) 0x300102d8 )
          #define  LDPC_ENC_CODEWRD_143 (*(volatile uint32_t  *) 0x300102dc )
          #define  LDPC_ENC_CODEWRD_144 (*(volatile uint32_t  *) 0x300102e0 )
          #define  LDPC_ENC_CODEWRD_145 (*(volatile uint32_t  *) 0x300102e4 )
          #define  LDPC_ENC_CODEWRD_146 (*(volatile uint32_t  *) 0x300102e8 )
          #define  LDPC_ENC_CODEWRD_147 (*(volatile uint32_t  *) 0x300102ec )
          #define  LDPC_ENC_CODEWRD_148 (*(volatile uint32_t  *) 0x300102f0 )
          #define  LDPC_ENC_CODEWRD_149 (*(volatile uint32_t  *) 0x300102f4 )
          #define  LDPC_ENC_CODEWRD_150 (*(volatile uint32_t  *) 0x300102f8 )
          #define  LDPC_ENC_CODEWRD_151 (*(volatile uint32_t  *) 0x300102fc )
          #define  LDPC_ENC_CODEWRD_152 (*(volatile uint32_t  *) 0x30010300 )
          #define  LDPC_ENC_CODEWRD_153 (*(volatile uint32_t  *) 0x30010304 )
          #define  LDPC_ENC_CODEWRD_154 (*(volatile uint32_t  *) 0x30010308 )
          #define  LDPC_ENC_CODEWRD_155 (*(volatile uint32_t  *) 0x3001030c )
          #define  LDPC_ENC_CODEWRD_156 (*(volatile uint32_t  *) 0x30010310 )
          #define  LDPC_ENC_CODEWRD_157 (*(volatile uint32_t  *) 0x30010314 )
          #define  LDPC_ENC_CODEWRD_158 (*(volatile uint32_t  *) 0x30010318 )
          #define  LDPC_ENC_CODEWRD_159 (*(volatile uint32_t  *) 0x3001031c )
          #define  LDPC_ENC_CODEWRD_160 (*(volatile uint32_t  *) 0x30010320 )
          #define  LDPC_ENC_CODEWRD_161 (*(volatile uint32_t  *) 0x30010324 )
          #define  LDPC_ENC_CODEWRD_162 (*(volatile uint32_t  *) 0x30010328 )
          #define  LDPC_ENC_CODEWRD_163 (*(volatile uint32_t  *) 0x3001032c )
          #define  LDPC_ENC_CODEWRD_164 (*(volatile uint32_t  *) 0x30010330 )
          #define  LDPC_ENC_CODEWRD_165 (*(volatile uint32_t  *) 0x30010334 )
          #define  LDPC_ENC_CODEWRD_166 (*(volatile uint32_t  *) 0x30010338 )
          #define  LDPC_ENC_CODEWRD_167 (*(volatile uint32_t  *) 0x3001033c )
          #define  LDPC_ENC_CODEWRD_168 (*(volatile uint32_t  *) 0x30010340 )
          #define  LDPC_ENC_CODEWRD_169 (*(volatile uint32_t  *) 0x30010344 )
          #define  LDPC_ENC_CODEWRD_170 (*(volatile uint32_t  *) 0x30010348 )
          #define  LDPC_ENC_CODEWRD_171 (*(volatile uint32_t  *) 0x3001034c )
          #define  LDPC_ENC_CODEWRD_172 (*(volatile uint32_t  *) 0x30010350 )
          #define  LDPC_ENC_CODEWRD_173 (*(volatile uint32_t  *) 0x30010354 )
          #define  LDPC_ENC_CODEWRD_174 (*(volatile uint32_t  *) 0x30010358 )
          #define  LDPC_ENC_CODEWRD_175 (*(volatile uint32_t  *) 0x3001035c )
          #define  LDPC_ENC_CODEWRD_176 (*(volatile uint32_t  *) 0x30010360 )
          #define  LDPC_ENC_CODEWRD_177 (*(volatile uint32_t  *) 0x30010364 )
          #define  LDPC_ENC_CODEWRD_178 (*(volatile uint32_t  *) 0x30010368 )
          #define  LDPC_ENC_CODEWRD_179 (*(volatile uint32_t  *) 0x3001036c )
          #define  LDPC_ENC_CODEWRD_180 (*(volatile uint32_t  *) 0x30010370 )
          #define  LDPC_ENC_CODEWRD_181 (*(volatile uint32_t  *) 0x30010374 )
          #define  LDPC_ENC_CODEWRD_182 (*(volatile uint32_t  *) 0x30010378 )
          #define  LDPC_ENC_CODEWRD_183 (*(volatile uint32_t  *) 0x3001037c )
          #define  LDPC_ENC_CODEWRD_184 (*(volatile uint32_t  *) 0x30010380 )
          #define  LDPC_ENC_CODEWRD_185 (*(volatile uint32_t  *) 0x30010384 )
          #define  LDPC_ENC_CODEWRD_186 (*(volatile uint32_t  *) 0x30010388 )
          #define  LDPC_ENC_CODEWRD_187 (*(volatile uint32_t  *) 0x3001038c )
          #define  LDPC_ENC_CODEWRD_188 (*(volatile uint32_t  *) 0x30010390 )
          #define  LDPC_ENC_CODEWRD_189 (*(volatile uint32_t  *) 0x30010394 )
          #define  LDPC_ENC_CODEWRD_190 (*(volatile uint32_t  *) 0x30010398 )
          #define  LDPC_ENC_CODEWRD_191 (*(volatile uint32_t  *) 0x3001039c )
          #define  LDPC_ENC_CODEWRD_192 (*(volatile uint32_t  *) 0x300103a0 )
          #define  LDPC_ENC_CODEWRD_193 (*(volatile uint32_t  *) 0x300103a4 )
          #define  LDPC_ENC_CODEWRD_194 (*(volatile uint32_t  *) 0x300103a8 )
          #define  LDPC_ENC_CODEWRD_195 (*(volatile uint32_t  *) 0x300103ac )
          #define  LDPC_ENC_CODEWRD_196 (*(volatile uint32_t  *) 0x300103b0 )
          #define  LDPC_ENC_CODEWRD_197 (*(volatile uint32_t  *) 0x300103b4 )
          #define  LDPC_ENC_CODEWRD_198 (*(volatile uint32_t  *) 0x300103b8 )
          #define  LDPC_ENC_CODEWRD_199 (*(volatile uint32_t  *) 0x300103bc )
          #define  LDPC_ENC_CODEWRD_200 (*(volatile uint32_t  *) 0x300103c0 )
          #define  LDPC_ENC_CODEWRD_201 (*(volatile uint32_t  *) 0x300103c4 )
          #define  LDPC_ENC_CODEWRD_202 (*(volatile uint32_t  *) 0x300103c8 )
          #define  LDPC_ENC_CODEWRD_203 (*(volatile uint32_t  *) 0x300103cc )
          #define  LDPC_ENC_CODEWRD_204 (*(volatile uint32_t  *) 0x300103d0 )
          #define  LDPC_ENC_CODEWRD_205 (*(volatile uint32_t  *) 0x300103d4 )
          #define  LDPC_ENC_CODEWRD_206 (*(volatile uint32_t  *) 0x300103d8 )
          #define  LDPC_ENC_CODEWRD_207 (*(volatile uint32_t  *) 0x300103dc )
          #define  LDPC_ENC_CODEWRD_VLD (*(volatile uint32_t  *) 0x300103e0 )
          #define  LDPC_DEC_CODEWRD_0 (*(volatile uint32_t  *) 0x300103e4 )
          #define  LDPC_DEC_CODEWRD_1 (*(volatile uint32_t  *) 0x300103e8 )
          #define  LDPC_DEC_CODEWRD_2 (*(volatile uint32_t  *) 0x300103ec )
          #define  LDPC_DEC_CODEWRD_3 (*(volatile uint32_t  *) 0x300103f0 )
          #define  LDPC_DEC_CODEWRD_4 (*(volatile uint32_t  *) 0x300103f4 )
          #define  LDPC_DEC_CODEWRD_5 (*(volatile uint32_t  *) 0x300103f8 )
          #define  LDPC_DEC_CODEWRD_6 (*(volatile uint32_t  *) 0x300103fc )
          #define  LDPC_DEC_CODEWRD_7 (*(volatile uint32_t  *) 0x30010400 )
          #define  LDPC_DEC_CODEWRD_8 (*(volatile uint32_t  *) 0x30010404 )
          #define  LDPC_DEC_CODEWRD_9 (*(volatile uint32_t  *) 0x30010408 )
          #define  LDPC_DEC_CODEWRD_10 (*(volatile uint32_t  *) 0x3001040c )
          #define  LDPC_DEC_CODEWRD_11 (*(volatile uint32_t  *) 0x30010410 )
          #define  LDPC_DEC_CODEWRD_12 (*(volatile uint32_t  *) 0x30010414 )
          #define  LDPC_DEC_CODEWRD_13 (*(volatile uint32_t  *) 0x30010418 )
          #define  LDPC_DEC_CODEWRD_14 (*(volatile uint32_t  *) 0x3001041c )
          #define  LDPC_DEC_CODEWRD_15 (*(volatile uint32_t  *) 0x30010420 )
          #define  LDPC_DEC_CODEWRD_16 (*(volatile uint32_t  *) 0x30010424 )
          #define  LDPC_DEC_CODEWRD_17 (*(volatile uint32_t  *) 0x30010428 )
          #define  LDPC_DEC_CODEWRD_18 (*(volatile uint32_t  *) 0x3001042c )
          #define  LDPC_DEC_CODEWRD_19 (*(volatile uint32_t  *) 0x30010430 )
          #define  LDPC_DEC_CODEWRD_20 (*(volatile uint32_t  *) 0x30010434 )
          #define  LDPC_DEC_CODEWRD_21 (*(volatile uint32_t  *) 0x30010438 )
          #define  LDPC_DEC_CODEWRD_22 (*(volatile uint32_t  *) 0x3001043c )
          #define  LDPC_DEC_CODEWRD_23 (*(volatile uint32_t  *) 0x30010440 )
          #define  LDPC_DEC_CODEWRD_24 (*(volatile uint32_t  *) 0x30010444 )
          #define  LDPC_DEC_CODEWRD_25 (*(volatile uint32_t  *) 0x30010448 )
          #define  LDPC_DEC_CODEWRD_26 (*(volatile uint32_t  *) 0x3001044c )
          #define  LDPC_DEC_CODEWRD_27 (*(volatile uint32_t  *) 0x30010450 )
          #define  LDPC_DEC_CODEWRD_28 (*(volatile uint32_t  *) 0x30010454 )
          #define  LDPC_DEC_CODEWRD_29 (*(volatile uint32_t  *) 0x30010458 )
          #define  LDPC_DEC_CODEWRD_30 (*(volatile uint32_t  *) 0x3001045c )
          #define  LDPC_DEC_CODEWRD_31 (*(volatile uint32_t  *) 0x30010460 )
          #define  LDPC_DEC_CODEWRD_32 (*(volatile uint32_t  *) 0x30010464 )
          #define  LDPC_DEC_CODEWRD_33 (*(volatile uint32_t  *) 0x30010468 )
          #define  LDPC_DEC_CODEWRD_34 (*(volatile uint32_t  *) 0x3001046c )
          #define  LDPC_DEC_CODEWRD_35 (*(volatile uint32_t  *) 0x30010470 )
          #define  LDPC_DEC_CODEWRD_36 (*(volatile uint32_t  *) 0x30010474 )
          #define  LDPC_DEC_CODEWRD_37 (*(volatile uint32_t  *) 0x30010478 )
          #define  LDPC_DEC_CODEWRD_38 (*(volatile uint32_t  *) 0x3001047c )
          #define  LDPC_DEC_CODEWRD_39 (*(volatile uint32_t  *) 0x30010480 )
          #define  LDPC_DEC_CODEWRD_40 (*(volatile uint32_t  *) 0x30010484 )
          #define  LDPC_DEC_CODEWRD_41 (*(volatile uint32_t  *) 0x30010488 )
          #define  LDPC_DEC_CODEWRD_42 (*(volatile uint32_t  *) 0x3001048c )
          #define  LDPC_DEC_CODEWRD_43 (*(volatile uint32_t  *) 0x30010490 )
          #define  LDPC_DEC_CODEWRD_44 (*(volatile uint32_t  *) 0x30010494 )
          #define  LDPC_DEC_CODEWRD_45 (*(volatile uint32_t  *) 0x30010498 )
          #define  LDPC_DEC_CODEWRD_46 (*(volatile uint32_t  *) 0x3001049c )
          #define  LDPC_DEC_CODEWRD_47 (*(volatile uint32_t  *) 0x300104a0 )
          #define  LDPC_DEC_CODEWRD_48 (*(volatile uint32_t  *) 0x300104a4 )
          #define  LDPC_DEC_CODEWRD_49 (*(volatile uint32_t  *) 0x300104a8 )
          #define  LDPC_DEC_CODEWRD_50 (*(volatile uint32_t  *) 0x300104ac )
          #define  LDPC_DEC_CODEWRD_51 (*(volatile uint32_t  *) 0x300104b0 )
          #define  LDPC_DEC_CODEWRD_52 (*(volatile uint32_t  *) 0x300104b4 )
          #define  LDPC_DEC_CODEWRD_53 (*(volatile uint32_t  *) 0x300104b8 )
          #define  LDPC_DEC_CODEWRD_54 (*(volatile uint32_t  *) 0x300104bc )
          #define  LDPC_DEC_CODEWRD_55 (*(volatile uint32_t  *) 0x300104c0 )
          #define  LDPC_DEC_CODEWRD_56 (*(volatile uint32_t  *) 0x300104c4 )
          #define  LDPC_DEC_CODEWRD_57 (*(volatile uint32_t  *) 0x300104c8 )
          #define  LDPC_DEC_CODEWRD_58 (*(volatile uint32_t  *) 0x300104cc )
          #define  LDPC_DEC_CODEWRD_59 (*(volatile uint32_t  *) 0x300104d0 )
          #define  LDPC_DEC_CODEWRD_60 (*(volatile uint32_t  *) 0x300104d4 )
          #define  LDPC_DEC_CODEWRD_61 (*(volatile uint32_t  *) 0x300104d8 )
          #define  LDPC_DEC_CODEWRD_62 (*(volatile uint32_t  *) 0x300104dc )
          #define  LDPC_DEC_CODEWRD_63 (*(volatile uint32_t  *) 0x300104e0 )
          #define  LDPC_DEC_CODEWRD_64 (*(volatile uint32_t  *) 0x300104e4 )
          #define  LDPC_DEC_CODEWRD_65 (*(volatile uint32_t  *) 0x300104e8 )
          #define  LDPC_DEC_CODEWRD_66 (*(volatile uint32_t  *) 0x300104ec )
          #define  LDPC_DEC_CODEWRD_67 (*(volatile uint32_t  *) 0x300104f0 )
          #define  LDPC_DEC_CODEWRD_68 (*(volatile uint32_t  *) 0x300104f4 )
          #define  LDPC_DEC_CODEWRD_69 (*(volatile uint32_t  *) 0x300104f8 )
          #define  LDPC_DEC_CODEWRD_70 (*(volatile uint32_t  *) 0x300104fc )
          #define  LDPC_DEC_CODEWRD_71 (*(volatile uint32_t  *) 0x30010500 )
          #define  LDPC_DEC_CODEWRD_72 (*(volatile uint32_t  *) 0x30010504 )
          #define  LDPC_DEC_CODEWRD_73 (*(volatile uint32_t  *) 0x30010508 )
          #define  LDPC_DEC_CODEWRD_74 (*(volatile uint32_t  *) 0x3001050c )
          #define  LDPC_DEC_CODEWRD_75 (*(volatile uint32_t  *) 0x30010510 )
          #define  LDPC_DEC_CODEWRD_76 (*(volatile uint32_t  *) 0x30010514 )
          #define  LDPC_DEC_CODEWRD_77 (*(volatile uint32_t  *) 0x30010518 )
          #define  LDPC_DEC_CODEWRD_78 (*(volatile uint32_t  *) 0x3001051c )
          #define  LDPC_DEC_CODEWRD_79 (*(volatile uint32_t  *) 0x30010520 )
          #define  LDPC_DEC_CODEWRD_80 (*(volatile uint32_t  *) 0x30010524 )
          #define  LDPC_DEC_CODEWRD_81 (*(volatile uint32_t  *) 0x30010528 )
          #define  LDPC_DEC_CODEWRD_82 (*(volatile uint32_t  *) 0x3001052c )
          #define  LDPC_DEC_CODEWRD_83 (*(volatile uint32_t  *) 0x30010530 )
          #define  LDPC_DEC_CODEWRD_84 (*(volatile uint32_t  *) 0x30010534 )
          #define  LDPC_DEC_CODEWRD_85 (*(volatile uint32_t  *) 0x30010538 )
          #define  LDPC_DEC_CODEWRD_86 (*(volatile uint32_t  *) 0x3001053c )
          #define  LDPC_DEC_CODEWRD_87 (*(volatile uint32_t  *) 0x30010540 )
          #define  LDPC_DEC_CODEWRD_88 (*(volatile uint32_t  *) 0x30010544 )
          #define  LDPC_DEC_CODEWRD_89 (*(volatile uint32_t  *) 0x30010548 )
          #define  LDPC_DEC_CODEWRD_90 (*(volatile uint32_t  *) 0x3001054c )
          #define  LDPC_DEC_CODEWRD_91 (*(volatile uint32_t  *) 0x30010550 )
          #define  LDPC_DEC_CODEWRD_92 (*(volatile uint32_t  *) 0x30010554 )
          #define  LDPC_DEC_CODEWRD_93 (*(volatile uint32_t  *) 0x30010558 )
          #define  LDPC_DEC_CODEWRD_94 (*(volatile uint32_t  *) 0x3001055c )
          #define  LDPC_DEC_CODEWRD_95 (*(volatile uint32_t  *) 0x30010560 )
          #define  LDPC_DEC_CODEWRD_96 (*(volatile uint32_t  *) 0x30010564 )
          #define  LDPC_DEC_CODEWRD_97 (*(volatile uint32_t  *) 0x30010568 )
          #define  LDPC_DEC_CODEWRD_98 (*(volatile uint32_t  *) 0x3001056c )
          #define  LDPC_DEC_CODEWRD_99 (*(volatile uint32_t  *) 0x30010570 )
          #define  LDPC_DEC_CODEWRD_100 (*(volatile uint32_t  *) 0x30010574 )
          #define  LDPC_DEC_CODEWRD_101 (*(volatile uint32_t  *) 0x30010578 )
          #define  LDPC_DEC_CODEWRD_102 (*(volatile uint32_t  *) 0x3001057c )
          #define  LDPC_DEC_CODEWRD_103 (*(volatile uint32_t  *) 0x30010580 )
          #define  LDPC_DEC_CODEWRD_104 (*(volatile uint32_t  *) 0x30010584 )
          #define  LDPC_DEC_CODEWRD_105 (*(volatile uint32_t  *) 0x30010588 )
          #define  LDPC_DEC_CODEWRD_106 (*(volatile uint32_t  *) 0x3001058c )
          #define  LDPC_DEC_CODEWRD_107 (*(volatile uint32_t  *) 0x30010590 )
          #define  LDPC_DEC_CODEWRD_108 (*(volatile uint32_t  *) 0x30010594 )
          #define  LDPC_DEC_CODEWRD_109 (*(volatile uint32_t  *) 0x30010598 )
          #define  LDPC_DEC_CODEWRD_110 (*(volatile uint32_t  *) 0x3001059c )
          #define  LDPC_DEC_CODEWRD_111 (*(volatile uint32_t  *) 0x300105a0 )
          #define  LDPC_DEC_CODEWRD_112 (*(volatile uint32_t  *) 0x300105a4 )
          #define  LDPC_DEC_CODEWRD_113 (*(volatile uint32_t  *) 0x300105a8 )
          #define  LDPC_DEC_CODEWRD_114 (*(volatile uint32_t  *) 0x300105ac )
          #define  LDPC_DEC_CODEWRD_115 (*(volatile uint32_t  *) 0x300105b0 )
          #define  LDPC_DEC_CODEWRD_116 (*(volatile uint32_t  *) 0x300105b4 )
          #define  LDPC_DEC_CODEWRD_117 (*(volatile uint32_t  *) 0x300105b8 )
          #define  LDPC_DEC_CODEWRD_118 (*(volatile uint32_t  *) 0x300105bc )
          #define  LDPC_DEC_CODEWRD_119 (*(volatile uint32_t  *) 0x300105c0 )
          #define  LDPC_DEC_CODEWRD_120 (*(volatile uint32_t  *) 0x300105c4 )
          #define  LDPC_DEC_CODEWRD_121 (*(volatile uint32_t  *) 0x300105c8 )
          #define  LDPC_DEC_CODEWRD_122 (*(volatile uint32_t  *) 0x300105cc )
          #define  LDPC_DEC_CODEWRD_123 (*(volatile uint32_t  *) 0x300105d0 )
          #define  LDPC_DEC_CODEWRD_124 (*(volatile uint32_t  *) 0x300105d4 )
          #define  LDPC_DEC_CODEWRD_125 (*(volatile uint32_t  *) 0x300105d8 )
          #define  LDPC_DEC_CODEWRD_126 (*(volatile uint32_t  *) 0x300105dc )
          #define  LDPC_DEC_CODEWRD_127 (*(volatile uint32_t  *) 0x300105e0 )
          #define  LDPC_DEC_CODEWRD_128 (*(volatile uint32_t  *) 0x300105e4 )
          #define  LDPC_DEC_CODEWRD_129 (*(volatile uint32_t  *) 0x300105e8 )
          #define  LDPC_DEC_CODEWRD_130 (*(volatile uint32_t  *) 0x300105ec )
          #define  LDPC_DEC_CODEWRD_131 (*(volatile uint32_t  *) 0x300105f0 )
          #define  LDPC_DEC_CODEWRD_132 (*(volatile uint32_t  *) 0x300105f4 )
          #define  LDPC_DEC_CODEWRD_133 (*(volatile uint32_t  *) 0x300105f8 )
          #define  LDPC_DEC_CODEWRD_134 (*(volatile uint32_t  *) 0x300105fc )
          #define  LDPC_DEC_CODEWRD_135 (*(volatile uint32_t  *) 0x30010600 )
          #define  LDPC_DEC_CODEWRD_136 (*(volatile uint32_t  *) 0x30010604 )
          #define  LDPC_DEC_CODEWRD_137 (*(volatile uint32_t  *) 0x30010608 )
          #define  LDPC_DEC_CODEWRD_138 (*(volatile uint32_t  *) 0x3001060c )
          #define  LDPC_DEC_CODEWRD_139 (*(volatile uint32_t  *) 0x30010610 )
          #define  LDPC_DEC_CODEWRD_140 (*(volatile uint32_t  *) 0x30010614 )
          #define  LDPC_DEC_CODEWRD_141 (*(volatile uint32_t  *) 0x30010618 )
          #define  LDPC_DEC_CODEWRD_142 (*(volatile uint32_t  *) 0x3001061c )
          #define  LDPC_DEC_CODEWRD_143 (*(volatile uint32_t  *) 0x30010620 )
          #define  LDPC_DEC_CODEWRD_144 (*(volatile uint32_t  *) 0x30010624 )
          #define  LDPC_DEC_CODEWRD_145 (*(volatile uint32_t  *) 0x30010628 )
          #define  LDPC_DEC_CODEWRD_146 (*(volatile uint32_t  *) 0x3001062c )
          #define  LDPC_DEC_CODEWRD_147 (*(volatile uint32_t  *) 0x30010630 )
          #define  LDPC_DEC_CODEWRD_148 (*(volatile uint32_t  *) 0x30010634 )
          #define  LDPC_DEC_CODEWRD_149 (*(volatile uint32_t  *) 0x30010638 )
          #define  LDPC_DEC_CODEWRD_150 (*(volatile uint32_t  *) 0x3001063c )
          #define  LDPC_DEC_CODEWRD_151 (*(volatile uint32_t  *) 0x30010640 )
          #define  LDPC_DEC_CODEWRD_152 (*(volatile uint32_t  *) 0x30010644 )
          #define  LDPC_DEC_CODEWRD_153 (*(volatile uint32_t  *) 0x30010648 )
          #define  LDPC_DEC_CODEWRD_154 (*(volatile uint32_t  *) 0x3001064c )
          #define  LDPC_DEC_CODEWRD_155 (*(volatile uint32_t  *) 0x30010650 )
          #define  LDPC_DEC_CODEWRD_156 (*(volatile uint32_t  *) 0x30010654 )
          #define  LDPC_DEC_CODEWRD_157 (*(volatile uint32_t  *) 0x30010658 )
          #define  LDPC_DEC_CODEWRD_158 (*(volatile uint32_t  *) 0x3001065c )
          #define  LDPC_DEC_CODEWRD_159 (*(volatile uint32_t  *) 0x30010660 )
          #define  LDPC_DEC_CODEWRD_160 (*(volatile uint32_t  *) 0x30010664 )
          #define  LDPC_DEC_CODEWRD_161 (*(volatile uint32_t  *) 0x30010668 )
          #define  LDPC_DEC_CODEWRD_162 (*(volatile uint32_t  *) 0x3001066c )
          #define  LDPC_DEC_CODEWRD_163 (*(volatile uint32_t  *) 0x30010670 )
          #define  LDPC_DEC_CODEWRD_164 (*(volatile uint32_t  *) 0x30010674 )
          #define  LDPC_DEC_CODEWRD_165 (*(volatile uint32_t  *) 0x30010678 )
          #define  LDPC_DEC_CODEWRD_166 (*(volatile uint32_t  *) 0x3001067c )
          #define  LDPC_DEC_CODEWRD_167 (*(volatile uint32_t  *) 0x30010680 )
          #define  LDPC_DEC_CODEWRD_168 (*(volatile uint32_t  *) 0x30010684 )
          #define  LDPC_DEC_CODEWRD_169 (*(volatile uint32_t  *) 0x30010688 )
          #define  LDPC_DEC_CODEWRD_170 (*(volatile uint32_t  *) 0x3001068c )
          #define  LDPC_DEC_CODEWRD_171 (*(volatile uint32_t  *) 0x30010690 )
          #define  LDPC_DEC_CODEWRD_172 (*(volatile uint32_t  *) 0x30010694 )
          #define  LDPC_DEC_CODEWRD_173 (*(volatile uint32_t  *) 0x30010698 )
          #define  LDPC_DEC_CODEWRD_174 (*(volatile uint32_t  *) 0x3001069c )
          #define  LDPC_DEC_CODEWRD_175 (*(volatile uint32_t  *) 0x300106a0 )
          #define  LDPC_DEC_CODEWRD_176 (*(volatile uint32_t  *) 0x300106a4 )
          #define  LDPC_DEC_CODEWRD_177 (*(volatile uint32_t  *) 0x300106a8 )
          #define  LDPC_DEC_CODEWRD_178 (*(volatile uint32_t  *) 0x300106ac )
          #define  LDPC_DEC_CODEWRD_179 (*(volatile uint32_t  *) 0x300106b0 )
          #define  LDPC_DEC_CODEWRD_180 (*(volatile uint32_t  *) 0x300106b4 )
          #define  LDPC_DEC_CODEWRD_181 (*(volatile uint32_t  *) 0x300106b8 )
          #define  LDPC_DEC_CODEWRD_182 (*(volatile uint32_t  *) 0x300106bc )
          #define  LDPC_DEC_CODEWRD_183 (*(volatile uint32_t  *) 0x300106c0 )
          #define  LDPC_DEC_CODEWRD_184 (*(volatile uint32_t  *) 0x300106c4 )
          #define  LDPC_DEC_CODEWRD_185 (*(volatile uint32_t  *) 0x300106c8 )
          #define  LDPC_DEC_CODEWRD_186 (*(volatile uint32_t  *) 0x300106cc )
          #define  LDPC_DEC_CODEWRD_187 (*(volatile uint32_t  *) 0x300106d0 )
          #define  LDPC_DEC_CODEWRD_188 (*(volatile uint32_t  *) 0x300106d4 )
          #define  LDPC_DEC_CODEWRD_189 (*(volatile uint32_t  *) 0x300106d8 )
          #define  LDPC_DEC_CODEWRD_190 (*(volatile uint32_t  *) 0x300106dc )
          #define  LDPC_DEC_CODEWRD_191 (*(volatile uint32_t  *) 0x300106e0 )
          #define  LDPC_DEC_CODEWRD_192 (*(volatile uint32_t  *) 0x300106e4 )
          #define  LDPC_DEC_CODEWRD_193 (*(volatile uint32_t  *) 0x300106e8 )
          #define  LDPC_DEC_CODEWRD_194 (*(volatile uint32_t  *) 0x300106ec )
          #define  LDPC_DEC_CODEWRD_195 (*(volatile uint32_t  *) 0x300106f0 )
          #define  LDPC_DEC_CODEWRD_196 (*(volatile uint32_t  *) 0x300106f4 )
          #define  LDPC_DEC_CODEWRD_197 (*(volatile uint32_t  *) 0x300106f8 )
          #define  LDPC_DEC_CODEWRD_198 (*(volatile uint32_t  *) 0x300106fc )
          #define  LDPC_DEC_CODEWRD_199 (*(volatile uint32_t  *) 0x30010700 )
          #define  LDPC_DEC_CODEWRD_200 (*(volatile uint32_t  *) 0x30010704 )
          #define  LDPC_DEC_CODEWRD_201 (*(volatile uint32_t  *) 0x30010708 )
          #define  LDPC_DEC_CODEWRD_202 (*(volatile uint32_t  *) 0x3001070c )
          #define  LDPC_DEC_CODEWRD_203 (*(volatile uint32_t  *) 0x30010710 )
          #define  LDPC_DEC_CODEWRD_204 (*(volatile uint32_t  *) 0x30010714 )
          #define  LDPC_DEC_CODEWRD_205 (*(volatile uint32_t  *) 0x30010718 )
          #define  LDPC_DEC_CODEWRD_206 (*(volatile uint32_t  *) 0x3001071c )
          #define  LDPC_DEC_CODEWRD_207 (*(volatile uint32_t  *) 0x30010720 )
          #define  LDPC_DEC_EXPSYND_0 (*(volatile uint32_t  *) 0x30010724 )
          #define  LDPC_DEC_EXPSYND_1 (*(volatile uint32_t  *) 0x30010728 )
          #define  LDPC_DEC_EXPSYND_2 (*(volatile uint32_t  *) 0x3001072c )
          #define  LDPC_DEC_EXPSYND_3 (*(volatile uint32_t  *) 0x30010730 )
          #define  LDPC_DEC_EXPSYND_4 (*(volatile uint32_t  *) 0x30010734 )
          #define  LDPC_DEC_EXPSYND_5 (*(volatile uint32_t  *) 0x30010738 )
          #define  LDPC_DEC_EXPSYND_6 (*(volatile uint32_t  *) 0x3001073c )
          #define  LDPC_DEC_EXPSYND_7 (*(volatile uint32_t  *) 0x30010740 )
          #define  LDPC_DEC_EXPSYND_8 (*(volatile uint32_t  *) 0x30010744 )
          #define  LDPC_DEC_EXPSYND_9 (*(volatile uint32_t  *) 0x30010748 )
          #define  LDPC_DEC_EXPSYND_10 (*(volatile uint32_t  *) 0x3001074c )
          #define  LDPC_DEC_EXPSYND_11 (*(volatile uint32_t  *) 0x30010750 )
          #define  LDPC_DEC_EXPSYND_12 (*(volatile uint32_t  *) 0x30010754 )
          #define  LDPC_DEC_EXPSYND_13 (*(volatile uint32_t  *) 0x30010758 )
          #define  LDPC_DEC_EXPSYND_14 (*(volatile uint32_t  *) 0x3001075c )
          #define  LDPC_DEC_EXPSYND_15 (*(volatile uint32_t  *) 0x30010760 )
          #define  LDPC_DEC_EXPSYND_16 (*(volatile uint32_t  *) 0x30010764 )
          #define  LDPC_DEC_EXPSYND_17 (*(volatile uint32_t  *) 0x30010768 )
          #define  LDPC_DEC_EXPSYND_18 (*(volatile uint32_t  *) 0x3001076c )
          #define  LDPC_DEC_EXPSYND_19 (*(volatile uint32_t  *) 0x30010770 )
          #define  LDPC_DEC_EXPSYND_20 (*(volatile uint32_t  *) 0x30010774 )
          #define  LDPC_DEC_EXPSYND_21 (*(volatile uint32_t  *) 0x30010778 )
          #define  LDPC_DEC_EXPSYND_22 (*(volatile uint32_t  *) 0x3001077c )
          #define  LDPC_DEC_EXPSYND_23 (*(volatile uint32_t  *) 0x30010780 )
          #define  LDPC_DEC_EXPSYND_24 (*(volatile uint32_t  *) 0x30010784 )
          #define  LDPC_DEC_EXPSYND_25 (*(volatile uint32_t  *) 0x30010788 )
          #define  LDPC_DEC_EXPSYND_26 (*(volatile uint32_t  *) 0x3001078c )
          #define  LDPC_DEC_EXPSYND_27 (*(volatile uint32_t  *) 0x30010790 )
          #define  LDPC_DEC_EXPSYND_28 (*(volatile uint32_t  *) 0x30010794 )
          #define  LDPC_DEC_EXPSYND_29 (*(volatile uint32_t  *) 0x30010798 )
          #define  LDPC_DEC_EXPSYND_30 (*(volatile uint32_t  *) 0x3001079c )
          #define  LDPC_DEC_EXPSYND_31 (*(volatile uint32_t  *) 0x300107a0 )
          #define  LDPC_DEC_EXPSYND_32 (*(volatile uint32_t  *) 0x300107a4 )
          #define  LDPC_DEC_EXPSYND_33 (*(volatile uint32_t  *) 0x300107a8 )
          #define  LDPC_DEC_EXPSYND_34 (*(volatile uint32_t  *) 0x300107ac )
          #define  LDPC_DEC_EXPSYND_35 (*(volatile uint32_t  *) 0x300107b0 )
          #define  LDPC_DEC_EXPSYND_36 (*(volatile uint32_t  *) 0x300107b4 )
          #define  LDPC_DEC_EXPSYND_37 (*(volatile uint32_t  *) 0x300107b8 )
          #define  LDPC_DEC_EXPSYND_38 (*(volatile uint32_t  *) 0x300107bc )
          #define  LDPC_DEC_EXPSYND_39 (*(volatile uint32_t  *) 0x300107c0 )
          #define  LDPC_DEC_EXPSYND_40 (*(volatile uint32_t  *) 0x300107c4 )
          #define  LDPC_DEC_EXPSYND_41 (*(volatile uint32_t  *) 0x300107c8 )
          #define  LDPC_DEC_EXPSYND_42 (*(volatile uint32_t  *) 0x300107cc )
          #define  LDPC_DEC_EXPSYND_43 (*(volatile uint32_t  *) 0x300107d0 )
          #define  LDPC_DEC_EXPSYND_44 (*(volatile uint32_t  *) 0x300107d4 )
          #define  LDPC_DEC_EXPSYND_45 (*(volatile uint32_t  *) 0x300107d8 )
          #define  LDPC_DEC_EXPSYND_46 (*(volatile uint32_t  *) 0x300107dc )
          #define  LDPC_DEC_EXPSYND_47 (*(volatile uint32_t  *) 0x300107e0 )
          #define  LDPC_DEC_EXPSYND_48 (*(volatile uint32_t  *) 0x300107e4 )
          #define  LDPC_DEC_EXPSYND_49 (*(volatile uint32_t  *) 0x300107e8 )
          #define  LDPC_DEC_EXPSYND_50 (*(volatile uint32_t  *) 0x300107ec )
          #define  LDPC_DEC_EXPSYND_51 (*(volatile uint32_t  *) 0x300107f0 )
          #define  LDPC_DEC_EXPSYND_52 (*(volatile uint32_t  *) 0x300107f4 )
          #define  LDPC_DEC_EXPSYND_53 (*(volatile uint32_t  *) 0x300107f8 )
          #define  LDPC_DEC_EXPSYND_54 (*(volatile uint32_t  *) 0x300107fc )
          #define  LDPC_DEC_EXPSYND_55 (*(volatile uint32_t  *) 0x30010800 )
          #define  LDPC_DEC_EXPSYND_56 (*(volatile uint32_t  *) 0x30010804 )
          #define  LDPC_DEC_EXPSYND_57 (*(volatile uint32_t  *) 0x30010808 )
          #define  LDPC_DEC_EXPSYND_58 (*(volatile uint32_t  *) 0x3001080c )
          #define  LDPC_DEC_EXPSYND_59 (*(volatile uint32_t  *) 0x30010810 )
          #define  LDPC_DEC_EXPSYND_60 (*(volatile uint32_t  *) 0x30010814 )
          #define  LDPC_DEC_EXPSYND_61 (*(volatile uint32_t  *) 0x30010818 )
          #define  LDPC_DEC_EXPSYND_62 (*(volatile uint32_t  *) 0x3001081c )
          #define  LDPC_DEC_EXPSYND_63 (*(volatile uint32_t  *) 0x30010820 )
          #define  LDPC_DEC_EXPSYND_64 (*(volatile uint32_t  *) 0x30010824 )
          #define  LDPC_DEC_EXPSYND_65 (*(volatile uint32_t  *) 0x30010828 )
          #define  LDPC_DEC_EXPSYND_66 (*(volatile uint32_t  *) 0x3001082c )
          #define  LDPC_DEC_EXPSYND_67 (*(volatile uint32_t  *) 0x30010830 )
          #define  LDPC_DEC_EXPSYND_68 (*(volatile uint32_t  *) 0x30010834 )
          #define  LDPC_DEC_EXPSYND_69 (*(volatile uint32_t  *) 0x30010838 )
          #define  LDPC_DEC_EXPSYND_70 (*(volatile uint32_t  *) 0x3001083c )
          #define  LDPC_DEC_EXPSYND_71 (*(volatile uint32_t  *) 0x30010840 )
          #define  LDPC_DEC_EXPSYND_72 (*(volatile uint32_t  *) 0x30010844 )
          #define  LDPC_DEC_EXPSYND_73 (*(volatile uint32_t  *) 0x30010848 )
          #define  LDPC_DEC_EXPSYND_74 (*(volatile uint32_t  *) 0x3001084c )
          #define  LDPC_DEC_EXPSYND_75 (*(volatile uint32_t  *) 0x30010850 )
          #define  LDPC_DEC_EXPSYND_76 (*(volatile uint32_t  *) 0x30010854 )
          #define  LDPC_DEC_EXPSYND_77 (*(volatile uint32_t  *) 0x30010858 )
          #define  LDPC_DEC_EXPSYND_78 (*(volatile uint32_t  *) 0x3001085c )
          #define  LDPC_DEC_EXPSYND_79 (*(volatile uint32_t  *) 0x30010860 )
          #define  LDPC_DEC_EXPSYND_80 (*(volatile uint32_t  *) 0x30010864 )
          #define  LDPC_DEC_EXPSYND_81 (*(volatile uint32_t  *) 0x30010868 )
          #define  LDPC_DEC_EXPSYND_82 (*(volatile uint32_t  *) 0x3001086c )
          #define  LDPC_DEC_EXPSYND_83 (*(volatile uint32_t  *) 0x30010870 )
          #define  LDPC_DEC_EXPSYND_84 (*(volatile uint32_t  *) 0x30010874 )
          #define  LDPC_DEC_EXPSYND_85 (*(volatile uint32_t  *) 0x30010878 )
          #define  LDPC_DEC_EXPSYND_86 (*(volatile uint32_t  *) 0x3001087c )
          #define  LDPC_DEC_EXPSYND_87 (*(volatile uint32_t  *) 0x30010880 )
          #define  LDPC_DEC_EXPSYND_88 (*(volatile uint32_t  *) 0x30010884 )
          #define  LDPC_DEC_EXPSYND_89 (*(volatile uint32_t  *) 0x30010888 )
          #define  LDPC_DEC_EXPSYND_90 (*(volatile uint32_t  *) 0x3001088c )
          #define  LDPC_DEC_EXPSYND_91 (*(volatile uint32_t  *) 0x30010890 )
          #define  LDPC_DEC_EXPSYND_92 (*(volatile uint32_t  *) 0x30010894 )
          #define  LDPC_DEC_EXPSYND_93 (*(volatile uint32_t  *) 0x30010898 )
          #define  LDPC_DEC_EXPSYND_94 (*(volatile uint32_t  *) 0x3001089c )
          #define  LDPC_DEC_EXPSYND_95 (*(volatile uint32_t  *) 0x300108a0 )
          #define  LDPC_DEC_EXPSYND_96 (*(volatile uint32_t  *) 0x300108a4 )
          #define  LDPC_DEC_EXPSYND_97 (*(volatile uint32_t  *) 0x300108a8 )
          #define  LDPC_DEC_EXPSYND_98 (*(volatile uint32_t  *) 0x300108ac )
          #define  LDPC_DEC_EXPSYND_99 (*(volatile uint32_t  *) 0x300108b0 )
          #define  LDPC_DEC_EXPSYND_100 (*(volatile uint32_t  *) 0x300108b4 )
          #define  LDPC_DEC_EXPSYND_101 (*(volatile uint32_t  *) 0x300108b8 )
          #define  LDPC_DEC_EXPSYND_102 (*(volatile uint32_t  *) 0x300108bc )
          #define  LDPC_DEC_EXPSYND_103 (*(volatile uint32_t  *) 0x300108c0 )
          #define  LDPC_DEC_EXPSYND_104 (*(volatile uint32_t  *) 0x300108c4 )
          #define  LDPC_DEC_EXPSYND_105 (*(volatile uint32_t  *) 0x300108c8 )
          #define  LDPC_DEC_EXPSYND_106 (*(volatile uint32_t  *) 0x300108cc )
          #define  LDPC_DEC_EXPSYND_107 (*(volatile uint32_t  *) 0x300108d0 )
          #define  LDPC_DEC_EXPSYND_108 (*(volatile uint32_t  *) 0x300108d4 )
          #define  LDPC_DEC_EXPSYND_109 (*(volatile uint32_t  *) 0x300108d8 )
          #define  LDPC_DEC_EXPSYND_110 (*(volatile uint32_t  *) 0x300108dc )
          #define  LDPC_DEC_EXPSYND_111 (*(volatile uint32_t  *) 0x300108e0 )
          #define  LDPC_DEC_EXPSYND_112 (*(volatile uint32_t  *) 0x300108e4 )
          #define  LDPC_DEC_EXPSYND_113 (*(volatile uint32_t  *) 0x300108e8 )
          #define  LDPC_DEC_EXPSYND_114 (*(volatile uint32_t  *) 0x300108ec )
          #define  LDPC_DEC_EXPSYND_115 (*(volatile uint32_t  *) 0x300108f0 )
          #define  LDPC_DEC_EXPSYND_116 (*(volatile uint32_t  *) 0x300108f4 )
          #define  LDPC_DEC_EXPSYND_117 (*(volatile uint32_t  *) 0x300108f8 )
          #define  LDPC_DEC_EXPSYND_118 (*(volatile uint32_t  *) 0x300108fc )
          #define  LDPC_DEC_EXPSYND_119 (*(volatile uint32_t  *) 0x30010900 )
          #define  LDPC_DEC_EXPSYND_120 (*(volatile uint32_t  *) 0x30010904 )
          #define  LDPC_DEC_EXPSYND_121 (*(volatile uint32_t  *) 0x30010908 )
          #define  LDPC_DEC_EXPSYND_122 (*(volatile uint32_t  *) 0x3001090c )
          #define  LDPC_DEC_EXPSYND_123 (*(volatile uint32_t  *) 0x30010910 )
          #define  LDPC_DEC_EXPSYND_124 (*(volatile uint32_t  *) 0x30010914 )
          #define  LDPC_DEC_EXPSYND_125 (*(volatile uint32_t  *) 0x30010918 )
          #define  LDPC_DEC_EXPSYND_126 (*(volatile uint32_t  *) 0x3001091c )
          #define  LDPC_DEC_EXPSYND_127 (*(volatile uint32_t  *) 0x30010920 )
          #define  LDPC_DEC_EXPSYND_128 (*(volatile uint32_t  *) 0x30010924 )
          #define  LDPC_DEC_EXPSYND_129 (*(volatile uint32_t  *) 0x30010928 )
          #define  LDPC_DEC_EXPSYND_130 (*(volatile uint32_t  *) 0x3001092c )
          #define  LDPC_DEC_EXPSYND_131 (*(volatile uint32_t  *) 0x30010930 )
          #define  LDPC_DEC_EXPSYND_132 (*(volatile uint32_t  *) 0x30010934 )
          #define  LDPC_DEC_EXPSYND_133 (*(volatile uint32_t  *) 0x30010938 )
          #define  LDPC_DEC_EXPSYND_134 (*(volatile uint32_t  *) 0x3001093c )
          #define  LDPC_DEC_EXPSYND_135 (*(volatile uint32_t  *) 0x30010940 )
          #define  LDPC_DEC_EXPSYND_136 (*(volatile uint32_t  *) 0x30010944 )
          #define  LDPC_DEC_EXPSYND_137 (*(volatile uint32_t  *) 0x30010948 )
          #define  LDPC_DEC_EXPSYND_138 (*(volatile uint32_t  *) 0x3001094c )
          #define  LDPC_DEC_EXPSYND_139 (*(volatile uint32_t  *) 0x30010950 )
          #define  LDPC_DEC_EXPSYND_140 (*(volatile uint32_t  *) 0x30010954 )
          #define  LDPC_DEC_EXPSYND_141 (*(volatile uint32_t  *) 0x30010958 )
          #define  LDPC_DEC_EXPSYND_142 (*(volatile uint32_t  *) 0x3001095c )
          #define  LDPC_DEC_EXPSYND_143 (*(volatile uint32_t  *) 0x30010960 )
          #define  LDPC_DEC_EXPSYND_144 (*(volatile uint32_t  *) 0x30010964 )
          #define  LDPC_DEC_EXPSYND_145 (*(volatile uint32_t  *) 0x30010968 )
          #define  LDPC_DEC_EXPSYND_146 (*(volatile uint32_t  *) 0x3001096c )
          #define  LDPC_DEC_EXPSYND_147 (*(volatile uint32_t  *) 0x30010970 )
          #define  LDPC_DEC_EXPSYND_148 (*(volatile uint32_t  *) 0x30010974 )
          #define  LDPC_DEC_EXPSYND_149 (*(volatile uint32_t  *) 0x30010978 )
          #define  LDPC_DEC_EXPSYND_150 (*(volatile uint32_t  *) 0x3001097c )
          #define  LDPC_DEC_EXPSYND_151 (*(volatile uint32_t  *) 0x30010980 )
          #define  LDPC_DEC_EXPSYND_152 (*(volatile uint32_t  *) 0x30010984 )
          #define  LDPC_DEC_EXPSYND_153 (*(volatile uint32_t  *) 0x30010988 )
          #define  LDPC_DEC_EXPSYND_154 (*(volatile uint32_t  *) 0x3001098c )
          #define  LDPC_DEC_EXPSYND_155 (*(volatile uint32_t  *) 0x30010990 )
          #define  LDPC_DEC_EXPSYND_156 (*(volatile uint32_t  *) 0x30010994 )
          #define  LDPC_DEC_EXPSYND_157 (*(volatile uint32_t  *) 0x30010998 )
          #define  LDPC_DEC_EXPSYND_158 (*(volatile uint32_t  *) 0x3001099c )
          #define  LDPC_DEC_EXPSYND_159 (*(volatile uint32_t  *) 0x300109a0 )
          #define  LDPC_DEC_EXPSYND_160 (*(volatile uint32_t  *) 0x300109a4 )
          #define  LDPC_DEC_EXPSYND_161 (*(volatile uint32_t  *) 0x300109a8 )
          #define  LDPC_DEC_EXPSYND_162 (*(volatile uint32_t  *) 0x300109ac )
          #define  LDPC_DEC_EXPSYND_163 (*(volatile uint32_t  *) 0x300109b0 )
          #define  LDPC_DEC_EXPSYND_164 (*(volatile uint32_t  *) 0x300109b4 )
          #define  LDPC_DEC_EXPSYND_165 (*(volatile uint32_t  *) 0x300109b8 )
          #define  LDPC_DEC_EXPSYND_166 (*(volatile uint32_t  *) 0x300109bc )
          #define  LDPC_DEC_EXPSYND_167 (*(volatile uint32_t  *) 0x300109c0 )
          #define  LDPC_DEC_PROBABILITY (*(volatile uint32_t  *) 0x300109c4 )
          #define  LDPC_DEC_HamDist_loop_max (*(volatile uint32_t  *) 0x300109c8 )
          #define  LDPC_DEC_HamDist_loop_percentage (*(volatile uint32_t  *) 0x300109cc )
          #define  LDPC_DEC_HamDist_iir1 (*(volatile uint32_t  *) 0x300109d0 )
          #define  LDPC_DEC_HamDist_iir2_NOT_USED (*(volatile uint32_t  *) 0x300109d4 )
          #define  LDPC_DEC_HamDist_iir3_NOT_USED (*(volatile uint32_t  *) 0x300109d8 )
          #define  LDPC_DEC_converged_valid (*(volatile uint32_t  *) 0x300109dc )
          #define  LDPC_DEC_converged_status (*(volatile uint32_t  *) 0x300109e0 )
          #define  LDPC_DEC_converged_valid_NOT_USED (*(volatile uint32_t  *) 0x300109e4 )
          #define  LDPC_DEC_start (*(volatile uint32_t  *) 0x300109e8 )
          #define  LDPC_DEC_valid_NOT_USED (*(volatile uint32_t  *) 0x300109ec )
          #define  LDPC_DEC_valid_codeword_NOT_USED (*(volatile uint32_t  *) 0x300109f0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_0 (*(volatile uint32_t   *) 0x300109f4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_1 (*(volatile uint32_t   *) 0x300109f8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_2 (*(volatile uint32_t   *) 0x300109fc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_3 (*(volatile uint32_t   *) 0x30010a00 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_4 (*(volatile uint32_t   *) 0x30010a04 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_5 (*(volatile uint32_t   *) 0x30010a08 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_6 (*(volatile uint32_t   *) 0x30010a0c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_7 (*(volatile uint32_t   *) 0x30010a10 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_8 (*(volatile uint32_t   *) 0x30010a14 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_9 (*(volatile uint32_t   *) 0x30010a18 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_10 (*(volatile uint32_t   *) 0x30010a1c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_11 (*(volatile uint32_t   *) 0x30010a20 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_12 (*(volatile uint32_t   *) 0x30010a24 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_13 (*(volatile uint32_t   *) 0x30010a28 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_14 (*(volatile uint32_t   *) 0x30010a2c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_15 (*(volatile uint32_t   *) 0x30010a30 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_16 (*(volatile uint32_t   *) 0x30010a34 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_17 (*(volatile uint32_t   *) 0x30010a38 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_18 (*(volatile uint32_t   *) 0x30010a3c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_19 (*(volatile uint32_t   *) 0x30010a40 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_20 (*(volatile uint32_t   *) 0x30010a44 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_21 (*(volatile uint32_t   *) 0x30010a48 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_22 (*(volatile uint32_t   *) 0x30010a4c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_23 (*(volatile uint32_t   *) 0x30010a50 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_24 (*(volatile uint32_t   *) 0x30010a54 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_25 (*(volatile uint32_t   *) 0x30010a58 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_26 (*(volatile uint32_t   *) 0x30010a5c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_27 (*(volatile uint32_t   *) 0x30010a60 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_28 (*(volatile uint32_t   *) 0x30010a64 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_29 (*(volatile uint32_t   *) 0x30010a68 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_30 (*(volatile uint32_t   *) 0x30010a6c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_31 (*(volatile uint32_t   *) 0x30010a70 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_32 (*(volatile uint32_t   *) 0x30010a74 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_33 (*(volatile uint32_t   *) 0x30010a78 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_34 (*(volatile uint32_t   *) 0x30010a7c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_35 (*(volatile uint32_t   *) 0x30010a80 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_36 (*(volatile uint32_t   *) 0x30010a84 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_37 (*(volatile uint32_t   *) 0x30010a88 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_38 (*(volatile uint32_t   *) 0x30010a8c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_39 (*(volatile uint32_t   *) 0x30010a90 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_40 (*(volatile uint32_t   *) 0x30010a94 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_41 (*(volatile uint32_t   *) 0x30010a98 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_42 (*(volatile uint32_t   *) 0x30010a9c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_43 (*(volatile uint32_t   *) 0x30010aa0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_44 (*(volatile uint32_t   *) 0x30010aa4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_45 (*(volatile uint32_t   *) 0x30010aa8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_46 (*(volatile uint32_t   *) 0x30010aac )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_47 (*(volatile uint32_t   *) 0x30010ab0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_48 (*(volatile uint32_t   *) 0x30010ab4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_49 (*(volatile uint32_t   *) 0x30010ab8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_50 (*(volatile uint32_t   *) 0x30010abc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_51 (*(volatile uint32_t   *) 0x30010ac0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_52 (*(volatile uint32_t   *) 0x30010ac4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_53 (*(volatile uint32_t   *) 0x30010ac8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_54 (*(volatile uint32_t   *) 0x30010acc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_55 (*(volatile uint32_t   *) 0x30010ad0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_56 (*(volatile uint32_t   *) 0x30010ad4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_57 (*(volatile uint32_t   *) 0x30010ad8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_58 (*(volatile uint32_t   *) 0x30010adc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_59 (*(volatile uint32_t   *) 0x30010ae0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_60 (*(volatile uint32_t   *) 0x30010ae4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_61 (*(volatile uint32_t   *) 0x30010ae8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_62 (*(volatile uint32_t   *) 0x30010aec )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_63 (*(volatile uint32_t   *) 0x30010af0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_64 (*(volatile uint32_t   *) 0x30010af4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_65 (*(volatile uint32_t   *) 0x30010af8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_66 (*(volatile uint32_t   *) 0x30010afc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_67 (*(volatile uint32_t   *) 0x30010b00 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_68 (*(volatile uint32_t   *) 0x30010b04 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_69 (*(volatile uint32_t   *) 0x30010b08 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_70 (*(volatile uint32_t   *) 0x30010b0c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_71 (*(volatile uint32_t   *) 0x30010b10 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_72 (*(volatile uint32_t   *) 0x30010b14 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_73 (*(volatile uint32_t   *) 0x30010b18 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_74 (*(volatile uint32_t   *) 0x30010b1c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_75 (*(volatile uint32_t   *) 0x30010b20 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_76 (*(volatile uint32_t   *) 0x30010b24 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_77 (*(volatile uint32_t   *) 0x30010b28 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_78 (*(volatile uint32_t   *) 0x30010b2c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_79 (*(volatile uint32_t   *) 0x30010b30 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_80 (*(volatile uint32_t   *) 0x30010b34 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_81 (*(volatile uint32_t   *) 0x30010b38 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_82 (*(volatile uint32_t   *) 0x30010b3c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_83 (*(volatile uint32_t   *) 0x30010b40 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_84 (*(volatile uint32_t   *) 0x30010b44 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_85 (*(volatile uint32_t   *) 0x30010b48 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_86 (*(volatile uint32_t   *) 0x30010b4c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_87 (*(volatile uint32_t   *) 0x30010b50 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_88 (*(volatile uint32_t   *) 0x30010b54 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_89 (*(volatile uint32_t   *) 0x30010b58 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_90 (*(volatile uint32_t   *) 0x30010b5c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_91 (*(volatile uint32_t   *) 0x30010b60 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_92 (*(volatile uint32_t   *) 0x30010b64 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_93 (*(volatile uint32_t   *) 0x30010b68 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_94 (*(volatile uint32_t   *) 0x30010b6c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_95 (*(volatile uint32_t   *) 0x30010b70 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_96 (*(volatile uint32_t   *) 0x30010b74 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_97 (*(volatile uint32_t   *) 0x30010b78 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_98 (*(volatile uint32_t   *) 0x30010b7c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_99 (*(volatile uint32_t   *) 0x30010b80 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_100 (*(volatile uint32_t   *) 0x30010b84 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_101 (*(volatile uint32_t   *) 0x30010b88 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_102 (*(volatile uint32_t   *) 0x30010b8c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_103 (*(volatile uint32_t   *) 0x30010b90 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_104 (*(volatile uint32_t   *) 0x30010b94 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_105 (*(volatile uint32_t   *) 0x30010b98 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_106 (*(volatile uint32_t   *) 0x30010b9c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_107 (*(volatile uint32_t   *) 0x30010ba0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_108 (*(volatile uint32_t   *) 0x30010ba4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_109 (*(volatile uint32_t   *) 0x30010ba8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_110 (*(volatile uint32_t   *) 0x30010bac )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_111 (*(volatile uint32_t   *) 0x30010bb0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_112 (*(volatile uint32_t   *) 0x30010bb4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_113 (*(volatile uint32_t   *) 0x30010bb8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_114 (*(volatile uint32_t   *) 0x30010bbc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_115 (*(volatile uint32_t   *) 0x30010bc0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_116 (*(volatile uint32_t   *) 0x30010bc4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_117 (*(volatile uint32_t   *) 0x30010bc8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_118 (*(volatile uint32_t   *) 0x30010bcc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_119 (*(volatile uint32_t   *) 0x30010bd0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_120 (*(volatile uint32_t   *) 0x30010bd4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_121 (*(volatile uint32_t   *) 0x30010bd8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_122 (*(volatile uint32_t   *) 0x30010bdc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_123 (*(volatile uint32_t   *) 0x30010be0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_124 (*(volatile uint32_t   *) 0x30010be4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_125 (*(volatile uint32_t   *) 0x30010be8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_126 (*(volatile uint32_t   *) 0x30010bec )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_127 (*(volatile uint32_t   *) 0x30010bf0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_128 (*(volatile uint32_t   *) 0x30010bf4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_129 (*(volatile uint32_t   *) 0x30010bf8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_130 (*(volatile uint32_t   *) 0x30010bfc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_131 (*(volatile uint32_t   *) 0x30010c00 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_132 (*(volatile uint32_t   *) 0x30010c04 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_133 (*(volatile uint32_t   *) 0x30010c08 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_134 (*(volatile uint32_t   *) 0x30010c0c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_135 (*(volatile uint32_t   *) 0x30010c10 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_136 (*(volatile uint32_t   *) 0x30010c14 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_137 (*(volatile uint32_t   *) 0x30010c18 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_138 (*(volatile uint32_t   *) 0x30010c1c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_139 (*(volatile uint32_t   *) 0x30010c20 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_140 (*(volatile uint32_t   *) 0x30010c24 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_141 (*(volatile uint32_t   *) 0x30010c28 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_142 (*(volatile uint32_t   *) 0x30010c2c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_143 (*(volatile uint32_t   *) 0x30010c30 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_144 (*(volatile uint32_t   *) 0x30010c34 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_145 (*(volatile uint32_t   *) 0x30010c38 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_146 (*(volatile uint32_t   *) 0x30010c3c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_147 (*(volatile uint32_t   *) 0x30010c40 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_148 (*(volatile uint32_t   *) 0x30010c44 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_149 (*(volatile uint32_t   *) 0x30010c48 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_150 (*(volatile uint32_t   *) 0x30010c4c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_151 (*(volatile uint32_t   *) 0x30010c50 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_152 (*(volatile uint32_t   *) 0x30010c54 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_153 (*(volatile uint32_t   *) 0x30010c58 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_154 (*(volatile uint32_t   *) 0x30010c5c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_155 (*(volatile uint32_t   *) 0x30010c60 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_156 (*(volatile uint32_t   *) 0x30010c64 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_157 (*(volatile uint32_t   *) 0x30010c68 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_158 (*(volatile uint32_t   *) 0x30010c6c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_159 (*(volatile uint32_t   *) 0x30010c70 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_160 (*(volatile uint32_t   *) 0x30010c74 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_161 (*(volatile uint32_t   *) 0x30010c78 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_162 (*(volatile uint32_t   *) 0x30010c7c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_163 (*(volatile uint32_t   *) 0x30010c80 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_164 (*(volatile uint32_t   *) 0x30010c84 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_165 (*(volatile uint32_t   *) 0x30010c88 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_166 (*(volatile uint32_t   *) 0x30010c8c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_167 (*(volatile uint32_t   *) 0x30010c90 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_168 (*(volatile uint32_t   *) 0x30010c94 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_169 (*(volatile uint32_t   *) 0x30010c98 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_170 (*(volatile uint32_t   *) 0x30010c9c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_171 (*(volatile uint32_t   *) 0x30010ca0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_172 (*(volatile uint32_t   *) 0x30010ca4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_173 (*(volatile uint32_t   *) 0x30010ca8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_174 (*(volatile uint32_t   *) 0x30010cac )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_175 (*(volatile uint32_t   *) 0x30010cb0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_176 (*(volatile uint32_t   *) 0x30010cb4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_177 (*(volatile uint32_t   *) 0x30010cb8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_178 (*(volatile uint32_t   *) 0x30010cbc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_179 (*(volatile uint32_t   *) 0x30010cc0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_180 (*(volatile uint32_t   *) 0x30010cc4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_181 (*(volatile uint32_t   *) 0x30010cc8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_182 (*(volatile uint32_t   *) 0x30010ccc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_183 (*(volatile uint32_t   *) 0x30010cd0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_184 (*(volatile uint32_t   *) 0x30010cd4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_185 (*(volatile uint32_t   *) 0x30010cd8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_186 (*(volatile uint32_t   *) 0x30010cdc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_187 (*(volatile uint32_t   *) 0x30010ce0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_188 (*(volatile uint32_t   *) 0x30010ce4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_189 (*(volatile uint32_t   *) 0x30010ce8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_190 (*(volatile uint32_t   *) 0x30010cec )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_191 (*(volatile uint32_t   *) 0x30010cf0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_192 (*(volatile uint32_t   *) 0x30010cf4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_193 (*(volatile uint32_t   *) 0x30010cf8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_194 (*(volatile uint32_t   *) 0x30010cfc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_195 (*(volatile uint32_t   *) 0x30010d00 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_196 (*(volatile uint32_t   *) 0x30010d04 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_197 (*(volatile uint32_t   *) 0x30010d08 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_198 (*(volatile uint32_t   *) 0x30010d0c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_199 (*(volatile uint32_t   *) 0x30010d10 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_200 (*(volatile uint32_t   *) 0x30010d14 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_201 (*(volatile uint32_t   *) 0x30010d18 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_202 (*(volatile uint32_t   *) 0x30010d1c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_203 (*(volatile uint32_t   *) 0x30010d20 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_204 (*(volatile uint32_t   *) 0x30010d24 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_205 (*(volatile uint32_t   *) 0x30010d28 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_206 (*(volatile uint32_t   *) 0x30010d2c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_207 (*(volatile uint32_t   *) 0x30010d30 )

/*
	Wishbone Test:
		- Configures MPRJ lower 8-IO pins as outputs
		- Checks counter value through the wishbone port
*/


//static unsigned int rndm = 2815UL;
//unsigned int Rand(void)           // simple pseudo rand
//{
//  return rndm = (77UL * rndm + 1243UL) & 0x7fffffffUL; // 31bit
//}


void main()
{

	/* 
	IO Control Registers
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |
	Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
	
	 
	Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |
	*/

	/* Set up the housekeeping SPI to be connected internally so	*/
	/* that external pin changes don't affect it.			*/

    reg_spi_enable = 1;
    reg_wb_enable = 1;
	// reg_spimaster_config = 0xa002;	// Enable, prescaler = 2,
                                        // connect to housekeeping SPI

	// Connect the housekeeping SPI to the SPI master
	// so that the CSB line is not left floating.  This allows
	// all of the GPIO pins to be used for user functions.

    reg_mprj_io_31 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_30 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_29 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_28 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_27 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_26 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_25 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_24 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_23 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_22 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_21 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_20 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_19 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_18 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_17 = GPIO_MODE_MGMT_STD_OUTPUT;
    reg_mprj_io_16 = GPIO_MODE_MGMT_STD_OUTPUT;

     /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

	reg_la2_oenb = reg_la2_iena = 0x00000000;    // [95:64]

    // Flag start of the test
        reg_mprj_datal = 0xAB600000;

    reg_mprj_slave = 0x00002710;
    reg_mprj_datal = 0xAB610000;
    if (reg_mprj_slave == 0x2B3D) {
        reg_mprj_datal = 0xAB610000;
    }


           LDPC_ENC_MSG_IN_0 = 1;
           LDPC_ENC_MSG_IN_1 = 1;
           LDPC_ENC_MSG_IN_2 = 1;
           LDPC_ENC_MSG_IN_3 = 0;
           LDPC_ENC_MSG_IN_4 = 0;
           LDPC_ENC_MSG_IN_5 = 1;
           LDPC_ENC_MSG_IN_6 = 1;
           LDPC_ENC_MSG_IN_7 = 0;
           LDPC_ENC_MSG_IN_8 = 0;
           LDPC_ENC_MSG_IN_9 = 0;
           LDPC_ENC_MSG_IN_10 = 0;
           LDPC_ENC_MSG_IN_11 = 0;
           LDPC_ENC_MSG_IN_12 = 0;
           LDPC_ENC_MSG_IN_13 = 1;
           LDPC_ENC_MSG_IN_14 = 1;
           LDPC_ENC_MSG_IN_15 = 0;
           LDPC_ENC_MSG_IN_16 = 0;
           LDPC_ENC_MSG_IN_17 = 1;
           LDPC_ENC_MSG_IN_18 = 1;
           LDPC_ENC_MSG_IN_19 = 1;
           LDPC_ENC_MSG_IN_20 = 1;
           LDPC_ENC_MSG_IN_21 = 0;
           LDPC_ENC_MSG_IN_22 = 0;
           LDPC_ENC_MSG_IN_23 = 1;
           LDPC_ENC_MSG_IN_24 = 0;
           LDPC_ENC_MSG_IN_25 = 1;
           LDPC_ENC_MSG_IN_26 = 0;
           LDPC_ENC_MSG_IN_27 = 1;
           LDPC_ENC_MSG_IN_28 = 0;
           LDPC_ENC_MSG_IN_29 = 0;
           LDPC_ENC_MSG_IN_30 = 0;
           LDPC_ENC_MSG_IN_31 = 0;
           LDPC_ENC_MSG_IN_32 = 1;
           LDPC_ENC_MSG_IN_33 = 0;
           LDPC_ENC_MSG_IN_34 = 1;
           LDPC_ENC_MSG_IN_35 = 0;
           LDPC_ENC_MSG_IN_36 = 1;
           LDPC_ENC_MSG_IN_37 = 0;
           LDPC_ENC_MSG_IN_38 = 1;
           LDPC_ENC_MSG_IN_39 = 0;

int enc_cword  [208];
           enc_cword [   0] = LDPC_ENC_CODEWRD_0 ;
           enc_cword [   1] = LDPC_ENC_CODEWRD_1 ;
           enc_cword [   2] = LDPC_ENC_CODEWRD_2 ;
           enc_cword [   3] = LDPC_ENC_CODEWRD_3 ;
           enc_cword [   4] = LDPC_ENC_CODEWRD_4 ;
           enc_cword [   5] = LDPC_ENC_CODEWRD_5 ;
           enc_cword [   6] = LDPC_ENC_CODEWRD_6 ;
           enc_cword [   7] = LDPC_ENC_CODEWRD_7 ;
           enc_cword [   8] = LDPC_ENC_CODEWRD_8 ;
           enc_cword [   9] = LDPC_ENC_CODEWRD_9 ;
           enc_cword [   10] = LDPC_ENC_CODEWRD_10 ;
           enc_cword [   11] = LDPC_ENC_CODEWRD_11 ;
           enc_cword [   12] = LDPC_ENC_CODEWRD_12 ;
           enc_cword [   13] = LDPC_ENC_CODEWRD_13 ;
           enc_cword [   14] = LDPC_ENC_CODEWRD_14 ;
           enc_cword [   15] = LDPC_ENC_CODEWRD_15 ;
           enc_cword [   16] = LDPC_ENC_CODEWRD_16 ;
           enc_cword [   17] = LDPC_ENC_CODEWRD_17 ;
           enc_cword [   18] = LDPC_ENC_CODEWRD_18 ;
           enc_cword [   19] = LDPC_ENC_CODEWRD_19 ;
           enc_cword [   20] = LDPC_ENC_CODEWRD_20 ;
           enc_cword [   21] = LDPC_ENC_CODEWRD_21 ;
           enc_cword [   22] = LDPC_ENC_CODEWRD_22 ;
           enc_cword [   23] = LDPC_ENC_CODEWRD_23 ;
           enc_cword [   24] = LDPC_ENC_CODEWRD_24 ;
           enc_cword [   25] = LDPC_ENC_CODEWRD_25 ;
           enc_cword [   26] = LDPC_ENC_CODEWRD_26 ;
           enc_cword [   27] = LDPC_ENC_CODEWRD_27 ;
           enc_cword [   28] = LDPC_ENC_CODEWRD_28 ;
           enc_cword [   29] = LDPC_ENC_CODEWRD_29 ;
           enc_cword [   30] = LDPC_ENC_CODEWRD_30 ;
           enc_cword [   31] = LDPC_ENC_CODEWRD_31 ;
           enc_cword [   32] = LDPC_ENC_CODEWRD_32 ;
           enc_cword [   33] = LDPC_ENC_CODEWRD_33 ;
           enc_cword [   34] = LDPC_ENC_CODEWRD_34 ;
           enc_cword [   35] = LDPC_ENC_CODEWRD_35 ;
           enc_cword [   36] = LDPC_ENC_CODEWRD_36 ;
           enc_cword [   37] = LDPC_ENC_CODEWRD_37 ;
           enc_cword [   38] = LDPC_ENC_CODEWRD_38 ;
           enc_cword [   39] = LDPC_ENC_CODEWRD_39 ;
           enc_cword [   40] = LDPC_ENC_CODEWRD_40 ;
           enc_cword [   41] = LDPC_ENC_CODEWRD_41 ;
           enc_cword [   42] = LDPC_ENC_CODEWRD_42 ;
           enc_cword [   43] = LDPC_ENC_CODEWRD_43 ;
           enc_cword [   44] = LDPC_ENC_CODEWRD_44 ;
           enc_cword [   45] = LDPC_ENC_CODEWRD_45 ;
           enc_cword [   46] = LDPC_ENC_CODEWRD_46 ;
           enc_cword [   47] = LDPC_ENC_CODEWRD_47 ;
           enc_cword [   48] = LDPC_ENC_CODEWRD_48 ;
           enc_cword [   49] = LDPC_ENC_CODEWRD_49 ;
           enc_cword [   50] = LDPC_ENC_CODEWRD_50 ;
           enc_cword [   51] = LDPC_ENC_CODEWRD_51 ;
           enc_cword [   52] = LDPC_ENC_CODEWRD_52 ;
           enc_cword [   53] = LDPC_ENC_CODEWRD_53 ;
           enc_cword [   54] = LDPC_ENC_CODEWRD_54 ;
           enc_cword [   55] = LDPC_ENC_CODEWRD_55 ;
           enc_cword [   56] = LDPC_ENC_CODEWRD_56 ;
           enc_cword [   57] = LDPC_ENC_CODEWRD_57 ;
           enc_cword [   58] = LDPC_ENC_CODEWRD_58 ;
           enc_cword [   59] = LDPC_ENC_CODEWRD_59 ;
           enc_cword [   60] = LDPC_ENC_CODEWRD_60 ;
           enc_cword [   61] = LDPC_ENC_CODEWRD_61 ;
           enc_cword [   62] = LDPC_ENC_CODEWRD_62 ;
           enc_cword [   63] = LDPC_ENC_CODEWRD_63 ;
           enc_cword [   64] = LDPC_ENC_CODEWRD_64 ;
           enc_cword [   65] = LDPC_ENC_CODEWRD_65 ;
           enc_cword [   66] = LDPC_ENC_CODEWRD_66 ;
           enc_cword [   67] = LDPC_ENC_CODEWRD_67 ;
           enc_cword [   68] = LDPC_ENC_CODEWRD_68 ;
           enc_cword [   69] = LDPC_ENC_CODEWRD_69 ;
           enc_cword [   70] = LDPC_ENC_CODEWRD_70 ;
           enc_cword [   71] = LDPC_ENC_CODEWRD_71 ;
           enc_cword [   72] = LDPC_ENC_CODEWRD_72 ;
           enc_cword [   73] = LDPC_ENC_CODEWRD_73 ;
           enc_cword [   74] = LDPC_ENC_CODEWRD_74 ;
           enc_cword [   75] = LDPC_ENC_CODEWRD_75 ;
           enc_cword [   76] = LDPC_ENC_CODEWRD_76 ;
           enc_cword [   77] = LDPC_ENC_CODEWRD_77 ;
           enc_cword [   78] = LDPC_ENC_CODEWRD_78 ;
           enc_cword [   79] = LDPC_ENC_CODEWRD_79 ;
           enc_cword [   80] = LDPC_ENC_CODEWRD_80 ;
           enc_cword [   81] = LDPC_ENC_CODEWRD_81 ;
           enc_cword [   82] = LDPC_ENC_CODEWRD_82 ;
           enc_cword [   83] = LDPC_ENC_CODEWRD_83 ;
           enc_cword [   84] = LDPC_ENC_CODEWRD_84 ;
           enc_cword [   85] = LDPC_ENC_CODEWRD_85 ;
           enc_cword [   86] = LDPC_ENC_CODEWRD_86 ;
           enc_cword [   87] = LDPC_ENC_CODEWRD_87 ;
           enc_cword [   88] = LDPC_ENC_CODEWRD_88 ;
           enc_cword [   89] = LDPC_ENC_CODEWRD_89 ;
           enc_cword [   90] = LDPC_ENC_CODEWRD_90 ;
           enc_cword [   91] = LDPC_ENC_CODEWRD_91 ;
           enc_cword [   92] = LDPC_ENC_CODEWRD_92 ;
           enc_cword [   93] = LDPC_ENC_CODEWRD_93 ;
           enc_cword [   94] = LDPC_ENC_CODEWRD_94 ;
           enc_cword [   95] = LDPC_ENC_CODEWRD_95 ;
           enc_cword [   96] = LDPC_ENC_CODEWRD_96 ;
           enc_cword [   97] = LDPC_ENC_CODEWRD_97 ;
           enc_cword [   98] = LDPC_ENC_CODEWRD_98 ;
           enc_cword [   99] = LDPC_ENC_CODEWRD_99 ;
           enc_cword [   100] = LDPC_ENC_CODEWRD_100 ;
           enc_cword [   101] = LDPC_ENC_CODEWRD_101 ;
           enc_cword [   102] = LDPC_ENC_CODEWRD_102 ;
           enc_cword [   103] = LDPC_ENC_CODEWRD_103 ;
           enc_cword [   104] = LDPC_ENC_CODEWRD_104 ;
           enc_cword [   105] = LDPC_ENC_CODEWRD_105 ;
           enc_cword [   106] = LDPC_ENC_CODEWRD_106 ;
           enc_cword [   107] = LDPC_ENC_CODEWRD_107 ;
           enc_cword [   108] = LDPC_ENC_CODEWRD_108 ;
           enc_cword [   109] = LDPC_ENC_CODEWRD_109 ;
           enc_cword [   110] = LDPC_ENC_CODEWRD_110 ;
           enc_cword [   111] = LDPC_ENC_CODEWRD_111 ;
           enc_cword [   112] = LDPC_ENC_CODEWRD_112 ;
           enc_cword [   113] = LDPC_ENC_CODEWRD_113 ;
           enc_cword [   114] = LDPC_ENC_CODEWRD_114 ;
           enc_cword [   115] = LDPC_ENC_CODEWRD_115 ;
           enc_cword [   116] = LDPC_ENC_CODEWRD_116 ;
           enc_cword [   117] = LDPC_ENC_CODEWRD_117 ;
           enc_cword [   118] = LDPC_ENC_CODEWRD_118 ;
           enc_cword [   119] = LDPC_ENC_CODEWRD_119 ;
           enc_cword [   120] = LDPC_ENC_CODEWRD_120 ;
           enc_cword [   121] = LDPC_ENC_CODEWRD_121 ;
           enc_cword [   122] = LDPC_ENC_CODEWRD_122 ;
           enc_cword [   123] = LDPC_ENC_CODEWRD_123 ;
           enc_cword [   124] = LDPC_ENC_CODEWRD_124 ;
           enc_cword [   125] = LDPC_ENC_CODEWRD_125 ;
           enc_cword [   126] = LDPC_ENC_CODEWRD_126 ;
           enc_cword [   127] = LDPC_ENC_CODEWRD_127 ;
           enc_cword [   128] = LDPC_ENC_CODEWRD_128 ;
           enc_cword [   129] = LDPC_ENC_CODEWRD_129 ;
           enc_cword [   130] = LDPC_ENC_CODEWRD_130 ;
           enc_cword [   131] = LDPC_ENC_CODEWRD_131 ;
           enc_cword [   132] = LDPC_ENC_CODEWRD_132 ;
           enc_cword [   133] = LDPC_ENC_CODEWRD_133 ;
           enc_cword [   134] = LDPC_ENC_CODEWRD_134 ;
           enc_cword [   135] = LDPC_ENC_CODEWRD_135 ;
           enc_cword [   136] = LDPC_ENC_CODEWRD_136 ;
           enc_cword [   137] = LDPC_ENC_CODEWRD_137 ;
           enc_cword [   138] = LDPC_ENC_CODEWRD_138 ;
           enc_cword [   139] = LDPC_ENC_CODEWRD_139 ;
           enc_cword [   140] = LDPC_ENC_CODEWRD_140 ;
           enc_cword [   141] = LDPC_ENC_CODEWRD_141 ;
           enc_cword [   142] = LDPC_ENC_CODEWRD_142 ;
           enc_cword [   143] = LDPC_ENC_CODEWRD_143 ;
           enc_cword [   144] = LDPC_ENC_CODEWRD_144 ;
           enc_cword [   145] = LDPC_ENC_CODEWRD_145 ;
           enc_cword [   146] = LDPC_ENC_CODEWRD_146 ;
           enc_cword [   147] = LDPC_ENC_CODEWRD_147 ;
           enc_cword [   148] = LDPC_ENC_CODEWRD_148 ;
           enc_cword [   149] = LDPC_ENC_CODEWRD_149 ;
           enc_cword [   150] = LDPC_ENC_CODEWRD_150 ;
           enc_cword [   151] = LDPC_ENC_CODEWRD_151 ;
           enc_cword [   152] = LDPC_ENC_CODEWRD_152 ;
           enc_cword [   153] = LDPC_ENC_CODEWRD_153 ;
           enc_cword [   154] = LDPC_ENC_CODEWRD_154 ;
           enc_cword [   155] = LDPC_ENC_CODEWRD_155 ;
           enc_cword [   156] = LDPC_ENC_CODEWRD_156 ;
           enc_cword [   157] = LDPC_ENC_CODEWRD_157 ;
           enc_cword [   158] = LDPC_ENC_CODEWRD_158 ;
           enc_cword [   159] = LDPC_ENC_CODEWRD_159 ;
           enc_cword [   160] = LDPC_ENC_CODEWRD_160 ;
           enc_cword [   161] = LDPC_ENC_CODEWRD_161 ;
           enc_cword [   162] = LDPC_ENC_CODEWRD_162 ;
           enc_cword [   163] = LDPC_ENC_CODEWRD_163 ;
           enc_cword [   164] = LDPC_ENC_CODEWRD_164 ;
           enc_cword [   165] = LDPC_ENC_CODEWRD_165 ;
           enc_cword [   166] = LDPC_ENC_CODEWRD_166 ;
           enc_cword [   167] = LDPC_ENC_CODEWRD_167 ;
           enc_cword [   168] = LDPC_ENC_CODEWRD_168 ;
           enc_cword [   169] = LDPC_ENC_CODEWRD_169 ;
           enc_cword [   170] = LDPC_ENC_CODEWRD_170 ;
           enc_cword [   171] = LDPC_ENC_CODEWRD_171 ;
           enc_cword [   172] = LDPC_ENC_CODEWRD_172 ;
           enc_cword [   173] = LDPC_ENC_CODEWRD_173 ;
           enc_cword [   174] = LDPC_ENC_CODEWRD_174 ;
           enc_cword [   175] = LDPC_ENC_CODEWRD_175 ;
           enc_cword [   176] = LDPC_ENC_CODEWRD_176 ;
           enc_cword [   177] = LDPC_ENC_CODEWRD_177 ;
           enc_cword [   178] = LDPC_ENC_CODEWRD_178 ;
           enc_cword [   179] = LDPC_ENC_CODEWRD_179 ;
           enc_cword [   180] = LDPC_ENC_CODEWRD_180 ;
           enc_cword [   181] = LDPC_ENC_CODEWRD_181 ;
           enc_cword [   182] = LDPC_ENC_CODEWRD_182 ;
           enc_cword [   183] = LDPC_ENC_CODEWRD_183 ;
           enc_cword [   184] = LDPC_ENC_CODEWRD_184 ;
           enc_cword [   185] = LDPC_ENC_CODEWRD_185 ;
           enc_cword [   186] = LDPC_ENC_CODEWRD_186 ;
           enc_cword [   187] = LDPC_ENC_CODEWRD_187 ;
           enc_cword [   188] = LDPC_ENC_CODEWRD_188 ;
           enc_cword [   189] = LDPC_ENC_CODEWRD_189 ;
           enc_cword [   190] = LDPC_ENC_CODEWRD_190 ;
           enc_cword [   191] = LDPC_ENC_CODEWRD_191 ;
           enc_cword [   192] = LDPC_ENC_CODEWRD_192 ;
           enc_cword [   193] = LDPC_ENC_CODEWRD_193 ;
           enc_cword [   194] = LDPC_ENC_CODEWRD_194 ;
           enc_cword [   195] = LDPC_ENC_CODEWRD_195 ;
           enc_cword [   196] = LDPC_ENC_CODEWRD_196 ;
           enc_cword [   197] = LDPC_ENC_CODEWRD_197 ;
           enc_cword [   198] = LDPC_ENC_CODEWRD_198 ;
           enc_cword [   199] = LDPC_ENC_CODEWRD_199 ;
           enc_cword [   200] = LDPC_ENC_CODEWRD_200 ;
           enc_cword [   201] = LDPC_ENC_CODEWRD_201 ;
           enc_cword [   202] = LDPC_ENC_CODEWRD_202 ;
           enc_cword [   203] = LDPC_ENC_CODEWRD_203 ;
           enc_cword [   204] = LDPC_ENC_CODEWRD_204 ;
           enc_cword [   205] = LDPC_ENC_CODEWRD_205 ;
           enc_cword [   206] = LDPC_ENC_CODEWRD_206 ;
           enc_cword [   207] = LDPC_ENC_CODEWRD_207 ;
    LDPC_DEC_PROBABILITY = 6592;
    
           LDPC_DEC_CODEWRD_0  =  1;
           LDPC_DEC_CODEWRD_1  =  1;
           LDPC_DEC_CODEWRD_2  =  1;
           LDPC_DEC_CODEWRD_3  =  1;
           LDPC_DEC_CODEWRD_4  =  1;
           LDPC_DEC_CODEWRD_5  =  1;
           LDPC_DEC_CODEWRD_6  =  1;
           LDPC_DEC_CODEWRD_7  =  1;
           LDPC_DEC_CODEWRD_8  =  1;
           LDPC_DEC_CODEWRD_9  =  1;
           LDPC_DEC_CODEWRD_10  =  1;
           LDPC_DEC_CODEWRD_11  =  1;
           LDPC_DEC_CODEWRD_12  =  1;
           LDPC_DEC_CODEWRD_13  =  1;
           LDPC_DEC_CODEWRD_14  =  1;
           LDPC_DEC_CODEWRD_15  =  1;
           LDPC_DEC_CODEWRD_16  =  1;
           LDPC_DEC_CODEWRD_17  =  3;
           LDPC_DEC_CODEWRD_18  =  1;
           LDPC_DEC_CODEWRD_19  =  1;
           LDPC_DEC_CODEWRD_20  =  1;
           LDPC_DEC_CODEWRD_21  =  1;
           LDPC_DEC_CODEWRD_22  =  1;
           LDPC_DEC_CODEWRD_23  =  1;
           LDPC_DEC_CODEWRD_24  =  1;
           LDPC_DEC_CODEWRD_25  =  1;
           LDPC_DEC_CODEWRD_26  =  1;
           LDPC_DEC_CODEWRD_27  =  1;
           LDPC_DEC_CODEWRD_28  =  1;
           LDPC_DEC_CODEWRD_29  =  1;
           LDPC_DEC_CODEWRD_30  =  1;
           LDPC_DEC_CODEWRD_31  =  1;
           LDPC_DEC_CODEWRD_32  =  1;
           LDPC_DEC_CODEWRD_33  =  1;
           LDPC_DEC_CODEWRD_34  =  1;
           LDPC_DEC_CODEWRD_35  =  1;
           LDPC_DEC_CODEWRD_36  =  1;
           LDPC_DEC_CODEWRD_37  =  1;
           LDPC_DEC_CODEWRD_38  =  1;
           LDPC_DEC_CODEWRD_39  =  1;
           LDPC_DEC_CODEWRD_40  =  3;
           LDPC_DEC_CODEWRD_41  =  1;
           LDPC_DEC_CODEWRD_42  =  1;
           LDPC_DEC_CODEWRD_43  =  1;
           LDPC_DEC_CODEWRD_44  =  1;
           LDPC_DEC_CODEWRD_45  =  1;
           LDPC_DEC_CODEWRD_46  =  1;
           LDPC_DEC_CODEWRD_47  =  1;
           LDPC_DEC_CODEWRD_48  =  1;
           LDPC_DEC_CODEWRD_49  =  1;
           LDPC_DEC_CODEWRD_50  =  1;
           LDPC_DEC_CODEWRD_51  =  1;
           LDPC_DEC_CODEWRD_52  =  1;
           LDPC_DEC_CODEWRD_53  =  1;
           LDPC_DEC_CODEWRD_54  =  1;
           LDPC_DEC_CODEWRD_55  =  1;
           LDPC_DEC_CODEWRD_56  =  1;
           LDPC_DEC_CODEWRD_57  =  1;
           LDPC_DEC_CODEWRD_58  =  1;
           LDPC_DEC_CODEWRD_59  =  1;
           LDPC_DEC_CODEWRD_60  =  1;
           LDPC_DEC_CODEWRD_61  =  1;
           LDPC_DEC_CODEWRD_62  =  1;
           LDPC_DEC_CODEWRD_63  =  1;
           LDPC_DEC_CODEWRD_64  =  1;
           LDPC_DEC_CODEWRD_65  =  1;
           LDPC_DEC_CODEWRD_66  =  1;
           LDPC_DEC_CODEWRD_67  =  1;
           LDPC_DEC_CODEWRD_68  =  1;
           LDPC_DEC_CODEWRD_69  =  1;
           LDPC_DEC_CODEWRD_70  =  1;
           LDPC_DEC_CODEWRD_71  =  1;
           LDPC_DEC_CODEWRD_72  =  1;
           LDPC_DEC_CODEWRD_73  =  1;
           LDPC_DEC_CODEWRD_74  =  1;
           LDPC_DEC_CODEWRD_75  =  1;
           LDPC_DEC_CODEWRD_76  =  1;
           LDPC_DEC_CODEWRD_77  =  1;
           LDPC_DEC_CODEWRD_78  =  1;
           LDPC_DEC_CODEWRD_79  =  1;
           LDPC_DEC_CODEWRD_80  =  1;
           LDPC_DEC_CODEWRD_81  =  1;
           LDPC_DEC_CODEWRD_82  =  1;
           LDPC_DEC_CODEWRD_83  =  1;
           LDPC_DEC_CODEWRD_84  =  1;
           LDPC_DEC_CODEWRD_85  =  1;
           LDPC_DEC_CODEWRD_86  =  1;
           LDPC_DEC_CODEWRD_87  =  1;
           LDPC_DEC_CODEWRD_88  =  1;
           LDPC_DEC_CODEWRD_89  =  1;
           LDPC_DEC_CODEWRD_90  =  1;
           LDPC_DEC_CODEWRD_91  =  1;
           LDPC_DEC_CODEWRD_92  =  1;
           LDPC_DEC_CODEWRD_93  =  3;
           LDPC_DEC_CODEWRD_94  =  1;
           LDPC_DEC_CODEWRD_95  =  1;
           LDPC_DEC_CODEWRD_96  =  1;
           LDPC_DEC_CODEWRD_97  =  1;
           LDPC_DEC_CODEWRD_98  =  3;
           LDPC_DEC_CODEWRD_99  =  1;
           LDPC_DEC_CODEWRD_100  =  1;
           LDPC_DEC_CODEWRD_101  =  1;
           LDPC_DEC_CODEWRD_102  =  1;
           LDPC_DEC_CODEWRD_103  =  1;
           LDPC_DEC_CODEWRD_104  =  1;
           LDPC_DEC_CODEWRD_105  =  3;
           LDPC_DEC_CODEWRD_106  =  1;
           LDPC_DEC_CODEWRD_107  =  1;
           LDPC_DEC_CODEWRD_108  =  1;
           LDPC_DEC_CODEWRD_109  =  1;
           LDPC_DEC_CODEWRD_110  =  1;
           LDPC_DEC_CODEWRD_111  =  1;
           LDPC_DEC_CODEWRD_112  =  1;
           LDPC_DEC_CODEWRD_113  =  1;
           LDPC_DEC_CODEWRD_114  =  1;
           LDPC_DEC_CODEWRD_115  =  1;
           LDPC_DEC_CODEWRD_116  =  1;
           LDPC_DEC_CODEWRD_117  =  1;
           LDPC_DEC_CODEWRD_118  =  1;
           LDPC_DEC_CODEWRD_119  =  1;
           LDPC_DEC_CODEWRD_120  =  1;
           LDPC_DEC_CODEWRD_121  =  1;
           LDPC_DEC_CODEWRD_122  =  1;
           LDPC_DEC_CODEWRD_123  =  1;
           LDPC_DEC_CODEWRD_124  =  1;
           LDPC_DEC_CODEWRD_125  =  1;
           LDPC_DEC_CODEWRD_126  =  1;
           LDPC_DEC_CODEWRD_127  =  1;
           LDPC_DEC_CODEWRD_128  =  1;
           LDPC_DEC_CODEWRD_129  =  1;
           LDPC_DEC_CODEWRD_130  =  3;
           LDPC_DEC_CODEWRD_131  =  1;
           LDPC_DEC_CODEWRD_132  =  1;
           LDPC_DEC_CODEWRD_133  =  1;
           LDPC_DEC_CODEWRD_134  =  1;
           LDPC_DEC_CODEWRD_135  =  1;
           LDPC_DEC_CODEWRD_136  =  1;
           LDPC_DEC_CODEWRD_137  =  1;
           LDPC_DEC_CODEWRD_138  =  1;
           LDPC_DEC_CODEWRD_139  =  1;
           LDPC_DEC_CODEWRD_140  =  1;
           LDPC_DEC_CODEWRD_141  =  1;
           LDPC_DEC_CODEWRD_142  =  1;
           LDPC_DEC_CODEWRD_143  =  1;
           LDPC_DEC_CODEWRD_144  =  1;
           LDPC_DEC_CODEWRD_145  =  1;
           LDPC_DEC_CODEWRD_146  =  1;
           LDPC_DEC_CODEWRD_147  =  1;
           LDPC_DEC_CODEWRD_148  =  1;
           LDPC_DEC_CODEWRD_149  =  1;
           LDPC_DEC_CODEWRD_150  =  1;
           LDPC_DEC_CODEWRD_151  =  1;
           LDPC_DEC_CODEWRD_152  =  1;
           LDPC_DEC_CODEWRD_153  =  1;
           LDPC_DEC_CODEWRD_154  =  1;
           LDPC_DEC_CODEWRD_155  =  1;
           LDPC_DEC_CODEWRD_156  =  1;
           LDPC_DEC_CODEWRD_157  =  1;
           LDPC_DEC_CODEWRD_158  =  1;
           LDPC_DEC_CODEWRD_159  =  1;
           LDPC_DEC_CODEWRD_160  =  1;
           LDPC_DEC_CODEWRD_161  =  1;
           LDPC_DEC_CODEWRD_162  =  1;
           LDPC_DEC_CODEWRD_163  =  1;
           LDPC_DEC_CODEWRD_164  =  1;
           LDPC_DEC_CODEWRD_165  =  1;
           LDPC_DEC_CODEWRD_166  =  3;
           LDPC_DEC_CODEWRD_167  =  1;
           LDPC_DEC_CODEWRD_168  =  1;
           LDPC_DEC_CODEWRD_169  =  3;
           LDPC_DEC_CODEWRD_170  =  1;
           LDPC_DEC_CODEWRD_171  =  1;
           LDPC_DEC_CODEWRD_172  =  1;
           LDPC_DEC_CODEWRD_173  =  1;
           LDPC_DEC_CODEWRD_174  =  1;
           LDPC_DEC_CODEWRD_175  =  1;
           LDPC_DEC_CODEWRD_176  =  1;
           LDPC_DEC_CODEWRD_177  =  1;
           LDPC_DEC_CODEWRD_178  =  1;
           LDPC_DEC_CODEWRD_179  =  1;
           LDPC_DEC_CODEWRD_180  =  1;
           LDPC_DEC_CODEWRD_181  =  1;
           LDPC_DEC_CODEWRD_182  =  1;
           LDPC_DEC_CODEWRD_183  =  1;
           LDPC_DEC_CODEWRD_184  =  1;
           LDPC_DEC_CODEWRD_185  =  1;
           LDPC_DEC_CODEWRD_186  =  1;
           LDPC_DEC_CODEWRD_187  =  1;
           LDPC_DEC_CODEWRD_188  =  1;
           LDPC_DEC_CODEWRD_189  =  1;
           LDPC_DEC_CODEWRD_190  =  3;
           LDPC_DEC_CODEWRD_191  =  1;
           LDPC_DEC_CODEWRD_192  =  1;
           LDPC_DEC_CODEWRD_193  =  1;
           LDPC_DEC_CODEWRD_194  =  1;
           LDPC_DEC_CODEWRD_195  =  1;
           LDPC_DEC_CODEWRD_196  =  1;
           LDPC_DEC_CODEWRD_197  =  1;
           LDPC_DEC_CODEWRD_198  =  1;
           LDPC_DEC_CODEWRD_199  =  1;
           LDPC_DEC_CODEWRD_200  =  1;
           LDPC_DEC_CODEWRD_201  =  1;
           LDPC_DEC_CODEWRD_202  =  1;
           LDPC_DEC_CODEWRD_203  =  1;
           LDPC_DEC_CODEWRD_204  =  1;
           LDPC_DEC_CODEWRD_205  =  1;
           LDPC_DEC_CODEWRD_206  =  1;
           LDPC_DEC_CODEWRD_207  =  1;

           LDPC_DEC_EXPSYND_0  = 0x0;
           LDPC_DEC_EXPSYND_1  = 0x0;
           LDPC_DEC_EXPSYND_2  = 0x0;
           LDPC_DEC_EXPSYND_3  = 0x0;
           LDPC_DEC_EXPSYND_4  = 0x0;
           LDPC_DEC_EXPSYND_5  = 0x0;
           LDPC_DEC_EXPSYND_6  = 0x0;
           LDPC_DEC_EXPSYND_7  = 0x0;
           LDPC_DEC_EXPSYND_8  = 0x0;
           LDPC_DEC_EXPSYND_9  = 0x0;
           LDPC_DEC_EXPSYND_10  = 0x0;
           LDPC_DEC_EXPSYND_11  = 0x0;
           LDPC_DEC_EXPSYND_12  = 0x0;
           LDPC_DEC_EXPSYND_13  = 0x0;
           LDPC_DEC_EXPSYND_14  = 0x0;
           LDPC_DEC_EXPSYND_15  = 0x0;
           LDPC_DEC_EXPSYND_16  = 0x0;
           LDPC_DEC_EXPSYND_17  = 0x0;
           LDPC_DEC_EXPSYND_18  = 0x0;
           LDPC_DEC_EXPSYND_19  = 0x0;
           LDPC_DEC_EXPSYND_20  = 0x0;
           LDPC_DEC_EXPSYND_21  = 0x0;
           LDPC_DEC_EXPSYND_22  = 0x0;
           LDPC_DEC_EXPSYND_23  = 0x0;
           LDPC_DEC_EXPSYND_24  = 0x0;
           LDPC_DEC_EXPSYND_25  = 0x0;
           LDPC_DEC_EXPSYND_26  = 0x0;
           LDPC_DEC_EXPSYND_27  = 0x0;
           LDPC_DEC_EXPSYND_28  = 0x0;
           LDPC_DEC_EXPSYND_29  = 0x0;
           LDPC_DEC_EXPSYND_30  = 0x0;
           LDPC_DEC_EXPSYND_31  = 0x0;
           LDPC_DEC_EXPSYND_32  = 0x0;
           LDPC_DEC_EXPSYND_33  = 0x0;
           LDPC_DEC_EXPSYND_34  = 0x0;
           LDPC_DEC_EXPSYND_35  = 0x0;
           LDPC_DEC_EXPSYND_36  = 0x0;
           LDPC_DEC_EXPSYND_37  = 0x0;
           LDPC_DEC_EXPSYND_38  = 0x0;
           LDPC_DEC_EXPSYND_39  = 0x0;
           LDPC_DEC_EXPSYND_40  = 0x0;
           LDPC_DEC_EXPSYND_41  = 0x0;
           LDPC_DEC_EXPSYND_42  = 0x0;
           LDPC_DEC_EXPSYND_43  = 0x0;
           LDPC_DEC_EXPSYND_44  = 0x0;
           LDPC_DEC_EXPSYND_45  = 0x0;
           LDPC_DEC_EXPSYND_46  = 0x0;
           LDPC_DEC_EXPSYND_47  = 0x0;
           LDPC_DEC_EXPSYND_48  = 0x0;
           LDPC_DEC_EXPSYND_49  = 0x0;
           LDPC_DEC_EXPSYND_50  = 0x0;
           LDPC_DEC_EXPSYND_51  = 0x0;
           LDPC_DEC_EXPSYND_52  = 0x0;
           LDPC_DEC_EXPSYND_53  = 0x0;
           LDPC_DEC_EXPSYND_54  = 0x0;
           LDPC_DEC_EXPSYND_55  = 0x0;
           LDPC_DEC_EXPSYND_56  = 0x0;
           LDPC_DEC_EXPSYND_57  = 0x0;
           LDPC_DEC_EXPSYND_58  = 0x0;
           LDPC_DEC_EXPSYND_59  = 0x0;
           LDPC_DEC_EXPSYND_60  = 0x0;
           LDPC_DEC_EXPSYND_61  = 0x0;
           LDPC_DEC_EXPSYND_62  = 0x0;
           LDPC_DEC_EXPSYND_63  = 0x0;
           LDPC_DEC_EXPSYND_64  = 0x0;
           LDPC_DEC_EXPSYND_65  = 0x0;
           LDPC_DEC_EXPSYND_66  = 0x0;
           LDPC_DEC_EXPSYND_67  = 0x0;
           LDPC_DEC_EXPSYND_68  = 0x0;
           LDPC_DEC_EXPSYND_69  = 0x0;
           LDPC_DEC_EXPSYND_70  = 0x0;
           LDPC_DEC_EXPSYND_71  = 0x0;
           LDPC_DEC_EXPSYND_72  = 0x0;
           LDPC_DEC_EXPSYND_73  = 0x0;
           LDPC_DEC_EXPSYND_74  = 0x0;
           LDPC_DEC_EXPSYND_75  = 0x0;
           LDPC_DEC_EXPSYND_76  = 0x0;
           LDPC_DEC_EXPSYND_77  = 0x0;
           LDPC_DEC_EXPSYND_78  = 0x0;
           LDPC_DEC_EXPSYND_79  = 0x0;
           LDPC_DEC_EXPSYND_80  = 0x0;
           LDPC_DEC_EXPSYND_81  = 0x0;
           LDPC_DEC_EXPSYND_82  = 0x0;
           LDPC_DEC_EXPSYND_83  = 0x0;
           LDPC_DEC_EXPSYND_84  = 0x0;
           LDPC_DEC_EXPSYND_85  = 0x0;
           LDPC_DEC_EXPSYND_86  = 0x0;
           LDPC_DEC_EXPSYND_87  = 0x0;
           LDPC_DEC_EXPSYND_88  = 0x0;
           LDPC_DEC_EXPSYND_89  = 0x0;
           LDPC_DEC_EXPSYND_90  = 0x0;
           LDPC_DEC_EXPSYND_91  = 0x0;
           LDPC_DEC_EXPSYND_92  = 0x0;
           LDPC_DEC_EXPSYND_93  = 0x0;
           LDPC_DEC_EXPSYND_94  = 0x0;
           LDPC_DEC_EXPSYND_95  = 0x0;
           LDPC_DEC_EXPSYND_96  = 0x0;
           LDPC_DEC_EXPSYND_97  = 0x0;
           LDPC_DEC_EXPSYND_98  = 0x0;
           LDPC_DEC_EXPSYND_99  = 0x0;
           LDPC_DEC_EXPSYND_100  = 0x0;
           LDPC_DEC_EXPSYND_101  = 0x0;
           LDPC_DEC_EXPSYND_102  = 0x0;
           LDPC_DEC_EXPSYND_103  = 0x0;
           LDPC_DEC_EXPSYND_104  = 0x0;
           LDPC_DEC_EXPSYND_105  = 0x0;
           LDPC_DEC_EXPSYND_106  = 0x0;
           LDPC_DEC_EXPSYND_107  = 0x0;
           LDPC_DEC_EXPSYND_108  = 0x0;
           LDPC_DEC_EXPSYND_109  = 0x0;
           LDPC_DEC_EXPSYND_110  = 0x0;
           LDPC_DEC_EXPSYND_111  = 0x0;
           LDPC_DEC_EXPSYND_112  = 0x0;
           LDPC_DEC_EXPSYND_113  = 0x0;
           LDPC_DEC_EXPSYND_114  = 0x0;
           LDPC_DEC_EXPSYND_115  = 0x0;
           LDPC_DEC_EXPSYND_116  = 0x0;
           LDPC_DEC_EXPSYND_117  = 0x0;
           LDPC_DEC_EXPSYND_118  = 0x0;
           LDPC_DEC_EXPSYND_119  = 0x0;
           LDPC_DEC_EXPSYND_120  = 0x0;
           LDPC_DEC_EXPSYND_121  = 0x0;
           LDPC_DEC_EXPSYND_122  = 0x0;
           LDPC_DEC_EXPSYND_123  = 0x0;
           LDPC_DEC_EXPSYND_124  = 0x0;
           LDPC_DEC_EXPSYND_125  = 0x0;
           LDPC_DEC_EXPSYND_126  = 0x0;
           LDPC_DEC_EXPSYND_127  = 0x0;
           LDPC_DEC_EXPSYND_128  = 0x0;
           LDPC_DEC_EXPSYND_129  = 0x0;
           LDPC_DEC_EXPSYND_130  = 0x0;
           LDPC_DEC_EXPSYND_131  = 0x0;
           LDPC_DEC_EXPSYND_132  = 0x0;
           LDPC_DEC_EXPSYND_133  = 0x0;
           LDPC_DEC_EXPSYND_134  = 0x0;
           LDPC_DEC_EXPSYND_135  = 0x0;
           LDPC_DEC_EXPSYND_136  = 0x0;
           LDPC_DEC_EXPSYND_137  = 0x0;
           LDPC_DEC_EXPSYND_138  = 0x0;
           LDPC_DEC_EXPSYND_139  = 0x0;
           LDPC_DEC_EXPSYND_140  = 0x0;
           LDPC_DEC_EXPSYND_141  = 0x0;
           LDPC_DEC_EXPSYND_142  = 0x0;
           LDPC_DEC_EXPSYND_143  = 0x0;
           LDPC_DEC_EXPSYND_144  = 0x0;
           LDPC_DEC_EXPSYND_145  = 0x0;
           LDPC_DEC_EXPSYND_146  = 0x0;
           LDPC_DEC_EXPSYND_147  = 0x0;
           LDPC_DEC_EXPSYND_148  = 0x0;
           LDPC_DEC_EXPSYND_149  = 0x0;
           LDPC_DEC_EXPSYND_150  = 0x0;
           LDPC_DEC_EXPSYND_151  = 0x0;
           LDPC_DEC_EXPSYND_152  = 0x0;
           LDPC_DEC_EXPSYND_153  = 0x0;
           LDPC_DEC_EXPSYND_154  = 0x0;
           LDPC_DEC_EXPSYND_155  = 0x0;
           LDPC_DEC_EXPSYND_156  = 0x0;
           LDPC_DEC_EXPSYND_157  = 0x0;
           LDPC_DEC_EXPSYND_158  = 0x0;
           LDPC_DEC_EXPSYND_159  = 0x0;
           LDPC_DEC_EXPSYND_160  = 0x0;
           LDPC_DEC_EXPSYND_161  = 0x0;
           LDPC_DEC_EXPSYND_162  = 0x0;
           LDPC_DEC_EXPSYND_163  = 0x0;
           LDPC_DEC_EXPSYND_164  = 0x0;
           LDPC_DEC_EXPSYND_165  = 0x0;
           LDPC_DEC_EXPSYND_166  = 0x0;
           LDPC_DEC_EXPSYND_167  = 0x0; 
           LDPC_DEC_HamDist_loop_max  = 0x20;
           LDPC_DEC_HamDist_loop_percentage  = 110;
           LDPC_DEC_HamDist_iir1  = 85;
           LDPC_DEC_HamDist_iir2_NOT_USED = 15;
           LDPC_DEC_HamDist_iir3_NOT_USED  = 5;
           LDPC_DEC_start  = 0x1;
           LDPC_DEC_start  = 0x0;
           while( LDPC_DEC_converged_valid != 0x00000001) {}
           // status = LDPC_DEC_converged_status;
           
int final_cword  [208];
           final_cword [0] = LDPC_DEC_CODEWRD_OUT_BIT_0;
           final_cword [1] = LDPC_DEC_CODEWRD_OUT_BIT_1;
           final_cword [2] = LDPC_DEC_CODEWRD_OUT_BIT_2;
           final_cword [3] = LDPC_DEC_CODEWRD_OUT_BIT_3;
           final_cword [4] = LDPC_DEC_CODEWRD_OUT_BIT_4;
           final_cword [5] = LDPC_DEC_CODEWRD_OUT_BIT_5;
           final_cword [6] = LDPC_DEC_CODEWRD_OUT_BIT_6;
           final_cword [7] = LDPC_DEC_CODEWRD_OUT_BIT_7;
           final_cword [8] = LDPC_DEC_CODEWRD_OUT_BIT_8;
           final_cword [9] = LDPC_DEC_CODEWRD_OUT_BIT_9;
           final_cword [10] = LDPC_DEC_CODEWRD_OUT_BIT_10;
           final_cword [11] = LDPC_DEC_CODEWRD_OUT_BIT_11;
           final_cword [12] = LDPC_DEC_CODEWRD_OUT_BIT_12;
           final_cword [13] = LDPC_DEC_CODEWRD_OUT_BIT_13;
           final_cword [14] = LDPC_DEC_CODEWRD_OUT_BIT_14;
           final_cword [15] = LDPC_DEC_CODEWRD_OUT_BIT_15;
           final_cword [16] = LDPC_DEC_CODEWRD_OUT_BIT_16;
           final_cword [17] = LDPC_DEC_CODEWRD_OUT_BIT_17;
           final_cword [18] = LDPC_DEC_CODEWRD_OUT_BIT_18;
           final_cword [19] = LDPC_DEC_CODEWRD_OUT_BIT_19;
           final_cword [20] = LDPC_DEC_CODEWRD_OUT_BIT_20;
           final_cword [21] = LDPC_DEC_CODEWRD_OUT_BIT_21;
           final_cword [22] = LDPC_DEC_CODEWRD_OUT_BIT_22;
           final_cword [23] = LDPC_DEC_CODEWRD_OUT_BIT_23;
           final_cword [24] = LDPC_DEC_CODEWRD_OUT_BIT_24;
           final_cword [25] = LDPC_DEC_CODEWRD_OUT_BIT_25;
           final_cword [26] = LDPC_DEC_CODEWRD_OUT_BIT_26;
           final_cword [27] = LDPC_DEC_CODEWRD_OUT_BIT_27;
           final_cword [28] = LDPC_DEC_CODEWRD_OUT_BIT_28;
           final_cword [29] = LDPC_DEC_CODEWRD_OUT_BIT_29;
           final_cword [30] = LDPC_DEC_CODEWRD_OUT_BIT_30;
           final_cword [31] = LDPC_DEC_CODEWRD_OUT_BIT_31;
           final_cword [32] = LDPC_DEC_CODEWRD_OUT_BIT_32;
           final_cword [33] = LDPC_DEC_CODEWRD_OUT_BIT_33;
           final_cword [34] = LDPC_DEC_CODEWRD_OUT_BIT_34;
           final_cword [35] = LDPC_DEC_CODEWRD_OUT_BIT_35;
           final_cword [36] = LDPC_DEC_CODEWRD_OUT_BIT_36;
           final_cword [37] = LDPC_DEC_CODEWRD_OUT_BIT_37;
           final_cword [38] = LDPC_DEC_CODEWRD_OUT_BIT_38;
           final_cword [39] = LDPC_DEC_CODEWRD_OUT_BIT_39;
           final_cword [40] = LDPC_DEC_CODEWRD_OUT_BIT_40;
           final_cword [41] = LDPC_DEC_CODEWRD_OUT_BIT_41;
           final_cword [42] = LDPC_DEC_CODEWRD_OUT_BIT_42;
           final_cword [43] = LDPC_DEC_CODEWRD_OUT_BIT_43;
           final_cword [44] = LDPC_DEC_CODEWRD_OUT_BIT_44;
           final_cword [45] = LDPC_DEC_CODEWRD_OUT_BIT_45;
           final_cword [46] = LDPC_DEC_CODEWRD_OUT_BIT_46;
           final_cword [47] = LDPC_DEC_CODEWRD_OUT_BIT_47;
           final_cword [48] = LDPC_DEC_CODEWRD_OUT_BIT_48;
           final_cword [49] = LDPC_DEC_CODEWRD_OUT_BIT_49;
           final_cword [50] = LDPC_DEC_CODEWRD_OUT_BIT_50;
           final_cword [51] = LDPC_DEC_CODEWRD_OUT_BIT_51;
           final_cword [52] = LDPC_DEC_CODEWRD_OUT_BIT_52;
           final_cword [53] = LDPC_DEC_CODEWRD_OUT_BIT_53;
           final_cword [54] = LDPC_DEC_CODEWRD_OUT_BIT_54;
           final_cword [55] = LDPC_DEC_CODEWRD_OUT_BIT_55;
           final_cword [56] = LDPC_DEC_CODEWRD_OUT_BIT_56;
           final_cword [57] = LDPC_DEC_CODEWRD_OUT_BIT_57;
           final_cword [58] = LDPC_DEC_CODEWRD_OUT_BIT_58;
           final_cword [59] = LDPC_DEC_CODEWRD_OUT_BIT_59;
           final_cword [60] = LDPC_DEC_CODEWRD_OUT_BIT_60;
           final_cword [61] = LDPC_DEC_CODEWRD_OUT_BIT_61;
           final_cword [62] = LDPC_DEC_CODEWRD_OUT_BIT_62;
           final_cword [63] = LDPC_DEC_CODEWRD_OUT_BIT_63;
           final_cword [64] = LDPC_DEC_CODEWRD_OUT_BIT_64;
           final_cword [65] = LDPC_DEC_CODEWRD_OUT_BIT_65;
           final_cword [66] = LDPC_DEC_CODEWRD_OUT_BIT_66;
           final_cword [67] = LDPC_DEC_CODEWRD_OUT_BIT_67;
           final_cword [68] = LDPC_DEC_CODEWRD_OUT_BIT_68;
           final_cword [69] = LDPC_DEC_CODEWRD_OUT_BIT_69;
           final_cword [70] = LDPC_DEC_CODEWRD_OUT_BIT_70;
           final_cword [71] = LDPC_DEC_CODEWRD_OUT_BIT_71;
           final_cword [72] = LDPC_DEC_CODEWRD_OUT_BIT_72;
           final_cword [73] = LDPC_DEC_CODEWRD_OUT_BIT_73;
           final_cword [74] = LDPC_DEC_CODEWRD_OUT_BIT_74;
           final_cword [75] = LDPC_DEC_CODEWRD_OUT_BIT_75;
           final_cword [76] = LDPC_DEC_CODEWRD_OUT_BIT_76;
           final_cword [77] = LDPC_DEC_CODEWRD_OUT_BIT_77;
           final_cword [78] = LDPC_DEC_CODEWRD_OUT_BIT_78;
           final_cword [79] = LDPC_DEC_CODEWRD_OUT_BIT_79;
           final_cword [80] = LDPC_DEC_CODEWRD_OUT_BIT_80;
           final_cword [81] = LDPC_DEC_CODEWRD_OUT_BIT_81;
           final_cword [82] = LDPC_DEC_CODEWRD_OUT_BIT_82;
           final_cword [83] = LDPC_DEC_CODEWRD_OUT_BIT_83;
           final_cword [84] = LDPC_DEC_CODEWRD_OUT_BIT_84;
           final_cword [85] = LDPC_DEC_CODEWRD_OUT_BIT_85;
           final_cword [86] = LDPC_DEC_CODEWRD_OUT_BIT_86;
           final_cword [87] = LDPC_DEC_CODEWRD_OUT_BIT_87;
           final_cword [88] = LDPC_DEC_CODEWRD_OUT_BIT_88;
           final_cword [89] = LDPC_DEC_CODEWRD_OUT_BIT_89;
           final_cword [90] = LDPC_DEC_CODEWRD_OUT_BIT_90;
           final_cword [91] = LDPC_DEC_CODEWRD_OUT_BIT_91;
           final_cword [92] = LDPC_DEC_CODEWRD_OUT_BIT_92;
           final_cword [93] = LDPC_DEC_CODEWRD_OUT_BIT_93;
           final_cword [94] = LDPC_DEC_CODEWRD_OUT_BIT_94;
           final_cword [95] = LDPC_DEC_CODEWRD_OUT_BIT_95;
           final_cword [96] = LDPC_DEC_CODEWRD_OUT_BIT_96;
           final_cword [97] = LDPC_DEC_CODEWRD_OUT_BIT_97;
           final_cword [98] = LDPC_DEC_CODEWRD_OUT_BIT_98;
           final_cword [99] = LDPC_DEC_CODEWRD_OUT_BIT_99;
           final_cword [100] = LDPC_DEC_CODEWRD_OUT_BIT_100;
           final_cword [101] = LDPC_DEC_CODEWRD_OUT_BIT_101;
           final_cword [102] = LDPC_DEC_CODEWRD_OUT_BIT_102;
           final_cword [103] = LDPC_DEC_CODEWRD_OUT_BIT_103;
           final_cword [104] = LDPC_DEC_CODEWRD_OUT_BIT_104;
           final_cword [105] = LDPC_DEC_CODEWRD_OUT_BIT_105;
           final_cword [106] = LDPC_DEC_CODEWRD_OUT_BIT_106;
           final_cword [107] = LDPC_DEC_CODEWRD_OUT_BIT_107;
           final_cword [108] = LDPC_DEC_CODEWRD_OUT_BIT_108;
           final_cword [109] = LDPC_DEC_CODEWRD_OUT_BIT_109;
           final_cword [110] = LDPC_DEC_CODEWRD_OUT_BIT_110;
           final_cword [111] = LDPC_DEC_CODEWRD_OUT_BIT_111;
           final_cword [112] = LDPC_DEC_CODEWRD_OUT_BIT_112;
           final_cword [113] = LDPC_DEC_CODEWRD_OUT_BIT_113;
           final_cword [114] = LDPC_DEC_CODEWRD_OUT_BIT_114;
           final_cword [115] = LDPC_DEC_CODEWRD_OUT_BIT_115;
           final_cword [116] = LDPC_DEC_CODEWRD_OUT_BIT_116;
           final_cword [117] = LDPC_DEC_CODEWRD_OUT_BIT_117;
           final_cword [118] = LDPC_DEC_CODEWRD_OUT_BIT_118;
           final_cword [119] = LDPC_DEC_CODEWRD_OUT_BIT_119;
           final_cword [120] = LDPC_DEC_CODEWRD_OUT_BIT_120;
           final_cword [121] = LDPC_DEC_CODEWRD_OUT_BIT_121;
           final_cword [122] = LDPC_DEC_CODEWRD_OUT_BIT_122;
           final_cword [123] = LDPC_DEC_CODEWRD_OUT_BIT_123;
           final_cword [124] = LDPC_DEC_CODEWRD_OUT_BIT_124;
           final_cword [125] = LDPC_DEC_CODEWRD_OUT_BIT_125;
           final_cword [126] = LDPC_DEC_CODEWRD_OUT_BIT_126;
           final_cword [127] = LDPC_DEC_CODEWRD_OUT_BIT_127;
           final_cword [128] = LDPC_DEC_CODEWRD_OUT_BIT_128;
           final_cword [129] = LDPC_DEC_CODEWRD_OUT_BIT_129;
           final_cword [130] = LDPC_DEC_CODEWRD_OUT_BIT_130;
           final_cword [131] = LDPC_DEC_CODEWRD_OUT_BIT_131;
           final_cword [132] = LDPC_DEC_CODEWRD_OUT_BIT_132;
           final_cword [133] = LDPC_DEC_CODEWRD_OUT_BIT_133;
           final_cword [134] = LDPC_DEC_CODEWRD_OUT_BIT_134;
           final_cword [135] = LDPC_DEC_CODEWRD_OUT_BIT_135;
           final_cword [136] = LDPC_DEC_CODEWRD_OUT_BIT_136;
           final_cword [137] = LDPC_DEC_CODEWRD_OUT_BIT_137;
           final_cword [138] = LDPC_DEC_CODEWRD_OUT_BIT_138;
           final_cword [139] = LDPC_DEC_CODEWRD_OUT_BIT_139;
           final_cword [140] = LDPC_DEC_CODEWRD_OUT_BIT_140;
           final_cword [141] = LDPC_DEC_CODEWRD_OUT_BIT_141;
           final_cword [142] = LDPC_DEC_CODEWRD_OUT_BIT_142;
           final_cword [143] = LDPC_DEC_CODEWRD_OUT_BIT_143;
           final_cword [144] = LDPC_DEC_CODEWRD_OUT_BIT_144;
           final_cword [145] = LDPC_DEC_CODEWRD_OUT_BIT_145;
           final_cword [146] = LDPC_DEC_CODEWRD_OUT_BIT_146;
           final_cword [147] = LDPC_DEC_CODEWRD_OUT_BIT_147;
           final_cword [148] = LDPC_DEC_CODEWRD_OUT_BIT_148;
           final_cword [149] = LDPC_DEC_CODEWRD_OUT_BIT_149;
           final_cword [150] = LDPC_DEC_CODEWRD_OUT_BIT_150;
           final_cword [151] = LDPC_DEC_CODEWRD_OUT_BIT_151;
           final_cword [152] = LDPC_DEC_CODEWRD_OUT_BIT_152;
           final_cword [153] = LDPC_DEC_CODEWRD_OUT_BIT_153;
           final_cword [154] = LDPC_DEC_CODEWRD_OUT_BIT_154;
           final_cword [155] = LDPC_DEC_CODEWRD_OUT_BIT_155;
           final_cword [156] = LDPC_DEC_CODEWRD_OUT_BIT_156;
           final_cword [157] = LDPC_DEC_CODEWRD_OUT_BIT_157;
           final_cword [158] = LDPC_DEC_CODEWRD_OUT_BIT_158;
           final_cword [159] = LDPC_DEC_CODEWRD_OUT_BIT_159;
           final_cword [160] = LDPC_DEC_CODEWRD_OUT_BIT_160;
           final_cword [161] = LDPC_DEC_CODEWRD_OUT_BIT_161;
           final_cword [162] = LDPC_DEC_CODEWRD_OUT_BIT_162;
           final_cword [163] = LDPC_DEC_CODEWRD_OUT_BIT_163;
           final_cword [164] = LDPC_DEC_CODEWRD_OUT_BIT_164;
           final_cword [165] = LDPC_DEC_CODEWRD_OUT_BIT_165;
           final_cword [166] = LDPC_DEC_CODEWRD_OUT_BIT_166;
           final_cword [167] = LDPC_DEC_CODEWRD_OUT_BIT_167;
           final_cword [168] = LDPC_DEC_CODEWRD_OUT_BIT_168;
           final_cword [169] = LDPC_DEC_CODEWRD_OUT_BIT_169;
           final_cword [170] = LDPC_DEC_CODEWRD_OUT_BIT_170;
           final_cword [171] = LDPC_DEC_CODEWRD_OUT_BIT_171;
           final_cword [172] = LDPC_DEC_CODEWRD_OUT_BIT_172;
           final_cword [173] = LDPC_DEC_CODEWRD_OUT_BIT_173;
           final_cword [174] = LDPC_DEC_CODEWRD_OUT_BIT_174;
           final_cword [175] = LDPC_DEC_CODEWRD_OUT_BIT_175;
           final_cword [176] = LDPC_DEC_CODEWRD_OUT_BIT_176;
           final_cword [177] = LDPC_DEC_CODEWRD_OUT_BIT_177;
           final_cword [178] = LDPC_DEC_CODEWRD_OUT_BIT_178;
           final_cword [179] = LDPC_DEC_CODEWRD_OUT_BIT_179;
           final_cword [180] = LDPC_DEC_CODEWRD_OUT_BIT_180;
           final_cword [181] = LDPC_DEC_CODEWRD_OUT_BIT_181;
           final_cword [182] = LDPC_DEC_CODEWRD_OUT_BIT_182;
           final_cword [183] = LDPC_DEC_CODEWRD_OUT_BIT_183;
           final_cword [184] = LDPC_DEC_CODEWRD_OUT_BIT_184;
           final_cword [185] = LDPC_DEC_CODEWRD_OUT_BIT_185;
           final_cword [186] = LDPC_DEC_CODEWRD_OUT_BIT_186;
           final_cword [187] = LDPC_DEC_CODEWRD_OUT_BIT_187;
           final_cword [188] = LDPC_DEC_CODEWRD_OUT_BIT_188;
           final_cword [189] = LDPC_DEC_CODEWRD_OUT_BIT_189;
           final_cword [190] = LDPC_DEC_CODEWRD_OUT_BIT_190;
           final_cword [191] = LDPC_DEC_CODEWRD_OUT_BIT_191;
           final_cword [192] = LDPC_DEC_CODEWRD_OUT_BIT_192;
           final_cword [193] = LDPC_DEC_CODEWRD_OUT_BIT_193;
           final_cword [194] = LDPC_DEC_CODEWRD_OUT_BIT_194;
           final_cword [195] = LDPC_DEC_CODEWRD_OUT_BIT_195;
           final_cword [196] = LDPC_DEC_CODEWRD_OUT_BIT_196;
           final_cword [197] = LDPC_DEC_CODEWRD_OUT_BIT_197;
           final_cword [198] = LDPC_DEC_CODEWRD_OUT_BIT_198;
           final_cword [199] = LDPC_DEC_CODEWRD_OUT_BIT_199;
           final_cword [200] = LDPC_DEC_CODEWRD_OUT_BIT_200;
           final_cword [201] = LDPC_DEC_CODEWRD_OUT_BIT_201;
           final_cword [202] = LDPC_DEC_CODEWRD_OUT_BIT_202;
           final_cword [203] = LDPC_DEC_CODEWRD_OUT_BIT_203;
           final_cword [204] = LDPC_DEC_CODEWRD_OUT_BIT_204;
           final_cword [205] = LDPC_DEC_CODEWRD_OUT_BIT_205;
           final_cword [206] = LDPC_DEC_CODEWRD_OUT_BIT_206;
           final_cword [207] = LDPC_DEC_CODEWRD_OUT_BIT_207;
}


