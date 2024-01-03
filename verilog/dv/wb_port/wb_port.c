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
          #define  LDPC_DEC_converged (*(volatile uint32_t *) 0x30000277 )
          #define  LDPC_DEC_converged_valid_NOT_USED (*(volatile uint32_t *) 0x30000278 )
          #define  LDPC_DEC_start (*(volatile uint32_t *) 0x30000279 )
          #define  LDPC_DEC_valid_NOT_USED (*(volatile uint32_t *) 0x3000027a )
          #define  LDPC_DEC_valid_codeword_NOT_USED (*(volatile uint32_t *) 0x3000027b )

/*
	Wishbone Test:
		- Configures MPRJ lower 8-IO pins as outputs
		- Checks counter value through the wishbone port
*/


static unsigned int rndm = 2815UL;
unsigned int Rand(void)           // simple pseudo rand
{
  return rndm = (77UL * rndm + 1243UL) & 0x7fffffffUL; // 31bit
}


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
	//reg_mprj_datal = 0xAB600000;

    //reg_mprj_slave = 0x00002710;
    //reg_mprj_datal = 0xAB610000;
 
    int nn = 0x000d0;
    int mm = 0x000a8;
    int reg_offset = 0x0;
    int bit;
    // message 
           LDPC_ENC_MSG_IN_0  = Rand() ;
           LDPC_ENC_MSG_IN_1  = Rand() ;
           LDPC_ENC_MSG_IN_2  = Rand() ;
           LDPC_ENC_MSG_IN_3  = Rand() ;
           LDPC_ENC_MSG_IN_4  = Rand() ;
           LDPC_ENC_MSG_IN_5  = Rand() ;
           LDPC_ENC_MSG_IN_6  = Rand() ;
           LDPC_ENC_MSG_IN_7  = Rand() ;
           LDPC_ENC_MSG_IN_8  = Rand() ;
           LDPC_ENC_MSG_IN_9  = Rand() ;
           LDPC_ENC_MSG_IN_10  = Rand() ;
           LDPC_ENC_MSG_IN_11  = Rand() ;
           LDPC_ENC_MSG_IN_12  = Rand() ;
           LDPC_ENC_MSG_IN_13  = Rand() ;
           LDPC_ENC_MSG_IN_14  = Rand() ;
           LDPC_ENC_MSG_IN_15  = Rand() ;
           LDPC_ENC_MSG_IN_16  = Rand() ;
           LDPC_ENC_MSG_IN_17  = Rand() ;
           LDPC_ENC_MSG_IN_18  = Rand() ;
           LDPC_ENC_MSG_IN_19  = Rand() ;
           LDPC_ENC_MSG_IN_20  = Rand() ;
           LDPC_ENC_MSG_IN_21  = Rand() ;
           LDPC_ENC_MSG_IN_22  = Rand() ;
           LDPC_ENC_MSG_IN_23  = Rand() ;
           LDPC_ENC_MSG_IN_24  = Rand() ;
           LDPC_ENC_MSG_IN_25  = Rand() ;
           LDPC_ENC_MSG_IN_26  = Rand() ;
           LDPC_ENC_MSG_IN_27  = Rand() ;
           LDPC_ENC_MSG_IN_28  = Rand() ;
           LDPC_ENC_MSG_IN_29  = Rand() ;
           LDPC_ENC_MSG_IN_30  = Rand() ;
           LDPC_ENC_MSG_IN_31  = Rand() ;
           LDPC_ENC_MSG_IN_32  = Rand() ;
           LDPC_ENC_MSG_IN_33  = Rand() ;
           LDPC_ENC_MSG_IN_34  = Rand() ;
           LDPC_ENC_MSG_IN_35  = Rand() ;
           LDPC_ENC_MSG_IN_36  = Rand() ;
           LDPC_ENC_MSG_IN_37  = Rand() ;
           LDPC_ENC_MSG_IN_38  = Rand() ;
           LDPC_ENC_MSG_IN_39  = Rand() ;
    // codeword valid 
    while((*(volatile uint32_t*)(0x30000000+(nn-mm)+(nn)-1)) != 0x00000000) {}
    // good codeword from encoder 
    int enc_cword [nn];
    int err [nn];
    for (int i=0;i<nn;i++) {
        enc_cword[i] = (*(volatile uint32_t*)(0x30000000+i+(nn-mm)));
    }

    // change channel error probability
    double p = 0.0384615398943424;
    //int p_int = log((1-p)/p)  * (1<<11) + 0.5;
    int p_int = 6592;
    // probability integer from channel
    (*(volatile uint32_t*)(0x30000000+625)) = p_int;
    int mod = 8.50000029802322 ;//nn * p + 0.5;
    int num =0;
    int idx;

    // introduce the error
    for(; (num<mod);) {
      //idx = Rand() % nn;
      idx = Rand();
      while (idx > nn) {
	 idx = idx - nn;
      }
      if (err[idx] ==0) {
         enc_cword[idx] = ~enc_cword[idx];
         num++;
      }
      err[idx] = 1;
    }

    // drive error data to decoder
    for (int i=0;i<nn;i++) {
	if (enc_cword[i]) {
            (*(volatile uint32_t*)(0x30000000+249+i)) = 0x11;
	} else {
            (*(volatile uint32_t*)(0x30000000+249+i)) = 0x01;
	}
    }


    // expected syndrome
    for (int i=0;i<mm;i++) {
        (*(volatile uint32_t*)(0x30000000+257+i)) = 0x0;
    }

    // number of max iterations
    (*(volatile uint32_t*)(0x30000000+626)) = 0x20;

    // number of max iterations percentage
    (*(volatile uint32_t*)(0x30000000+627)) = 110;


    // HamDist_iir1
    (*(volatile uint32_t*)(0x30000000+628)) = 85;

    // HamDist_iir2  not used
    (*(volatile uint32_t*)(0x30000000+629)) = 15;

    // HamDist_iir3  not used
    (*(volatile uint32_t*)(0x30000000+630)) = 5;

    // start the decoder
    (*(volatile uint32_t*)(0x30000000+633)) = 0x1;

    // converged 2 bits most important bit [1:0] bit [1] convergence end reached
    // bit[0] : pass/fail 1/0
    while((*(volatile uint32_t*)(0x30000000+631) & 0x2) != 0x00000002) {}

    if ((*(volatile uint32_t*)(0x30000000+631) & 0x1)) {
	    //pass
    } else {
	    //fail
    }





}



