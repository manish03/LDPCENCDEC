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
          #define  LDPC_ENC_MSG_IN_0 (*(volatile uint32_t *) 0x30000000 )
          #define  LDPC_ENC_MSG_IN_1 (*(volatile uint32_t *) 0x30000001 )
          #define  LDPC_ENC_MSG_IN_2 (*(volatile uint32_t *) 0x30000002 )
          #define  LDPC_ENC_MSG_IN_3 (*(volatile uint32_t *) 0x30000003 )
          #define  LDPC_ENC_MSG_IN_4 (*(volatile uint32_t *) 0x30000004 )
          #define  LDPC_ENC_MSG_IN_5 (*(volatile uint32_t *) 0x30000005 )
          #define  LDPC_ENC_MSG_IN_6 (*(volatile uint32_t *) 0x30000006 )
          #define  LDPC_ENC_MSG_IN_7 (*(volatile uint32_t *) 0x30000007 )
          #define  LDPC_ENC_MSG_IN_8 (*(volatile uint32_t *) 0x30000008 )
          #define  LDPC_ENC_MSG_IN_9 (*(volatile uint32_t *) 0x30000009 )
          #define  LDPC_ENC_MSG_IN_10 (*(volatile uint32_t *) 0x3000000a )
          #define  LDPC_ENC_MSG_IN_11 (*(volatile uint32_t *) 0x3000000b )
          #define  LDPC_ENC_MSG_IN_12 (*(volatile uint32_t *) 0x3000000c )
          #define  LDPC_ENC_MSG_IN_13 (*(volatile uint32_t *) 0x3000000d )
          #define  LDPC_ENC_MSG_IN_14 (*(volatile uint32_t *) 0x3000000e )
          #define  LDPC_ENC_MSG_IN_15 (*(volatile uint32_t *) 0x3000000f )
          #define  LDPC_ENC_MSG_IN_16 (*(volatile uint32_t *) 0x30000010 )
          #define  LDPC_ENC_MSG_IN_17 (*(volatile uint32_t *) 0x30000011 )
          #define  LDPC_ENC_MSG_IN_18 (*(volatile uint32_t *) 0x30000012 )
          #define  LDPC_ENC_MSG_IN_19 (*(volatile uint32_t *) 0x30000013 )
          #define  LDPC_ENC_MSG_IN_20 (*(volatile uint32_t *) 0x30000014 )
          #define  LDPC_ENC_MSG_IN_21 (*(volatile uint32_t *) 0x30000015 )
          #define  LDPC_ENC_MSG_IN_22 (*(volatile uint32_t *) 0x30000016 )
          #define  LDPC_ENC_MSG_IN_23 (*(volatile uint32_t *) 0x30000017 )
          #define  LDPC_ENC_MSG_IN_24 (*(volatile uint32_t *) 0x30000018 )
          #define  LDPC_ENC_MSG_IN_25 (*(volatile uint32_t *) 0x30000019 )
          #define  LDPC_ENC_MSG_IN_26 (*(volatile uint32_t *) 0x3000001a )
          #define  LDPC_ENC_MSG_IN_27 (*(volatile uint32_t *) 0x3000001b )
          #define  LDPC_ENC_MSG_IN_28 (*(volatile uint32_t *) 0x3000001c )
          #define  LDPC_ENC_MSG_IN_29 (*(volatile uint32_t *) 0x3000001d )
          #define  LDPC_ENC_MSG_IN_30 (*(volatile uint32_t *) 0x3000001e )
          #define  LDPC_ENC_MSG_IN_31 (*(volatile uint32_t *) 0x3000001f )
          #define  LDPC_ENC_MSG_IN_32 (*(volatile uint32_t *) 0x30000020 )
          #define  LDPC_ENC_MSG_IN_33 (*(volatile uint32_t *) 0x30000021 )
          #define  LDPC_ENC_MSG_IN_34 (*(volatile uint32_t *) 0x30000022 )
          #define  LDPC_ENC_MSG_IN_35 (*(volatile uint32_t *) 0x30000023 )
          #define  LDPC_ENC_MSG_IN_36 (*(volatile uint32_t *) 0x30000024 )
          #define  LDPC_ENC_MSG_IN_37 (*(volatile uint32_t *) 0x30000025 )
          #define  LDPC_ENC_MSG_IN_38 (*(volatile uint32_t *) 0x30000026 )
          #define  LDPC_ENC_MSG_IN_39 (*(volatile uint32_t *) 0x30000027 )
          #define  LDPC_ENC_CODEWRD_0 (*(volatile uint32_t *) 0x30000028 )
          #define  LDPC_ENC_CODEWRD_1 (*(volatile uint32_t *) 0x30000029 )
          #define  LDPC_ENC_CODEWRD_2 (*(volatile uint32_t *) 0x3000002a )
          #define  LDPC_ENC_CODEWRD_3 (*(volatile uint32_t *) 0x3000002b )
          #define  LDPC_ENC_CODEWRD_4 (*(volatile uint32_t *) 0x3000002c )
          #define  LDPC_ENC_CODEWRD_5 (*(volatile uint32_t *) 0x3000002d )
          #define  LDPC_ENC_CODEWRD_6 (*(volatile uint32_t *) 0x3000002e )
          #define  LDPC_ENC_CODEWRD_7 (*(volatile uint32_t *) 0x3000002f )
          #define  LDPC_ENC_CODEWRD_8 (*(volatile uint32_t *) 0x30000030 )
          #define  LDPC_ENC_CODEWRD_9 (*(volatile uint32_t *) 0x30000031 )
          #define  LDPC_ENC_CODEWRD_10 (*(volatile uint32_t *) 0x30000032 )
          #define  LDPC_ENC_CODEWRD_11 (*(volatile uint32_t *) 0x30000033 )
          #define  LDPC_ENC_CODEWRD_12 (*(volatile uint32_t *) 0x30000034 )
          #define  LDPC_ENC_CODEWRD_13 (*(volatile uint32_t *) 0x30000035 )
          #define  LDPC_ENC_CODEWRD_14 (*(volatile uint32_t *) 0x30000036 )
          #define  LDPC_ENC_CODEWRD_15 (*(volatile uint32_t *) 0x30000037 )
          #define  LDPC_ENC_CODEWRD_16 (*(volatile uint32_t *) 0x30000038 )
          #define  LDPC_ENC_CODEWRD_17 (*(volatile uint32_t *) 0x30000039 )
          #define  LDPC_ENC_CODEWRD_18 (*(volatile uint32_t *) 0x3000003a )
          #define  LDPC_ENC_CODEWRD_19 (*(volatile uint32_t *) 0x3000003b )
          #define  LDPC_ENC_CODEWRD_20 (*(volatile uint32_t *) 0x3000003c )
          #define  LDPC_ENC_CODEWRD_21 (*(volatile uint32_t *) 0x3000003d )
          #define  LDPC_ENC_CODEWRD_22 (*(volatile uint32_t *) 0x3000003e )
          #define  LDPC_ENC_CODEWRD_23 (*(volatile uint32_t *) 0x3000003f )
          #define  LDPC_ENC_CODEWRD_24 (*(volatile uint32_t *) 0x30000040 )
          #define  LDPC_ENC_CODEWRD_25 (*(volatile uint32_t *) 0x30000041 )
          #define  LDPC_ENC_CODEWRD_26 (*(volatile uint32_t *) 0x30000042 )
          #define  LDPC_ENC_CODEWRD_27 (*(volatile uint32_t *) 0x30000043 )
          #define  LDPC_ENC_CODEWRD_28 (*(volatile uint32_t *) 0x30000044 )
          #define  LDPC_ENC_CODEWRD_29 (*(volatile uint32_t *) 0x30000045 )
          #define  LDPC_ENC_CODEWRD_30 (*(volatile uint32_t *) 0x30000046 )
          #define  LDPC_ENC_CODEWRD_31 (*(volatile uint32_t *) 0x30000047 )
          #define  LDPC_ENC_CODEWRD_32 (*(volatile uint32_t *) 0x30000048 )
          #define  LDPC_ENC_CODEWRD_33 (*(volatile uint32_t *) 0x30000049 )
          #define  LDPC_ENC_CODEWRD_34 (*(volatile uint32_t *) 0x3000004a )
          #define  LDPC_ENC_CODEWRD_35 (*(volatile uint32_t *) 0x3000004b )
          #define  LDPC_ENC_CODEWRD_36 (*(volatile uint32_t *) 0x3000004c )
          #define  LDPC_ENC_CODEWRD_37 (*(volatile uint32_t *) 0x3000004d )
          #define  LDPC_ENC_CODEWRD_38 (*(volatile uint32_t *) 0x3000004e )
          #define  LDPC_ENC_CODEWRD_39 (*(volatile uint32_t *) 0x3000004f )
          #define  LDPC_ENC_CODEWRD_40 (*(volatile uint32_t *) 0x30000050 )
          #define  LDPC_ENC_CODEWRD_41 (*(volatile uint32_t *) 0x30000051 )
          #define  LDPC_ENC_CODEWRD_42 (*(volatile uint32_t *) 0x30000052 )
          #define  LDPC_ENC_CODEWRD_43 (*(volatile uint32_t *) 0x30000053 )
          #define  LDPC_ENC_CODEWRD_44 (*(volatile uint32_t *) 0x30000054 )
          #define  LDPC_ENC_CODEWRD_45 (*(volatile uint32_t *) 0x30000055 )
          #define  LDPC_ENC_CODEWRD_46 (*(volatile uint32_t *) 0x30000056 )
          #define  LDPC_ENC_CODEWRD_47 (*(volatile uint32_t *) 0x30000057 )
          #define  LDPC_ENC_CODEWRD_48 (*(volatile uint32_t *) 0x30000058 )
          #define  LDPC_ENC_CODEWRD_49 (*(volatile uint32_t *) 0x30000059 )
          #define  LDPC_ENC_CODEWRD_50 (*(volatile uint32_t *) 0x3000005a )
          #define  LDPC_ENC_CODEWRD_51 (*(volatile uint32_t *) 0x3000005b )
          #define  LDPC_ENC_CODEWRD_52 (*(volatile uint32_t *) 0x3000005c )
          #define  LDPC_ENC_CODEWRD_53 (*(volatile uint32_t *) 0x3000005d )
          #define  LDPC_ENC_CODEWRD_54 (*(volatile uint32_t *) 0x3000005e )
          #define  LDPC_ENC_CODEWRD_55 (*(volatile uint32_t *) 0x3000005f )
          #define  LDPC_ENC_CODEWRD_56 (*(volatile uint32_t *) 0x30000060 )
          #define  LDPC_ENC_CODEWRD_57 (*(volatile uint32_t *) 0x30000061 )
          #define  LDPC_ENC_CODEWRD_58 (*(volatile uint32_t *) 0x30000062 )
          #define  LDPC_ENC_CODEWRD_59 (*(volatile uint32_t *) 0x30000063 )
          #define  LDPC_ENC_CODEWRD_60 (*(volatile uint32_t *) 0x30000064 )
          #define  LDPC_ENC_CODEWRD_61 (*(volatile uint32_t *) 0x30000065 )
          #define  LDPC_ENC_CODEWRD_62 (*(volatile uint32_t *) 0x30000066 )
          #define  LDPC_ENC_CODEWRD_63 (*(volatile uint32_t *) 0x30000067 )
          #define  LDPC_ENC_CODEWRD_64 (*(volatile uint32_t *) 0x30000068 )
          #define  LDPC_ENC_CODEWRD_65 (*(volatile uint32_t *) 0x30000069 )
          #define  LDPC_ENC_CODEWRD_66 (*(volatile uint32_t *) 0x3000006a )
          #define  LDPC_ENC_CODEWRD_67 (*(volatile uint32_t *) 0x3000006b )
          #define  LDPC_ENC_CODEWRD_68 (*(volatile uint32_t *) 0x3000006c )
          #define  LDPC_ENC_CODEWRD_69 (*(volatile uint32_t *) 0x3000006d )
          #define  LDPC_ENC_CODEWRD_70 (*(volatile uint32_t *) 0x3000006e )
          #define  LDPC_ENC_CODEWRD_71 (*(volatile uint32_t *) 0x3000006f )
          #define  LDPC_ENC_CODEWRD_72 (*(volatile uint32_t *) 0x30000070 )
          #define  LDPC_ENC_CODEWRD_73 (*(volatile uint32_t *) 0x30000071 )
          #define  LDPC_ENC_CODEWRD_74 (*(volatile uint32_t *) 0x30000072 )
          #define  LDPC_ENC_CODEWRD_75 (*(volatile uint32_t *) 0x30000073 )
          #define  LDPC_ENC_CODEWRD_76 (*(volatile uint32_t *) 0x30000074 )
          #define  LDPC_ENC_CODEWRD_77 (*(volatile uint32_t *) 0x30000075 )
          #define  LDPC_ENC_CODEWRD_78 (*(volatile uint32_t *) 0x30000076 )
          #define  LDPC_ENC_CODEWRD_79 (*(volatile uint32_t *) 0x30000077 )
          #define  LDPC_ENC_CODEWRD_80 (*(volatile uint32_t *) 0x30000078 )
          #define  LDPC_ENC_CODEWRD_81 (*(volatile uint32_t *) 0x30000079 )
          #define  LDPC_ENC_CODEWRD_82 (*(volatile uint32_t *) 0x3000007a )
          #define  LDPC_ENC_CODEWRD_83 (*(volatile uint32_t *) 0x3000007b )
          #define  LDPC_ENC_CODEWRD_84 (*(volatile uint32_t *) 0x3000007c )
          #define  LDPC_ENC_CODEWRD_85 (*(volatile uint32_t *) 0x3000007d )
          #define  LDPC_ENC_CODEWRD_86 (*(volatile uint32_t *) 0x3000007e )
          #define  LDPC_ENC_CODEWRD_87 (*(volatile uint32_t *) 0x3000007f )
          #define  LDPC_ENC_CODEWRD_88 (*(volatile uint32_t *) 0x30000080 )
          #define  LDPC_ENC_CODEWRD_89 (*(volatile uint32_t *) 0x30000081 )
          #define  LDPC_ENC_CODEWRD_90 (*(volatile uint32_t *) 0x30000082 )
          #define  LDPC_ENC_CODEWRD_91 (*(volatile uint32_t *) 0x30000083 )
          #define  LDPC_ENC_CODEWRD_92 (*(volatile uint32_t *) 0x30000084 )
          #define  LDPC_ENC_CODEWRD_93 (*(volatile uint32_t *) 0x30000085 )
          #define  LDPC_ENC_CODEWRD_94 (*(volatile uint32_t *) 0x30000086 )
          #define  LDPC_ENC_CODEWRD_95 (*(volatile uint32_t *) 0x30000087 )
          #define  LDPC_ENC_CODEWRD_96 (*(volatile uint32_t *) 0x30000088 )
          #define  LDPC_ENC_CODEWRD_97 (*(volatile uint32_t *) 0x30000089 )
          #define  LDPC_ENC_CODEWRD_98 (*(volatile uint32_t *) 0x3000008a )
          #define  LDPC_ENC_CODEWRD_99 (*(volatile uint32_t *) 0x3000008b )
          #define  LDPC_ENC_CODEWRD_100 (*(volatile uint32_t *) 0x3000008c )
          #define  LDPC_ENC_CODEWRD_101 (*(volatile uint32_t *) 0x3000008d )
          #define  LDPC_ENC_CODEWRD_102 (*(volatile uint32_t *) 0x3000008e )
          #define  LDPC_ENC_CODEWRD_103 (*(volatile uint32_t *) 0x3000008f )
          #define  LDPC_ENC_CODEWRD_104 (*(volatile uint32_t *) 0x30000090 )
          #define  LDPC_ENC_CODEWRD_105 (*(volatile uint32_t *) 0x30000091 )
          #define  LDPC_ENC_CODEWRD_106 (*(volatile uint32_t *) 0x30000092 )
          #define  LDPC_ENC_CODEWRD_107 (*(volatile uint32_t *) 0x30000093 )
          #define  LDPC_ENC_CODEWRD_108 (*(volatile uint32_t *) 0x30000094 )
          #define  LDPC_ENC_CODEWRD_109 (*(volatile uint32_t *) 0x30000095 )
          #define  LDPC_ENC_CODEWRD_110 (*(volatile uint32_t *) 0x30000096 )
          #define  LDPC_ENC_CODEWRD_111 (*(volatile uint32_t *) 0x30000097 )
          #define  LDPC_ENC_CODEWRD_112 (*(volatile uint32_t *) 0x30000098 )
          #define  LDPC_ENC_CODEWRD_113 (*(volatile uint32_t *) 0x30000099 )
          #define  LDPC_ENC_CODEWRD_114 (*(volatile uint32_t *) 0x3000009a )
          #define  LDPC_ENC_CODEWRD_115 (*(volatile uint32_t *) 0x3000009b )
          #define  LDPC_ENC_CODEWRD_116 (*(volatile uint32_t *) 0x3000009c )
          #define  LDPC_ENC_CODEWRD_117 (*(volatile uint32_t *) 0x3000009d )
          #define  LDPC_ENC_CODEWRD_118 (*(volatile uint32_t *) 0x3000009e )
          #define  LDPC_ENC_CODEWRD_119 (*(volatile uint32_t *) 0x3000009f )
          #define  LDPC_ENC_CODEWRD_120 (*(volatile uint32_t *) 0x300000a0 )
          #define  LDPC_ENC_CODEWRD_121 (*(volatile uint32_t *) 0x300000a1 )
          #define  LDPC_ENC_CODEWRD_122 (*(volatile uint32_t *) 0x300000a2 )
          #define  LDPC_ENC_CODEWRD_123 (*(volatile uint32_t *) 0x300000a3 )
          #define  LDPC_ENC_CODEWRD_124 (*(volatile uint32_t *) 0x300000a4 )
          #define  LDPC_ENC_CODEWRD_125 (*(volatile uint32_t *) 0x300000a5 )
          #define  LDPC_ENC_CODEWRD_126 (*(volatile uint32_t *) 0x300000a6 )
          #define  LDPC_ENC_CODEWRD_127 (*(volatile uint32_t *) 0x300000a7 )
          #define  LDPC_ENC_CODEWRD_128 (*(volatile uint32_t *) 0x300000a8 )
          #define  LDPC_ENC_CODEWRD_129 (*(volatile uint32_t *) 0x300000a9 )
          #define  LDPC_ENC_CODEWRD_130 (*(volatile uint32_t *) 0x300000aa )
          #define  LDPC_ENC_CODEWRD_131 (*(volatile uint32_t *) 0x300000ab )
          #define  LDPC_ENC_CODEWRD_132 (*(volatile uint32_t *) 0x300000ac )
          #define  LDPC_ENC_CODEWRD_133 (*(volatile uint32_t *) 0x300000ad )
          #define  LDPC_ENC_CODEWRD_134 (*(volatile uint32_t *) 0x300000ae )
          #define  LDPC_ENC_CODEWRD_135 (*(volatile uint32_t *) 0x300000af )
          #define  LDPC_ENC_CODEWRD_136 (*(volatile uint32_t *) 0x300000b0 )
          #define  LDPC_ENC_CODEWRD_137 (*(volatile uint32_t *) 0x300000b1 )
          #define  LDPC_ENC_CODEWRD_138 (*(volatile uint32_t *) 0x300000b2 )
          #define  LDPC_ENC_CODEWRD_139 (*(volatile uint32_t *) 0x300000b3 )
          #define  LDPC_ENC_CODEWRD_140 (*(volatile uint32_t *) 0x300000b4 )
          #define  LDPC_ENC_CODEWRD_141 (*(volatile uint32_t *) 0x300000b5 )
          #define  LDPC_ENC_CODEWRD_142 (*(volatile uint32_t *) 0x300000b6 )
          #define  LDPC_ENC_CODEWRD_143 (*(volatile uint32_t *) 0x300000b7 )
          #define  LDPC_ENC_CODEWRD_144 (*(volatile uint32_t *) 0x300000b8 )
          #define  LDPC_ENC_CODEWRD_145 (*(volatile uint32_t *) 0x300000b9 )
          #define  LDPC_ENC_CODEWRD_146 (*(volatile uint32_t *) 0x300000ba )
          #define  LDPC_ENC_CODEWRD_147 (*(volatile uint32_t *) 0x300000bb )
          #define  LDPC_ENC_CODEWRD_148 (*(volatile uint32_t *) 0x300000bc )
          #define  LDPC_ENC_CODEWRD_149 (*(volatile uint32_t *) 0x300000bd )
          #define  LDPC_ENC_CODEWRD_150 (*(volatile uint32_t *) 0x300000be )
          #define  LDPC_ENC_CODEWRD_151 (*(volatile uint32_t *) 0x300000bf )
          #define  LDPC_ENC_CODEWRD_152 (*(volatile uint32_t *) 0x300000c0 )
          #define  LDPC_ENC_CODEWRD_153 (*(volatile uint32_t *) 0x300000c1 )
          #define  LDPC_ENC_CODEWRD_154 (*(volatile uint32_t *) 0x300000c2 )
          #define  LDPC_ENC_CODEWRD_155 (*(volatile uint32_t *) 0x300000c3 )
          #define  LDPC_ENC_CODEWRD_156 (*(volatile uint32_t *) 0x300000c4 )
          #define  LDPC_ENC_CODEWRD_157 (*(volatile uint32_t *) 0x300000c5 )
          #define  LDPC_ENC_CODEWRD_158 (*(volatile uint32_t *) 0x300000c6 )
          #define  LDPC_ENC_CODEWRD_159 (*(volatile uint32_t *) 0x300000c7 )
          #define  LDPC_ENC_CODEWRD_160 (*(volatile uint32_t *) 0x300000c8 )
          #define  LDPC_ENC_CODEWRD_161 (*(volatile uint32_t *) 0x300000c9 )
          #define  LDPC_ENC_CODEWRD_162 (*(volatile uint32_t *) 0x300000ca )
          #define  LDPC_ENC_CODEWRD_163 (*(volatile uint32_t *) 0x300000cb )
          #define  LDPC_ENC_CODEWRD_164 (*(volatile uint32_t *) 0x300000cc )
          #define  LDPC_ENC_CODEWRD_165 (*(volatile uint32_t *) 0x300000cd )
          #define  LDPC_ENC_CODEWRD_166 (*(volatile uint32_t *) 0x300000ce )
          #define  LDPC_ENC_CODEWRD_167 (*(volatile uint32_t *) 0x300000cf )
          #define  LDPC_ENC_CODEWRD_168 (*(volatile uint32_t *) 0x300000d0 )
          #define  LDPC_ENC_CODEWRD_169 (*(volatile uint32_t *) 0x300000d1 )
          #define  LDPC_ENC_CODEWRD_170 (*(volatile uint32_t *) 0x300000d2 )
          #define  LDPC_ENC_CODEWRD_171 (*(volatile uint32_t *) 0x300000d3 )
          #define  LDPC_ENC_CODEWRD_172 (*(volatile uint32_t *) 0x300000d4 )
          #define  LDPC_ENC_CODEWRD_173 (*(volatile uint32_t *) 0x300000d5 )
          #define  LDPC_ENC_CODEWRD_174 (*(volatile uint32_t *) 0x300000d6 )
          #define  LDPC_ENC_CODEWRD_175 (*(volatile uint32_t *) 0x300000d7 )
          #define  LDPC_ENC_CODEWRD_176 (*(volatile uint32_t *) 0x300000d8 )
          #define  LDPC_ENC_CODEWRD_177 (*(volatile uint32_t *) 0x300000d9 )
          #define  LDPC_ENC_CODEWRD_178 (*(volatile uint32_t *) 0x300000da )
          #define  LDPC_ENC_CODEWRD_179 (*(volatile uint32_t *) 0x300000db )
          #define  LDPC_ENC_CODEWRD_180 (*(volatile uint32_t *) 0x300000dc )
          #define  LDPC_ENC_CODEWRD_181 (*(volatile uint32_t *) 0x300000dd )
          #define  LDPC_ENC_CODEWRD_182 (*(volatile uint32_t *) 0x300000de )
          #define  LDPC_ENC_CODEWRD_183 (*(volatile uint32_t *) 0x300000df )
          #define  LDPC_ENC_CODEWRD_184 (*(volatile uint32_t *) 0x300000e0 )
          #define  LDPC_ENC_CODEWRD_185 (*(volatile uint32_t *) 0x300000e1 )
          #define  LDPC_ENC_CODEWRD_186 (*(volatile uint32_t *) 0x300000e2 )
          #define  LDPC_ENC_CODEWRD_187 (*(volatile uint32_t *) 0x300000e3 )
          #define  LDPC_ENC_CODEWRD_188 (*(volatile uint32_t *) 0x300000e4 )
          #define  LDPC_ENC_CODEWRD_189 (*(volatile uint32_t *) 0x300000e5 )
          #define  LDPC_ENC_CODEWRD_190 (*(volatile uint32_t *) 0x300000e6 )
          #define  LDPC_ENC_CODEWRD_191 (*(volatile uint32_t *) 0x300000e7 )
          #define  LDPC_ENC_CODEWRD_192 (*(volatile uint32_t *) 0x300000e8 )
          #define  LDPC_ENC_CODEWRD_193 (*(volatile uint32_t *) 0x300000e9 )
          #define  LDPC_ENC_CODEWRD_194 (*(volatile uint32_t *) 0x300000ea )
          #define  LDPC_ENC_CODEWRD_195 (*(volatile uint32_t *) 0x300000eb )
          #define  LDPC_ENC_CODEWRD_196 (*(volatile uint32_t *) 0x300000ec )
          #define  LDPC_ENC_CODEWRD_197 (*(volatile uint32_t *) 0x300000ed )
          #define  LDPC_ENC_CODEWRD_198 (*(volatile uint32_t *) 0x300000ee )
          #define  LDPC_ENC_CODEWRD_199 (*(volatile uint32_t *) 0x300000ef )
          #define  LDPC_ENC_CODEWRD_200 (*(volatile uint32_t *) 0x300000f0 )
          #define  LDPC_ENC_CODEWRD_201 (*(volatile uint32_t *) 0x300000f1 )
          #define  LDPC_ENC_CODEWRD_202 (*(volatile uint32_t *) 0x300000f2 )
          #define  LDPC_ENC_CODEWRD_203 (*(volatile uint32_t *) 0x300000f3 )
          #define  LDPC_ENC_CODEWRD_204 (*(volatile uint32_t *) 0x300000f4 )
          #define  LDPC_ENC_CODEWRD_205 (*(volatile uint32_t *) 0x300000f5 )
          #define  LDPC_ENC_CODEWRD_206 (*(volatile uint32_t *) 0x300000f6 )
          #define  LDPC_ENC_CODEWRD_207 (*(volatile uint32_t *) 0x300000f7 )
          #define  LDPC_ENC_CODEWRD_VLD (*(volatile uint32_t *) 0x300000f8 )
          #define  LDPC_DEC_CODEWRD_0 (*(volatile uint32_t *) 0x300000f9 )
          #define  LDPC_DEC_CODEWRD_1 (*(volatile uint32_t *) 0x300000fa )
          #define  LDPC_DEC_CODEWRD_2 (*(volatile uint32_t *) 0x300000fb )
          #define  LDPC_DEC_CODEWRD_3 (*(volatile uint32_t *) 0x300000fc )
          #define  LDPC_DEC_CODEWRD_4 (*(volatile uint32_t *) 0x300000fd )
          #define  LDPC_DEC_CODEWRD_5 (*(volatile uint32_t *) 0x300000fe )
          #define  LDPC_DEC_CODEWRD_6 (*(volatile uint32_t *) 0x300000ff )
          #define  LDPC_DEC_CODEWRD_7 (*(volatile uint32_t *) 0x30000100 )
          #define  LDPC_DEC_CODEWRD_8 (*(volatile uint32_t *) 0x30000101 )
          #define  LDPC_DEC_CODEWRD_9 (*(volatile uint32_t *) 0x30000102 )
          #define  LDPC_DEC_CODEWRD_10 (*(volatile uint32_t *) 0x30000103 )
          #define  LDPC_DEC_CODEWRD_11 (*(volatile uint32_t *) 0x30000104 )
          #define  LDPC_DEC_CODEWRD_12 (*(volatile uint32_t *) 0x30000105 )
          #define  LDPC_DEC_CODEWRD_13 (*(volatile uint32_t *) 0x30000106 )
          #define  LDPC_DEC_CODEWRD_14 (*(volatile uint32_t *) 0x30000107 )
          #define  LDPC_DEC_CODEWRD_15 (*(volatile uint32_t *) 0x30000108 )
          #define  LDPC_DEC_CODEWRD_16 (*(volatile uint32_t *) 0x30000109 )
          #define  LDPC_DEC_CODEWRD_17 (*(volatile uint32_t *) 0x3000010a )
          #define  LDPC_DEC_CODEWRD_18 (*(volatile uint32_t *) 0x3000010b )
          #define  LDPC_DEC_CODEWRD_19 (*(volatile uint32_t *) 0x3000010c )
          #define  LDPC_DEC_CODEWRD_20 (*(volatile uint32_t *) 0x3000010d )
          #define  LDPC_DEC_CODEWRD_21 (*(volatile uint32_t *) 0x3000010e )
          #define  LDPC_DEC_CODEWRD_22 (*(volatile uint32_t *) 0x3000010f )
          #define  LDPC_DEC_CODEWRD_23 (*(volatile uint32_t *) 0x30000110 )
          #define  LDPC_DEC_CODEWRD_24 (*(volatile uint32_t *) 0x30000111 )
          #define  LDPC_DEC_CODEWRD_25 (*(volatile uint32_t *) 0x30000112 )
          #define  LDPC_DEC_CODEWRD_26 (*(volatile uint32_t *) 0x30000113 )
          #define  LDPC_DEC_CODEWRD_27 (*(volatile uint32_t *) 0x30000114 )
          #define  LDPC_DEC_CODEWRD_28 (*(volatile uint32_t *) 0x30000115 )
          #define  LDPC_DEC_CODEWRD_29 (*(volatile uint32_t *) 0x30000116 )
          #define  LDPC_DEC_CODEWRD_30 (*(volatile uint32_t *) 0x30000117 )
          #define  LDPC_DEC_CODEWRD_31 (*(volatile uint32_t *) 0x30000118 )
          #define  LDPC_DEC_CODEWRD_32 (*(volatile uint32_t *) 0x30000119 )
          #define  LDPC_DEC_CODEWRD_33 (*(volatile uint32_t *) 0x3000011a )
          #define  LDPC_DEC_CODEWRD_34 (*(volatile uint32_t *) 0x3000011b )
          #define  LDPC_DEC_CODEWRD_35 (*(volatile uint32_t *) 0x3000011c )
          #define  LDPC_DEC_CODEWRD_36 (*(volatile uint32_t *) 0x3000011d )
          #define  LDPC_DEC_CODEWRD_37 (*(volatile uint32_t *) 0x3000011e )
          #define  LDPC_DEC_CODEWRD_38 (*(volatile uint32_t *) 0x3000011f )
          #define  LDPC_DEC_CODEWRD_39 (*(volatile uint32_t *) 0x30000120 )
          #define  LDPC_DEC_CODEWRD_40 (*(volatile uint32_t *) 0x30000121 )
          #define  LDPC_DEC_CODEWRD_41 (*(volatile uint32_t *) 0x30000122 )
          #define  LDPC_DEC_CODEWRD_42 (*(volatile uint32_t *) 0x30000123 )
          #define  LDPC_DEC_CODEWRD_43 (*(volatile uint32_t *) 0x30000124 )
          #define  LDPC_DEC_CODEWRD_44 (*(volatile uint32_t *) 0x30000125 )
          #define  LDPC_DEC_CODEWRD_45 (*(volatile uint32_t *) 0x30000126 )
          #define  LDPC_DEC_CODEWRD_46 (*(volatile uint32_t *) 0x30000127 )
          #define  LDPC_DEC_CODEWRD_47 (*(volatile uint32_t *) 0x30000128 )
          #define  LDPC_DEC_CODEWRD_48 (*(volatile uint32_t *) 0x30000129 )
          #define  LDPC_DEC_CODEWRD_49 (*(volatile uint32_t *) 0x3000012a )
          #define  LDPC_DEC_CODEWRD_50 (*(volatile uint32_t *) 0x3000012b )
          #define  LDPC_DEC_CODEWRD_51 (*(volatile uint32_t *) 0x3000012c )
          #define  LDPC_DEC_CODEWRD_52 (*(volatile uint32_t *) 0x3000012d )
          #define  LDPC_DEC_CODEWRD_53 (*(volatile uint32_t *) 0x3000012e )
          #define  LDPC_DEC_CODEWRD_54 (*(volatile uint32_t *) 0x3000012f )
          #define  LDPC_DEC_CODEWRD_55 (*(volatile uint32_t *) 0x30000130 )
          #define  LDPC_DEC_CODEWRD_56 (*(volatile uint32_t *) 0x30000131 )
          #define  LDPC_DEC_CODEWRD_57 (*(volatile uint32_t *) 0x30000132 )
          #define  LDPC_DEC_CODEWRD_58 (*(volatile uint32_t *) 0x30000133 )
          #define  LDPC_DEC_CODEWRD_59 (*(volatile uint32_t *) 0x30000134 )
          #define  LDPC_DEC_CODEWRD_60 (*(volatile uint32_t *) 0x30000135 )
          #define  LDPC_DEC_CODEWRD_61 (*(volatile uint32_t *) 0x30000136 )
          #define  LDPC_DEC_CODEWRD_62 (*(volatile uint32_t *) 0x30000137 )
          #define  LDPC_DEC_CODEWRD_63 (*(volatile uint32_t *) 0x30000138 )
          #define  LDPC_DEC_CODEWRD_64 (*(volatile uint32_t *) 0x30000139 )
          #define  LDPC_DEC_CODEWRD_65 (*(volatile uint32_t *) 0x3000013a )
          #define  LDPC_DEC_CODEWRD_66 (*(volatile uint32_t *) 0x3000013b )
          #define  LDPC_DEC_CODEWRD_67 (*(volatile uint32_t *) 0x3000013c )
          #define  LDPC_DEC_CODEWRD_68 (*(volatile uint32_t *) 0x3000013d )
          #define  LDPC_DEC_CODEWRD_69 (*(volatile uint32_t *) 0x3000013e )
          #define  LDPC_DEC_CODEWRD_70 (*(volatile uint32_t *) 0x3000013f )
          #define  LDPC_DEC_CODEWRD_71 (*(volatile uint32_t *) 0x30000140 )
          #define  LDPC_DEC_CODEWRD_72 (*(volatile uint32_t *) 0x30000141 )
          #define  LDPC_DEC_CODEWRD_73 (*(volatile uint32_t *) 0x30000142 )
          #define  LDPC_DEC_CODEWRD_74 (*(volatile uint32_t *) 0x30000143 )
          #define  LDPC_DEC_CODEWRD_75 (*(volatile uint32_t *) 0x30000144 )
          #define  LDPC_DEC_CODEWRD_76 (*(volatile uint32_t *) 0x30000145 )
          #define  LDPC_DEC_CODEWRD_77 (*(volatile uint32_t *) 0x30000146 )
          #define  LDPC_DEC_CODEWRD_78 (*(volatile uint32_t *) 0x30000147 )
          #define  LDPC_DEC_CODEWRD_79 (*(volatile uint32_t *) 0x30000148 )
          #define  LDPC_DEC_CODEWRD_80 (*(volatile uint32_t *) 0x30000149 )
          #define  LDPC_DEC_CODEWRD_81 (*(volatile uint32_t *) 0x3000014a )
          #define  LDPC_DEC_CODEWRD_82 (*(volatile uint32_t *) 0x3000014b )
          #define  LDPC_DEC_CODEWRD_83 (*(volatile uint32_t *) 0x3000014c )
          #define  LDPC_DEC_CODEWRD_84 (*(volatile uint32_t *) 0x3000014d )
          #define  LDPC_DEC_CODEWRD_85 (*(volatile uint32_t *) 0x3000014e )
          #define  LDPC_DEC_CODEWRD_86 (*(volatile uint32_t *) 0x3000014f )
          #define  LDPC_DEC_CODEWRD_87 (*(volatile uint32_t *) 0x30000150 )
          #define  LDPC_DEC_CODEWRD_88 (*(volatile uint32_t *) 0x30000151 )
          #define  LDPC_DEC_CODEWRD_89 (*(volatile uint32_t *) 0x30000152 )
          #define  LDPC_DEC_CODEWRD_90 (*(volatile uint32_t *) 0x30000153 )
          #define  LDPC_DEC_CODEWRD_91 (*(volatile uint32_t *) 0x30000154 )
          #define  LDPC_DEC_CODEWRD_92 (*(volatile uint32_t *) 0x30000155 )
          #define  LDPC_DEC_CODEWRD_93 (*(volatile uint32_t *) 0x30000156 )
          #define  LDPC_DEC_CODEWRD_94 (*(volatile uint32_t *) 0x30000157 )
          #define  LDPC_DEC_CODEWRD_95 (*(volatile uint32_t *) 0x30000158 )
          #define  LDPC_DEC_CODEWRD_96 (*(volatile uint32_t *) 0x30000159 )
          #define  LDPC_DEC_CODEWRD_97 (*(volatile uint32_t *) 0x3000015a )
          #define  LDPC_DEC_CODEWRD_98 (*(volatile uint32_t *) 0x3000015b )
          #define  LDPC_DEC_CODEWRD_99 (*(volatile uint32_t *) 0x3000015c )
          #define  LDPC_DEC_CODEWRD_100 (*(volatile uint32_t *) 0x3000015d )
          #define  LDPC_DEC_CODEWRD_101 (*(volatile uint32_t *) 0x3000015e )
          #define  LDPC_DEC_CODEWRD_102 (*(volatile uint32_t *) 0x3000015f )
          #define  LDPC_DEC_CODEWRD_103 (*(volatile uint32_t *) 0x30000160 )
          #define  LDPC_DEC_CODEWRD_104 (*(volatile uint32_t *) 0x30000161 )
          #define  LDPC_DEC_CODEWRD_105 (*(volatile uint32_t *) 0x30000162 )
          #define  LDPC_DEC_CODEWRD_106 (*(volatile uint32_t *) 0x30000163 )
          #define  LDPC_DEC_CODEWRD_107 (*(volatile uint32_t *) 0x30000164 )
          #define  LDPC_DEC_CODEWRD_108 (*(volatile uint32_t *) 0x30000165 )
          #define  LDPC_DEC_CODEWRD_109 (*(volatile uint32_t *) 0x30000166 )
          #define  LDPC_DEC_CODEWRD_110 (*(volatile uint32_t *) 0x30000167 )
          #define  LDPC_DEC_CODEWRD_111 (*(volatile uint32_t *) 0x30000168 )
          #define  LDPC_DEC_CODEWRD_112 (*(volatile uint32_t *) 0x30000169 )
          #define  LDPC_DEC_CODEWRD_113 (*(volatile uint32_t *) 0x3000016a )
          #define  LDPC_DEC_CODEWRD_114 (*(volatile uint32_t *) 0x3000016b )
          #define  LDPC_DEC_CODEWRD_115 (*(volatile uint32_t *) 0x3000016c )
          #define  LDPC_DEC_CODEWRD_116 (*(volatile uint32_t *) 0x3000016d )
          #define  LDPC_DEC_CODEWRD_117 (*(volatile uint32_t *) 0x3000016e )
          #define  LDPC_DEC_CODEWRD_118 (*(volatile uint32_t *) 0x3000016f )
          #define  LDPC_DEC_CODEWRD_119 (*(volatile uint32_t *) 0x30000170 )
          #define  LDPC_DEC_CODEWRD_120 (*(volatile uint32_t *) 0x30000171 )
          #define  LDPC_DEC_CODEWRD_121 (*(volatile uint32_t *) 0x30000172 )
          #define  LDPC_DEC_CODEWRD_122 (*(volatile uint32_t *) 0x30000173 )
          #define  LDPC_DEC_CODEWRD_123 (*(volatile uint32_t *) 0x30000174 )
          #define  LDPC_DEC_CODEWRD_124 (*(volatile uint32_t *) 0x30000175 )
          #define  LDPC_DEC_CODEWRD_125 (*(volatile uint32_t *) 0x30000176 )
          #define  LDPC_DEC_CODEWRD_126 (*(volatile uint32_t *) 0x30000177 )
          #define  LDPC_DEC_CODEWRD_127 (*(volatile uint32_t *) 0x30000178 )
          #define  LDPC_DEC_CODEWRD_128 (*(volatile uint32_t *) 0x30000179 )
          #define  LDPC_DEC_CODEWRD_129 (*(volatile uint32_t *) 0x3000017a )
          #define  LDPC_DEC_CODEWRD_130 (*(volatile uint32_t *) 0x3000017b )
          #define  LDPC_DEC_CODEWRD_131 (*(volatile uint32_t *) 0x3000017c )
          #define  LDPC_DEC_CODEWRD_132 (*(volatile uint32_t *) 0x3000017d )
          #define  LDPC_DEC_CODEWRD_133 (*(volatile uint32_t *) 0x3000017e )
          #define  LDPC_DEC_CODEWRD_134 (*(volatile uint32_t *) 0x3000017f )
          #define  LDPC_DEC_CODEWRD_135 (*(volatile uint32_t *) 0x30000180 )
          #define  LDPC_DEC_CODEWRD_136 (*(volatile uint32_t *) 0x30000181 )
          #define  LDPC_DEC_CODEWRD_137 (*(volatile uint32_t *) 0x30000182 )
          #define  LDPC_DEC_CODEWRD_138 (*(volatile uint32_t *) 0x30000183 )
          #define  LDPC_DEC_CODEWRD_139 (*(volatile uint32_t *) 0x30000184 )
          #define  LDPC_DEC_CODEWRD_140 (*(volatile uint32_t *) 0x30000185 )
          #define  LDPC_DEC_CODEWRD_141 (*(volatile uint32_t *) 0x30000186 )
          #define  LDPC_DEC_CODEWRD_142 (*(volatile uint32_t *) 0x30000187 )
          #define  LDPC_DEC_CODEWRD_143 (*(volatile uint32_t *) 0x30000188 )
          #define  LDPC_DEC_CODEWRD_144 (*(volatile uint32_t *) 0x30000189 )
          #define  LDPC_DEC_CODEWRD_145 (*(volatile uint32_t *) 0x3000018a )
          #define  LDPC_DEC_CODEWRD_146 (*(volatile uint32_t *) 0x3000018b )
          #define  LDPC_DEC_CODEWRD_147 (*(volatile uint32_t *) 0x3000018c )
          #define  LDPC_DEC_CODEWRD_148 (*(volatile uint32_t *) 0x3000018d )
          #define  LDPC_DEC_CODEWRD_149 (*(volatile uint32_t *) 0x3000018e )
          #define  LDPC_DEC_CODEWRD_150 (*(volatile uint32_t *) 0x3000018f )
          #define  LDPC_DEC_CODEWRD_151 (*(volatile uint32_t *) 0x30000190 )
          #define  LDPC_DEC_CODEWRD_152 (*(volatile uint32_t *) 0x30000191 )
          #define  LDPC_DEC_CODEWRD_153 (*(volatile uint32_t *) 0x30000192 )
          #define  LDPC_DEC_CODEWRD_154 (*(volatile uint32_t *) 0x30000193 )
          #define  LDPC_DEC_CODEWRD_155 (*(volatile uint32_t *) 0x30000194 )
          #define  LDPC_DEC_CODEWRD_156 (*(volatile uint32_t *) 0x30000195 )
          #define  LDPC_DEC_CODEWRD_157 (*(volatile uint32_t *) 0x30000196 )
          #define  LDPC_DEC_CODEWRD_158 (*(volatile uint32_t *) 0x30000197 )
          #define  LDPC_DEC_CODEWRD_159 (*(volatile uint32_t *) 0x30000198 )
          #define  LDPC_DEC_CODEWRD_160 (*(volatile uint32_t *) 0x30000199 )
          #define  LDPC_DEC_CODEWRD_161 (*(volatile uint32_t *) 0x3000019a )
          #define  LDPC_DEC_CODEWRD_162 (*(volatile uint32_t *) 0x3000019b )
          #define  LDPC_DEC_CODEWRD_163 (*(volatile uint32_t *) 0x3000019c )
          #define  LDPC_DEC_CODEWRD_164 (*(volatile uint32_t *) 0x3000019d )
          #define  LDPC_DEC_CODEWRD_165 (*(volatile uint32_t *) 0x3000019e )
          #define  LDPC_DEC_CODEWRD_166 (*(volatile uint32_t *) 0x3000019f )
          #define  LDPC_DEC_CODEWRD_167 (*(volatile uint32_t *) 0x300001a0 )
          #define  LDPC_DEC_CODEWRD_168 (*(volatile uint32_t *) 0x300001a1 )
          #define  LDPC_DEC_CODEWRD_169 (*(volatile uint32_t *) 0x300001a2 )
          #define  LDPC_DEC_CODEWRD_170 (*(volatile uint32_t *) 0x300001a3 )
          #define  LDPC_DEC_CODEWRD_171 (*(volatile uint32_t *) 0x300001a4 )
          #define  LDPC_DEC_CODEWRD_172 (*(volatile uint32_t *) 0x300001a5 )
          #define  LDPC_DEC_CODEWRD_173 (*(volatile uint32_t *) 0x300001a6 )
          #define  LDPC_DEC_CODEWRD_174 (*(volatile uint32_t *) 0x300001a7 )
          #define  LDPC_DEC_CODEWRD_175 (*(volatile uint32_t *) 0x300001a8 )
          #define  LDPC_DEC_CODEWRD_176 (*(volatile uint32_t *) 0x300001a9 )
          #define  LDPC_DEC_CODEWRD_177 (*(volatile uint32_t *) 0x300001aa )
          #define  LDPC_DEC_CODEWRD_178 (*(volatile uint32_t *) 0x300001ab )
          #define  LDPC_DEC_CODEWRD_179 (*(volatile uint32_t *) 0x300001ac )
          #define  LDPC_DEC_CODEWRD_180 (*(volatile uint32_t *) 0x300001ad )
          #define  LDPC_DEC_CODEWRD_181 (*(volatile uint32_t *) 0x300001ae )
          #define  LDPC_DEC_CODEWRD_182 (*(volatile uint32_t *) 0x300001af )
          #define  LDPC_DEC_CODEWRD_183 (*(volatile uint32_t *) 0x300001b0 )
          #define  LDPC_DEC_CODEWRD_184 (*(volatile uint32_t *) 0x300001b1 )
          #define  LDPC_DEC_CODEWRD_185 (*(volatile uint32_t *) 0x300001b2 )
          #define  LDPC_DEC_CODEWRD_186 (*(volatile uint32_t *) 0x300001b3 )
          #define  LDPC_DEC_CODEWRD_187 (*(volatile uint32_t *) 0x300001b4 )
          #define  LDPC_DEC_CODEWRD_188 (*(volatile uint32_t *) 0x300001b5 )
          #define  LDPC_DEC_CODEWRD_189 (*(volatile uint32_t *) 0x300001b6 )
          #define  LDPC_DEC_CODEWRD_190 (*(volatile uint32_t *) 0x300001b7 )
          #define  LDPC_DEC_CODEWRD_191 (*(volatile uint32_t *) 0x300001b8 )
          #define  LDPC_DEC_CODEWRD_192 (*(volatile uint32_t *) 0x300001b9 )
          #define  LDPC_DEC_CODEWRD_193 (*(volatile uint32_t *) 0x300001ba )
          #define  LDPC_DEC_CODEWRD_194 (*(volatile uint32_t *) 0x300001bb )
          #define  LDPC_DEC_CODEWRD_195 (*(volatile uint32_t *) 0x300001bc )
          #define  LDPC_DEC_CODEWRD_196 (*(volatile uint32_t *) 0x300001bd )
          #define  LDPC_DEC_CODEWRD_197 (*(volatile uint32_t *) 0x300001be )
          #define  LDPC_DEC_CODEWRD_198 (*(volatile uint32_t *) 0x300001bf )
          #define  LDPC_DEC_CODEWRD_199 (*(volatile uint32_t *) 0x300001c0 )
          #define  LDPC_DEC_CODEWRD_200 (*(volatile uint32_t *) 0x300001c1 )
          #define  LDPC_DEC_CODEWRD_201 (*(volatile uint32_t *) 0x300001c2 )
          #define  LDPC_DEC_CODEWRD_202 (*(volatile uint32_t *) 0x300001c3 )
          #define  LDPC_DEC_CODEWRD_203 (*(volatile uint32_t *) 0x300001c4 )
          #define  LDPC_DEC_CODEWRD_204 (*(volatile uint32_t *) 0x300001c5 )
          #define  LDPC_DEC_CODEWRD_205 (*(volatile uint32_t *) 0x300001c6 )
          #define  LDPC_DEC_CODEWRD_206 (*(volatile uint32_t *) 0x300001c7 )
          #define  LDPC_DEC_CODEWRD_207 (*(volatile uint32_t *) 0x300001c8 )
          #define  LDPC_DEC_EXPSYND_0 (*(volatile uint32_t *) 0x300001c9 )
          #define  LDPC_DEC_EXPSYND_1 (*(volatile uint32_t *) 0x300001ca )
          #define  LDPC_DEC_EXPSYND_2 (*(volatile uint32_t *) 0x300001cb )
          #define  LDPC_DEC_EXPSYND_3 (*(volatile uint32_t *) 0x300001cc )
          #define  LDPC_DEC_EXPSYND_4 (*(volatile uint32_t *) 0x300001cd )
          #define  LDPC_DEC_EXPSYND_5 (*(volatile uint32_t *) 0x300001ce )
          #define  LDPC_DEC_EXPSYND_6 (*(volatile uint32_t *) 0x300001cf )
          #define  LDPC_DEC_EXPSYND_7 (*(volatile uint32_t *) 0x300001d0 )
          #define  LDPC_DEC_EXPSYND_8 (*(volatile uint32_t *) 0x300001d1 )
          #define  LDPC_DEC_EXPSYND_9 (*(volatile uint32_t *) 0x300001d2 )
          #define  LDPC_DEC_EXPSYND_10 (*(volatile uint32_t *) 0x300001d3 )
          #define  LDPC_DEC_EXPSYND_11 (*(volatile uint32_t *) 0x300001d4 )
          #define  LDPC_DEC_EXPSYND_12 (*(volatile uint32_t *) 0x300001d5 )
          #define  LDPC_DEC_EXPSYND_13 (*(volatile uint32_t *) 0x300001d6 )
          #define  LDPC_DEC_EXPSYND_14 (*(volatile uint32_t *) 0x300001d7 )
          #define  LDPC_DEC_EXPSYND_15 (*(volatile uint32_t *) 0x300001d8 )
          #define  LDPC_DEC_EXPSYND_16 (*(volatile uint32_t *) 0x300001d9 )
          #define  LDPC_DEC_EXPSYND_17 (*(volatile uint32_t *) 0x300001da )
          #define  LDPC_DEC_EXPSYND_18 (*(volatile uint32_t *) 0x300001db )
          #define  LDPC_DEC_EXPSYND_19 (*(volatile uint32_t *) 0x300001dc )
          #define  LDPC_DEC_EXPSYND_20 (*(volatile uint32_t *) 0x300001dd )
          #define  LDPC_DEC_EXPSYND_21 (*(volatile uint32_t *) 0x300001de )
          #define  LDPC_DEC_EXPSYND_22 (*(volatile uint32_t *) 0x300001df )
          #define  LDPC_DEC_EXPSYND_23 (*(volatile uint32_t *) 0x300001e0 )
          #define  LDPC_DEC_EXPSYND_24 (*(volatile uint32_t *) 0x300001e1 )
          #define  LDPC_DEC_EXPSYND_25 (*(volatile uint32_t *) 0x300001e2 )
          #define  LDPC_DEC_EXPSYND_26 (*(volatile uint32_t *) 0x300001e3 )
          #define  LDPC_DEC_EXPSYND_27 (*(volatile uint32_t *) 0x300001e4 )
          #define  LDPC_DEC_EXPSYND_28 (*(volatile uint32_t *) 0x300001e5 )
          #define  LDPC_DEC_EXPSYND_29 (*(volatile uint32_t *) 0x300001e6 )
          #define  LDPC_DEC_EXPSYND_30 (*(volatile uint32_t *) 0x300001e7 )
          #define  LDPC_DEC_EXPSYND_31 (*(volatile uint32_t *) 0x300001e8 )
          #define  LDPC_DEC_EXPSYND_32 (*(volatile uint32_t *) 0x300001e9 )
          #define  LDPC_DEC_EXPSYND_33 (*(volatile uint32_t *) 0x300001ea )
          #define  LDPC_DEC_EXPSYND_34 (*(volatile uint32_t *) 0x300001eb )
          #define  LDPC_DEC_EXPSYND_35 (*(volatile uint32_t *) 0x300001ec )
          #define  LDPC_DEC_EXPSYND_36 (*(volatile uint32_t *) 0x300001ed )
          #define  LDPC_DEC_EXPSYND_37 (*(volatile uint32_t *) 0x300001ee )
          #define  LDPC_DEC_EXPSYND_38 (*(volatile uint32_t *) 0x300001ef )
          #define  LDPC_DEC_EXPSYND_39 (*(volatile uint32_t *) 0x300001f0 )
          #define  LDPC_DEC_EXPSYND_40 (*(volatile uint32_t *) 0x300001f1 )
          #define  LDPC_DEC_EXPSYND_41 (*(volatile uint32_t *) 0x300001f2 )
          #define  LDPC_DEC_EXPSYND_42 (*(volatile uint32_t *) 0x300001f3 )
          #define  LDPC_DEC_EXPSYND_43 (*(volatile uint32_t *) 0x300001f4 )
          #define  LDPC_DEC_EXPSYND_44 (*(volatile uint32_t *) 0x300001f5 )
          #define  LDPC_DEC_EXPSYND_45 (*(volatile uint32_t *) 0x300001f6 )
          #define  LDPC_DEC_EXPSYND_46 (*(volatile uint32_t *) 0x300001f7 )
          #define  LDPC_DEC_EXPSYND_47 (*(volatile uint32_t *) 0x300001f8 )
          #define  LDPC_DEC_EXPSYND_48 (*(volatile uint32_t *) 0x300001f9 )
          #define  LDPC_DEC_EXPSYND_49 (*(volatile uint32_t *) 0x300001fa )
          #define  LDPC_DEC_EXPSYND_50 (*(volatile uint32_t *) 0x300001fb )
          #define  LDPC_DEC_EXPSYND_51 (*(volatile uint32_t *) 0x300001fc )
          #define  LDPC_DEC_EXPSYND_52 (*(volatile uint32_t *) 0x300001fd )
          #define  LDPC_DEC_EXPSYND_53 (*(volatile uint32_t *) 0x300001fe )
          #define  LDPC_DEC_EXPSYND_54 (*(volatile uint32_t *) 0x300001ff )
          #define  LDPC_DEC_EXPSYND_55 (*(volatile uint32_t *) 0x30000200 )
          #define  LDPC_DEC_EXPSYND_56 (*(volatile uint32_t *) 0x30000201 )
          #define  LDPC_DEC_EXPSYND_57 (*(volatile uint32_t *) 0x30000202 )
          #define  LDPC_DEC_EXPSYND_58 (*(volatile uint32_t *) 0x30000203 )
          #define  LDPC_DEC_EXPSYND_59 (*(volatile uint32_t *) 0x30000204 )
          #define  LDPC_DEC_EXPSYND_60 (*(volatile uint32_t *) 0x30000205 )
          #define  LDPC_DEC_EXPSYND_61 (*(volatile uint32_t *) 0x30000206 )
          #define  LDPC_DEC_EXPSYND_62 (*(volatile uint32_t *) 0x30000207 )
          #define  LDPC_DEC_EXPSYND_63 (*(volatile uint32_t *) 0x30000208 )
          #define  LDPC_DEC_EXPSYND_64 (*(volatile uint32_t *) 0x30000209 )
          #define  LDPC_DEC_EXPSYND_65 (*(volatile uint32_t *) 0x3000020a )
          #define  LDPC_DEC_EXPSYND_66 (*(volatile uint32_t *) 0x3000020b )
          #define  LDPC_DEC_EXPSYND_67 (*(volatile uint32_t *) 0x3000020c )
          #define  LDPC_DEC_EXPSYND_68 (*(volatile uint32_t *) 0x3000020d )
          #define  LDPC_DEC_EXPSYND_69 (*(volatile uint32_t *) 0x3000020e )
          #define  LDPC_DEC_EXPSYND_70 (*(volatile uint32_t *) 0x3000020f )
          #define  LDPC_DEC_EXPSYND_71 (*(volatile uint32_t *) 0x30000210 )
          #define  LDPC_DEC_EXPSYND_72 (*(volatile uint32_t *) 0x30000211 )
          #define  LDPC_DEC_EXPSYND_73 (*(volatile uint32_t *) 0x30000212 )
          #define  LDPC_DEC_EXPSYND_74 (*(volatile uint32_t *) 0x30000213 )
          #define  LDPC_DEC_EXPSYND_75 (*(volatile uint32_t *) 0x30000214 )
          #define  LDPC_DEC_EXPSYND_76 (*(volatile uint32_t *) 0x30000215 )
          #define  LDPC_DEC_EXPSYND_77 (*(volatile uint32_t *) 0x30000216 )
          #define  LDPC_DEC_EXPSYND_78 (*(volatile uint32_t *) 0x30000217 )
          #define  LDPC_DEC_EXPSYND_79 (*(volatile uint32_t *) 0x30000218 )
          #define  LDPC_DEC_EXPSYND_80 (*(volatile uint32_t *) 0x30000219 )
          #define  LDPC_DEC_EXPSYND_81 (*(volatile uint32_t *) 0x3000021a )
          #define  LDPC_DEC_EXPSYND_82 (*(volatile uint32_t *) 0x3000021b )
          #define  LDPC_DEC_EXPSYND_83 (*(volatile uint32_t *) 0x3000021c )
          #define  LDPC_DEC_EXPSYND_84 (*(volatile uint32_t *) 0x3000021d )
          #define  LDPC_DEC_EXPSYND_85 (*(volatile uint32_t *) 0x3000021e )
          #define  LDPC_DEC_EXPSYND_86 (*(volatile uint32_t *) 0x3000021f )
          #define  LDPC_DEC_EXPSYND_87 (*(volatile uint32_t *) 0x30000220 )
          #define  LDPC_DEC_EXPSYND_88 (*(volatile uint32_t *) 0x30000221 )
          #define  LDPC_DEC_EXPSYND_89 (*(volatile uint32_t *) 0x30000222 )
          #define  LDPC_DEC_EXPSYND_90 (*(volatile uint32_t *) 0x30000223 )
          #define  LDPC_DEC_EXPSYND_91 (*(volatile uint32_t *) 0x30000224 )
          #define  LDPC_DEC_EXPSYND_92 (*(volatile uint32_t *) 0x30000225 )
          #define  LDPC_DEC_EXPSYND_93 (*(volatile uint32_t *) 0x30000226 )
          #define  LDPC_DEC_EXPSYND_94 (*(volatile uint32_t *) 0x30000227 )
          #define  LDPC_DEC_EXPSYND_95 (*(volatile uint32_t *) 0x30000228 )
          #define  LDPC_DEC_EXPSYND_96 (*(volatile uint32_t *) 0x30000229 )
          #define  LDPC_DEC_EXPSYND_97 (*(volatile uint32_t *) 0x3000022a )
          #define  LDPC_DEC_EXPSYND_98 (*(volatile uint32_t *) 0x3000022b )
          #define  LDPC_DEC_EXPSYND_99 (*(volatile uint32_t *) 0x3000022c )
          #define  LDPC_DEC_EXPSYND_100 (*(volatile uint32_t *) 0x3000022d )
          #define  LDPC_DEC_EXPSYND_101 (*(volatile uint32_t *) 0x3000022e )
          #define  LDPC_DEC_EXPSYND_102 (*(volatile uint32_t *) 0x3000022f )
          #define  LDPC_DEC_EXPSYND_103 (*(volatile uint32_t *) 0x30000230 )
          #define  LDPC_DEC_EXPSYND_104 (*(volatile uint32_t *) 0x30000231 )
          #define  LDPC_DEC_EXPSYND_105 (*(volatile uint32_t *) 0x30000232 )
          #define  LDPC_DEC_EXPSYND_106 (*(volatile uint32_t *) 0x30000233 )
          #define  LDPC_DEC_EXPSYND_107 (*(volatile uint32_t *) 0x30000234 )
          #define  LDPC_DEC_EXPSYND_108 (*(volatile uint32_t *) 0x30000235 )
          #define  LDPC_DEC_EXPSYND_109 (*(volatile uint32_t *) 0x30000236 )
          #define  LDPC_DEC_EXPSYND_110 (*(volatile uint32_t *) 0x30000237 )
          #define  LDPC_DEC_EXPSYND_111 (*(volatile uint32_t *) 0x30000238 )
          #define  LDPC_DEC_EXPSYND_112 (*(volatile uint32_t *) 0x30000239 )
          #define  LDPC_DEC_EXPSYND_113 (*(volatile uint32_t *) 0x3000023a )
          #define  LDPC_DEC_EXPSYND_114 (*(volatile uint32_t *) 0x3000023b )
          #define  LDPC_DEC_EXPSYND_115 (*(volatile uint32_t *) 0x3000023c )
          #define  LDPC_DEC_EXPSYND_116 (*(volatile uint32_t *) 0x3000023d )
          #define  LDPC_DEC_EXPSYND_117 (*(volatile uint32_t *) 0x3000023e )
          #define  LDPC_DEC_EXPSYND_118 (*(volatile uint32_t *) 0x3000023f )
          #define  LDPC_DEC_EXPSYND_119 (*(volatile uint32_t *) 0x30000240 )
          #define  LDPC_DEC_EXPSYND_120 (*(volatile uint32_t *) 0x30000241 )
          #define  LDPC_DEC_EXPSYND_121 (*(volatile uint32_t *) 0x30000242 )
          #define  LDPC_DEC_EXPSYND_122 (*(volatile uint32_t *) 0x30000243 )
          #define  LDPC_DEC_EXPSYND_123 (*(volatile uint32_t *) 0x30000244 )
          #define  LDPC_DEC_EXPSYND_124 (*(volatile uint32_t *) 0x30000245 )
          #define  LDPC_DEC_EXPSYND_125 (*(volatile uint32_t *) 0x30000246 )
          #define  LDPC_DEC_EXPSYND_126 (*(volatile uint32_t *) 0x30000247 )
          #define  LDPC_DEC_EXPSYND_127 (*(volatile uint32_t *) 0x30000248 )
          #define  LDPC_DEC_EXPSYND_128 (*(volatile uint32_t *) 0x30000249 )
          #define  LDPC_DEC_EXPSYND_129 (*(volatile uint32_t *) 0x3000024a )
          #define  LDPC_DEC_EXPSYND_130 (*(volatile uint32_t *) 0x3000024b )
          #define  LDPC_DEC_EXPSYND_131 (*(volatile uint32_t *) 0x3000024c )
          #define  LDPC_DEC_EXPSYND_132 (*(volatile uint32_t *) 0x3000024d )
          #define  LDPC_DEC_EXPSYND_133 (*(volatile uint32_t *) 0x3000024e )
          #define  LDPC_DEC_EXPSYND_134 (*(volatile uint32_t *) 0x3000024f )
          #define  LDPC_DEC_EXPSYND_135 (*(volatile uint32_t *) 0x30000250 )
          #define  LDPC_DEC_EXPSYND_136 (*(volatile uint32_t *) 0x30000251 )
          #define  LDPC_DEC_EXPSYND_137 (*(volatile uint32_t *) 0x30000252 )
          #define  LDPC_DEC_EXPSYND_138 (*(volatile uint32_t *) 0x30000253 )
          #define  LDPC_DEC_EXPSYND_139 (*(volatile uint32_t *) 0x30000254 )
          #define  LDPC_DEC_EXPSYND_140 (*(volatile uint32_t *) 0x30000255 )
          #define  LDPC_DEC_EXPSYND_141 (*(volatile uint32_t *) 0x30000256 )
          #define  LDPC_DEC_EXPSYND_142 (*(volatile uint32_t *) 0x30000257 )
          #define  LDPC_DEC_EXPSYND_143 (*(volatile uint32_t *) 0x30000258 )
          #define  LDPC_DEC_EXPSYND_144 (*(volatile uint32_t *) 0x30000259 )
          #define  LDPC_DEC_EXPSYND_145 (*(volatile uint32_t *) 0x3000025a )
          #define  LDPC_DEC_EXPSYND_146 (*(volatile uint32_t *) 0x3000025b )
          #define  LDPC_DEC_EXPSYND_147 (*(volatile uint32_t *) 0x3000025c )
          #define  LDPC_DEC_EXPSYND_148 (*(volatile uint32_t *) 0x3000025d )
          #define  LDPC_DEC_EXPSYND_149 (*(volatile uint32_t *) 0x3000025e )
          #define  LDPC_DEC_EXPSYND_150 (*(volatile uint32_t *) 0x3000025f )
          #define  LDPC_DEC_EXPSYND_151 (*(volatile uint32_t *) 0x30000260 )
          #define  LDPC_DEC_EXPSYND_152 (*(volatile uint32_t *) 0x30000261 )
          #define  LDPC_DEC_EXPSYND_153 (*(volatile uint32_t *) 0x30000262 )
          #define  LDPC_DEC_EXPSYND_154 (*(volatile uint32_t *) 0x30000263 )
          #define  LDPC_DEC_EXPSYND_155 (*(volatile uint32_t *) 0x30000264 )
          #define  LDPC_DEC_EXPSYND_156 (*(volatile uint32_t *) 0x30000265 )
          #define  LDPC_DEC_EXPSYND_157 (*(volatile uint32_t *) 0x30000266 )
          #define  LDPC_DEC_EXPSYND_158 (*(volatile uint32_t *) 0x30000267 )
          #define  LDPC_DEC_EXPSYND_159 (*(volatile uint32_t *) 0x30000268 )
          #define  LDPC_DEC_EXPSYND_160 (*(volatile uint32_t *) 0x30000269 )
          #define  LDPC_DEC_EXPSYND_161 (*(volatile uint32_t *) 0x3000026a )
          #define  LDPC_DEC_EXPSYND_162 (*(volatile uint32_t *) 0x3000026b )
          #define  LDPC_DEC_EXPSYND_163 (*(volatile uint32_t *) 0x3000026c )
          #define  LDPC_DEC_EXPSYND_164 (*(volatile uint32_t *) 0x3000026d )
          #define  LDPC_DEC_EXPSYND_165 (*(volatile uint32_t *) 0x3000026e )
          #define  LDPC_DEC_EXPSYND_166 (*(volatile uint32_t *) 0x3000026f )
          #define  LDPC_DEC_EXPSYND_167 (*(volatile uint32_t *) 0x30000270 )
          #define  LDPC_DEC_PROBABILITY (*(volatile uint32_t *) 0x30000271 )
          #define  LDPC_DEC_HamDist_loop_max (*(volatile uint32_t *) 0x30000272 )
          #define  LDPC_DEC_HamDist_loop_percentage (*(volatile uint32_t *) 0x30000273 )
          #define  LDPC_DEC_HamDist_iir1 (*(volatile uint32_t *) 0x30000274 )
          #define  LDPC_DEC_HamDist_iir2_NOT_USED (*(volatile uint32_t *) 0x30000275 )
          #define  LDPC_DEC_HamDist_iir3_NOT_USED (*(volatile uint32_t *) 0x30000276 )
          #define  LDPC_DEC_converged_valid (*(volatile uint32_t *) 0x30000277 )
          #define  LDPC_DEC_converged_status (*(volatile uint32_t *) 0x30000278 )
          #define  LDPC_DEC_converged_valid_NOT_USED (*(volatile uint32_t *) 0x30000279 )
          #define  LDPC_DEC_start (*(volatile uint32_t *) 0x3000027a )
          #define  LDPC_DEC_valid_NOT_USED (*(volatile uint32_t *) 0x3000027b )
          #define  LDPC_DEC_valid_codeword_NOT_USED (*(volatile uint32_t *) 0x3000027c )


          #define  LDPC_DEC_CODEWRD_OUT_BIT_0 (*(volatile uint32_t  *) 0x3000027d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_1 (*(volatile uint32_t  *) 0x3000027e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_2 (*(volatile uint32_t  *) 0x3000027f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_3 (*(volatile uint32_t  *) 0x30000280 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_4 (*(volatile uint32_t  *) 0x30000281 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_5 (*(volatile uint32_t  *) 0x30000282 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_6 (*(volatile uint32_t  *) 0x30000283 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_7 (*(volatile uint32_t  *) 0x30000284 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_8 (*(volatile uint32_t  *) 0x30000285 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_9 (*(volatile uint32_t  *) 0x30000286 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_10 (*(volatile uint32_t  *) 0x30000287 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_11 (*(volatile uint32_t  *) 0x30000288 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_12 (*(volatile uint32_t  *) 0x30000289 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_13 (*(volatile uint32_t  *) 0x3000028a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_14 (*(volatile uint32_t  *) 0x3000028b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_15 (*(volatile uint32_t  *) 0x3000028c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_16 (*(volatile uint32_t  *) 0x3000028d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_17 (*(volatile uint32_t  *) 0x3000028e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_18 (*(volatile uint32_t  *) 0x3000028f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_19 (*(volatile uint32_t  *) 0x30000290 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_20 (*(volatile uint32_t  *) 0x30000291 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_21 (*(volatile uint32_t  *) 0x30000292 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_22 (*(volatile uint32_t  *) 0x30000293 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_23 (*(volatile uint32_t  *) 0x30000294 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_24 (*(volatile uint32_t  *) 0x30000295 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_25 (*(volatile uint32_t  *) 0x30000296 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_26 (*(volatile uint32_t  *) 0x30000297 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_27 (*(volatile uint32_t  *) 0x30000298 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_28 (*(volatile uint32_t  *) 0x30000299 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_29 (*(volatile uint32_t  *) 0x3000029a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_30 (*(volatile uint32_t  *) 0x3000029b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_31 (*(volatile uint32_t  *) 0x3000029c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_32 (*(volatile uint32_t  *) 0x3000029d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_33 (*(volatile uint32_t  *) 0x3000029e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_34 (*(volatile uint32_t  *) 0x3000029f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_35 (*(volatile uint32_t  *) 0x300002a0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_36 (*(volatile uint32_t  *) 0x300002a1 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_37 (*(volatile uint32_t  *) 0x300002a2 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_38 (*(volatile uint32_t  *) 0x300002a3 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_39 (*(volatile uint32_t  *) 0x300002a4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_40 (*(volatile uint32_t  *) 0x300002a5 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_41 (*(volatile uint32_t  *) 0x300002a6 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_42 (*(volatile uint32_t  *) 0x300002a7 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_43 (*(volatile uint32_t  *) 0x300002a8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_44 (*(volatile uint32_t  *) 0x300002a9 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_45 (*(volatile uint32_t  *) 0x300002aa )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_46 (*(volatile uint32_t  *) 0x300002ab )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_47 (*(volatile uint32_t  *) 0x300002ac )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_48 (*(volatile uint32_t  *) 0x300002ad )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_49 (*(volatile uint32_t  *) 0x300002ae )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_50 (*(volatile uint32_t  *) 0x300002af )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_51 (*(volatile uint32_t  *) 0x300002b0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_52 (*(volatile uint32_t  *) 0x300002b1 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_53 (*(volatile uint32_t  *) 0x300002b2 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_54 (*(volatile uint32_t  *) 0x300002b3 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_55 (*(volatile uint32_t  *) 0x300002b4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_56 (*(volatile uint32_t  *) 0x300002b5 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_57 (*(volatile uint32_t  *) 0x300002b6 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_58 (*(volatile uint32_t  *) 0x300002b7 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_59 (*(volatile uint32_t  *) 0x300002b8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_60 (*(volatile uint32_t  *) 0x300002b9 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_61 (*(volatile uint32_t  *) 0x300002ba )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_62 (*(volatile uint32_t  *) 0x300002bb )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_63 (*(volatile uint32_t  *) 0x300002bc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_64 (*(volatile uint32_t  *) 0x300002bd )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_65 (*(volatile uint32_t  *) 0x300002be )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_66 (*(volatile uint32_t  *) 0x300002bf )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_67 (*(volatile uint32_t  *) 0x300002c0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_68 (*(volatile uint32_t  *) 0x300002c1 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_69 (*(volatile uint32_t  *) 0x300002c2 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_70 (*(volatile uint32_t  *) 0x300002c3 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_71 (*(volatile uint32_t  *) 0x300002c4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_72 (*(volatile uint32_t  *) 0x300002c5 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_73 (*(volatile uint32_t  *) 0x300002c6 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_74 (*(volatile uint32_t  *) 0x300002c7 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_75 (*(volatile uint32_t  *) 0x300002c8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_76 (*(volatile uint32_t  *) 0x300002c9 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_77 (*(volatile uint32_t  *) 0x300002ca )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_78 (*(volatile uint32_t  *) 0x300002cb )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_79 (*(volatile uint32_t  *) 0x300002cc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_80 (*(volatile uint32_t  *) 0x300002cd )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_81 (*(volatile uint32_t  *) 0x300002ce )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_82 (*(volatile uint32_t  *) 0x300002cf )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_83 (*(volatile uint32_t  *) 0x300002d0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_84 (*(volatile uint32_t  *) 0x300002d1 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_85 (*(volatile uint32_t  *) 0x300002d2 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_86 (*(volatile uint32_t  *) 0x300002d3 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_87 (*(volatile uint32_t  *) 0x300002d4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_88 (*(volatile uint32_t  *) 0x300002d5 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_89 (*(volatile uint32_t  *) 0x300002d6 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_90 (*(volatile uint32_t  *) 0x300002d7 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_91 (*(volatile uint32_t  *) 0x300002d8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_92 (*(volatile uint32_t  *) 0x300002d9 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_93 (*(volatile uint32_t  *) 0x300002da )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_94 (*(volatile uint32_t  *) 0x300002db )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_95 (*(volatile uint32_t  *) 0x300002dc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_96 (*(volatile uint32_t  *) 0x300002dd )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_97 (*(volatile uint32_t  *) 0x300002de )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_98 (*(volatile uint32_t  *) 0x300002df )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_99 (*(volatile uint32_t  *) 0x300002e0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_100 (*(volatile uint32_t  *) 0x300002e1 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_101 (*(volatile uint32_t  *) 0x300002e2 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_102 (*(volatile uint32_t  *) 0x300002e3 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_103 (*(volatile uint32_t  *) 0x300002e4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_104 (*(volatile uint32_t  *) 0x300002e5 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_105 (*(volatile uint32_t  *) 0x300002e6 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_106 (*(volatile uint32_t  *) 0x300002e7 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_107 (*(volatile uint32_t  *) 0x300002e8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_108 (*(volatile uint32_t  *) 0x300002e9 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_109 (*(volatile uint32_t  *) 0x300002ea )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_110 (*(volatile uint32_t  *) 0x300002eb )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_111 (*(volatile uint32_t  *) 0x300002ec )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_112 (*(volatile uint32_t  *) 0x300002ed )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_113 (*(volatile uint32_t  *) 0x300002ee )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_114 (*(volatile uint32_t  *) 0x300002ef )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_115 (*(volatile uint32_t  *) 0x300002f0 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_116 (*(volatile uint32_t  *) 0x300002f1 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_117 (*(volatile uint32_t  *) 0x300002f2 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_118 (*(volatile uint32_t  *) 0x300002f3 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_119 (*(volatile uint32_t  *) 0x300002f4 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_120 (*(volatile uint32_t  *) 0x300002f5 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_121 (*(volatile uint32_t  *) 0x300002f6 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_122 (*(volatile uint32_t  *) 0x300002f7 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_123 (*(volatile uint32_t  *) 0x300002f8 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_124 (*(volatile uint32_t  *) 0x300002f9 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_125 (*(volatile uint32_t  *) 0x300002fa )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_126 (*(volatile uint32_t  *) 0x300002fb )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_127 (*(volatile uint32_t  *) 0x300002fc )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_128 (*(volatile uint32_t  *) 0x300002fd )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_129 (*(volatile uint32_t  *) 0x300002fe )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_130 (*(volatile uint32_t  *) 0x300002ff )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_131 (*(volatile uint32_t  *) 0x30000300 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_132 (*(volatile uint32_t  *) 0x30000301 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_133 (*(volatile uint32_t  *) 0x30000302 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_134 (*(volatile uint32_t  *) 0x30000303 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_135 (*(volatile uint32_t  *) 0x30000304 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_136 (*(volatile uint32_t  *) 0x30000305 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_137 (*(volatile uint32_t  *) 0x30000306 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_138 (*(volatile uint32_t  *) 0x30000307 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_139 (*(volatile uint32_t  *) 0x30000308 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_140 (*(volatile uint32_t  *) 0x30000309 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_141 (*(volatile uint32_t  *) 0x3000030a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_142 (*(volatile uint32_t  *) 0x3000030b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_143 (*(volatile uint32_t  *) 0x3000030c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_144 (*(volatile uint32_t  *) 0x3000030d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_145 (*(volatile uint32_t  *) 0x3000030e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_146 (*(volatile uint32_t  *) 0x3000030f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_147 (*(volatile uint32_t  *) 0x30000310 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_148 (*(volatile uint32_t  *) 0x30000311 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_149 (*(volatile uint32_t  *) 0x30000312 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_150 (*(volatile uint32_t  *) 0x30000313 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_151 (*(volatile uint32_t  *) 0x30000314 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_152 (*(volatile uint32_t  *) 0x30000315 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_153 (*(volatile uint32_t  *) 0x30000316 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_154 (*(volatile uint32_t  *) 0x30000317 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_155 (*(volatile uint32_t  *) 0x30000318 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_156 (*(volatile uint32_t  *) 0x30000319 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_157 (*(volatile uint32_t  *) 0x3000031a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_158 (*(volatile uint32_t  *) 0x3000031b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_159 (*(volatile uint32_t  *) 0x3000031c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_160 (*(volatile uint32_t  *) 0x3000031d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_161 (*(volatile uint32_t  *) 0x3000031e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_162 (*(volatile uint32_t  *) 0x3000031f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_163 (*(volatile uint32_t  *) 0x30000320 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_164 (*(volatile uint32_t  *) 0x30000321 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_165 (*(volatile uint32_t  *) 0x30000322 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_166 (*(volatile uint32_t  *) 0x30000323 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_167 (*(volatile uint32_t  *) 0x30000324 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_168 (*(volatile uint32_t  *) 0x30000325 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_169 (*(volatile uint32_t  *) 0x30000326 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_170 (*(volatile uint32_t  *) 0x30000327 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_171 (*(volatile uint32_t  *) 0x30000328 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_172 (*(volatile uint32_t  *) 0x30000329 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_173 (*(volatile uint32_t  *) 0x3000032a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_174 (*(volatile uint32_t  *) 0x3000032b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_175 (*(volatile uint32_t  *) 0x3000032c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_176 (*(volatile uint32_t  *) 0x3000032d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_177 (*(volatile uint32_t  *) 0x3000032e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_178 (*(volatile uint32_t  *) 0x3000032f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_179 (*(volatile uint32_t  *) 0x30000330 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_180 (*(volatile uint32_t  *) 0x30000331 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_181 (*(volatile uint32_t  *) 0x30000332 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_182 (*(volatile uint32_t  *) 0x30000333 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_183 (*(volatile uint32_t  *) 0x30000334 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_184 (*(volatile uint32_t  *) 0x30000335 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_185 (*(volatile uint32_t  *) 0x30000336 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_186 (*(volatile uint32_t  *) 0x30000337 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_187 (*(volatile uint32_t  *) 0x30000338 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_188 (*(volatile uint32_t  *) 0x30000339 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_189 (*(volatile uint32_t  *) 0x3000033a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_190 (*(volatile uint32_t  *) 0x3000033b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_191 (*(volatile uint32_t  *) 0x3000033c )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_192 (*(volatile uint32_t  *) 0x3000033d )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_193 (*(volatile uint32_t  *) 0x3000033e )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_194 (*(volatile uint32_t  *) 0x3000033f )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_195 (*(volatile uint32_t  *) 0x30000340 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_196 (*(volatile uint32_t  *) 0x30000341 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_197 (*(volatile uint32_t  *) 0x30000342 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_198 (*(volatile uint32_t  *) 0x30000343 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_199 (*(volatile uint32_t  *) 0x30000344 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_200 (*(volatile uint32_t  *) 0x30000345 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_201 (*(volatile uint32_t  *) 0x30000346 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_202 (*(volatile uint32_t  *) 0x30000347 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_203 (*(volatile uint32_t  *) 0x30000348 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_204 (*(volatile uint32_t  *) 0x30000349 )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_205 (*(volatile uint32_t  *) 0x3000034a )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_206 (*(volatile uint32_t  *) 0x3000034b )
          #define  LDPC_DEC_CODEWRD_OUT_BIT_207 (*(volatile uint32_t  *) 0x3000034c )

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


