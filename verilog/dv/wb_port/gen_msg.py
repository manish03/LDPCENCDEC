
from string import Template

nn = 0x000d0
mm = 0x000a8

import random
import math

msg =[0 for i in range (nn-mm)]
enc_cword = [0 for i in range (nn) ]
err_cword = [0 for i in range (nn) ]
dec_cword = [0 for i in range (nn) ]

for i in range (nn-mm):
    msg[i] = random.randrange(0,2)


listregs = [
           "LDPC_ENC_MSG_IN_0" ,
           "LDPC_ENC_MSG_IN_1" ,
           "LDPC_ENC_MSG_IN_2" ,
           "LDPC_ENC_MSG_IN_3" ,
           "LDPC_ENC_MSG_IN_4" ,
           "LDPC_ENC_MSG_IN_5" ,
           "LDPC_ENC_MSG_IN_6" ,
           "LDPC_ENC_MSG_IN_7" ,
           "LDPC_ENC_MSG_IN_8" ,
           "LDPC_ENC_MSG_IN_9" ,
           "LDPC_ENC_MSG_IN_10" ,
           "LDPC_ENC_MSG_IN_11" ,
           "LDPC_ENC_MSG_IN_12" ,
           "LDPC_ENC_MSG_IN_13" ,
           "LDPC_ENC_MSG_IN_14" ,
           "LDPC_ENC_MSG_IN_15" ,
           "LDPC_ENC_MSG_IN_16" ,
           "LDPC_ENC_MSG_IN_17" ,
           "LDPC_ENC_MSG_IN_18" ,
           "LDPC_ENC_MSG_IN_19" ,
           "LDPC_ENC_MSG_IN_20" ,
           "LDPC_ENC_MSG_IN_21" ,
           "LDPC_ENC_MSG_IN_22" ,
           "LDPC_ENC_MSG_IN_23" ,
           "LDPC_ENC_MSG_IN_24" ,
           "LDPC_ENC_MSG_IN_25" ,
           "LDPC_ENC_MSG_IN_26" ,
           "LDPC_ENC_MSG_IN_27" ,
           "LDPC_ENC_MSG_IN_28" ,
           "LDPC_ENC_MSG_IN_29" ,
           "LDPC_ENC_MSG_IN_30" ,
           "LDPC_ENC_MSG_IN_31" ,
           "LDPC_ENC_MSG_IN_32" ,
           "LDPC_ENC_MSG_IN_33" ,
           "LDPC_ENC_MSG_IN_34" ,
           "LDPC_ENC_MSG_IN_35" ,
           "LDPC_ENC_MSG_IN_36" ,
           "LDPC_ENC_MSG_IN_37" ,
           "LDPC_ENC_MSG_IN_38" ,
           "LDPC_ENC_MSG_IN_39" ,
           "LDPC_ENC_CODEWRD_0" ,
           "LDPC_ENC_CODEWRD_1" ,
           "LDPC_ENC_CODEWRD_2" ,
           "LDPC_ENC_CODEWRD_3" ,
           "LDPC_ENC_CODEWRD_4" ,
           "LDPC_ENC_CODEWRD_5" ,
           "LDPC_ENC_CODEWRD_6" ,
           "LDPC_ENC_CODEWRD_7" ,
           "LDPC_ENC_CODEWRD_8" ,
           "LDPC_ENC_CODEWRD_9" ,
           "LDPC_ENC_CODEWRD_10" ,
           "LDPC_ENC_CODEWRD_11" ,
           "LDPC_ENC_CODEWRD_12" ,
           "LDPC_ENC_CODEWRD_13" ,
           "LDPC_ENC_CODEWRD_14" ,
           "LDPC_ENC_CODEWRD_15" ,
           "LDPC_ENC_CODEWRD_16" ,
           "LDPC_ENC_CODEWRD_17" ,
           "LDPC_ENC_CODEWRD_18" ,
           "LDPC_ENC_CODEWRD_19" ,
           "LDPC_ENC_CODEWRD_20" ,
           "LDPC_ENC_CODEWRD_21" ,
           "LDPC_ENC_CODEWRD_22" ,
           "LDPC_ENC_CODEWRD_23" ,
           "LDPC_ENC_CODEWRD_24" ,
           "LDPC_ENC_CODEWRD_25" ,
           "LDPC_ENC_CODEWRD_26" ,
           "LDPC_ENC_CODEWRD_27" ,
           "LDPC_ENC_CODEWRD_28" ,
           "LDPC_ENC_CODEWRD_29" ,
           "LDPC_ENC_CODEWRD_30" ,
           "LDPC_ENC_CODEWRD_31" ,
           "LDPC_ENC_CODEWRD_32" ,
           "LDPC_ENC_CODEWRD_33" ,
           "LDPC_ENC_CODEWRD_34" ,
           "LDPC_ENC_CODEWRD_35" ,
           "LDPC_ENC_CODEWRD_36" ,
           "LDPC_ENC_CODEWRD_37" ,
           "LDPC_ENC_CODEWRD_38" ,
           "LDPC_ENC_CODEWRD_39" ,
           "LDPC_ENC_CODEWRD_40" ,
           "LDPC_ENC_CODEWRD_41" ,
           "LDPC_ENC_CODEWRD_42" ,
           "LDPC_ENC_CODEWRD_43" ,
           "LDPC_ENC_CODEWRD_44" ,
           "LDPC_ENC_CODEWRD_45" ,
           "LDPC_ENC_CODEWRD_46" ,
           "LDPC_ENC_CODEWRD_47" ,
           "LDPC_ENC_CODEWRD_48" ,
           "LDPC_ENC_CODEWRD_49" ,
           "LDPC_ENC_CODEWRD_50" ,
           "LDPC_ENC_CODEWRD_51" ,
           "LDPC_ENC_CODEWRD_52" ,
           "LDPC_ENC_CODEWRD_53" ,
           "LDPC_ENC_CODEWRD_54" ,
           "LDPC_ENC_CODEWRD_55" ,
           "LDPC_ENC_CODEWRD_56" ,
           "LDPC_ENC_CODEWRD_57" ,
           "LDPC_ENC_CODEWRD_58" ,
           "LDPC_ENC_CODEWRD_59" ,
           "LDPC_ENC_CODEWRD_60" ,
           "LDPC_ENC_CODEWRD_61" ,
           "LDPC_ENC_CODEWRD_62" ,
           "LDPC_ENC_CODEWRD_63" ,
           "LDPC_ENC_CODEWRD_64" ,
           "LDPC_ENC_CODEWRD_65" ,
           "LDPC_ENC_CODEWRD_66" ,
           "LDPC_ENC_CODEWRD_67" ,
           "LDPC_ENC_CODEWRD_68" ,
           "LDPC_ENC_CODEWRD_69" ,
           "LDPC_ENC_CODEWRD_70" ,
           "LDPC_ENC_CODEWRD_71" ,
           "LDPC_ENC_CODEWRD_72" ,
           "LDPC_ENC_CODEWRD_73" ,
           "LDPC_ENC_CODEWRD_74" ,
           "LDPC_ENC_CODEWRD_75" ,
           "LDPC_ENC_CODEWRD_76" ,
           "LDPC_ENC_CODEWRD_77" ,
           "LDPC_ENC_CODEWRD_78" ,
           "LDPC_ENC_CODEWRD_79" ,
           "LDPC_ENC_CODEWRD_80" ,
           "LDPC_ENC_CODEWRD_81" ,
           "LDPC_ENC_CODEWRD_82" ,
           "LDPC_ENC_CODEWRD_83" ,
           "LDPC_ENC_CODEWRD_84" ,
           "LDPC_ENC_CODEWRD_85" ,
           "LDPC_ENC_CODEWRD_86" ,
           "LDPC_ENC_CODEWRD_87" ,
           "LDPC_ENC_CODEWRD_88" ,
           "LDPC_ENC_CODEWRD_89" ,
           "LDPC_ENC_CODEWRD_90" ,
           "LDPC_ENC_CODEWRD_91" ,
           "LDPC_ENC_CODEWRD_92" ,
           "LDPC_ENC_CODEWRD_93" ,
           "LDPC_ENC_CODEWRD_94" ,
           "LDPC_ENC_CODEWRD_95" ,
           "LDPC_ENC_CODEWRD_96" ,
           "LDPC_ENC_CODEWRD_97" ,
           "LDPC_ENC_CODEWRD_98" ,
           "LDPC_ENC_CODEWRD_99" ,
           "LDPC_ENC_CODEWRD_100" ,
           "LDPC_ENC_CODEWRD_101" ,
           "LDPC_ENC_CODEWRD_102" ,
           "LDPC_ENC_CODEWRD_103" ,
           "LDPC_ENC_CODEWRD_104" ,
           "LDPC_ENC_CODEWRD_105" ,
           "LDPC_ENC_CODEWRD_106" ,
           "LDPC_ENC_CODEWRD_107" ,
           "LDPC_ENC_CODEWRD_108" ,
           "LDPC_ENC_CODEWRD_109" ,
           "LDPC_ENC_CODEWRD_110" ,
           "LDPC_ENC_CODEWRD_111" ,
           "LDPC_ENC_CODEWRD_112" ,
           "LDPC_ENC_CODEWRD_113" ,
           "LDPC_ENC_CODEWRD_114" ,
           "LDPC_ENC_CODEWRD_115" ,
           "LDPC_ENC_CODEWRD_116" ,
           "LDPC_ENC_CODEWRD_117" ,
           "LDPC_ENC_CODEWRD_118" ,
           "LDPC_ENC_CODEWRD_119" ,
           "LDPC_ENC_CODEWRD_120" ,
           "LDPC_ENC_CODEWRD_121" ,
           "LDPC_ENC_CODEWRD_122" ,
           "LDPC_ENC_CODEWRD_123" ,
           "LDPC_ENC_CODEWRD_124" ,
           "LDPC_ENC_CODEWRD_125" ,
           "LDPC_ENC_CODEWRD_126" ,
           "LDPC_ENC_CODEWRD_127" ,
           "LDPC_ENC_CODEWRD_128" ,
           "LDPC_ENC_CODEWRD_129" ,
           "LDPC_ENC_CODEWRD_130" ,
           "LDPC_ENC_CODEWRD_131" ,
           "LDPC_ENC_CODEWRD_132" ,
           "LDPC_ENC_CODEWRD_133" ,
           "LDPC_ENC_CODEWRD_134" ,
           "LDPC_ENC_CODEWRD_135" ,
           "LDPC_ENC_CODEWRD_136" ,
           "LDPC_ENC_CODEWRD_137" ,
           "LDPC_ENC_CODEWRD_138" ,
           "LDPC_ENC_CODEWRD_139" ,
           "LDPC_ENC_CODEWRD_140" ,
           "LDPC_ENC_CODEWRD_141" ,
           "LDPC_ENC_CODEWRD_142" ,
           "LDPC_ENC_CODEWRD_143" ,
           "LDPC_ENC_CODEWRD_144" ,
           "LDPC_ENC_CODEWRD_145" ,
           "LDPC_ENC_CODEWRD_146" ,
           "LDPC_ENC_CODEWRD_147" ,
           "LDPC_ENC_CODEWRD_148" ,
           "LDPC_ENC_CODEWRD_149" ,
           "LDPC_ENC_CODEWRD_150" ,
           "LDPC_ENC_CODEWRD_151" ,
           "LDPC_ENC_CODEWRD_152" ,
           "LDPC_ENC_CODEWRD_153" ,
           "LDPC_ENC_CODEWRD_154" ,
           "LDPC_ENC_CODEWRD_155" ,
           "LDPC_ENC_CODEWRD_156" ,
           "LDPC_ENC_CODEWRD_157" ,
           "LDPC_ENC_CODEWRD_158" ,
           "LDPC_ENC_CODEWRD_159" ,
           "LDPC_ENC_CODEWRD_160" ,
           "LDPC_ENC_CODEWRD_161" ,
           "LDPC_ENC_CODEWRD_162" ,
           "LDPC_ENC_CODEWRD_163" ,
           "LDPC_ENC_CODEWRD_164" ,
           "LDPC_ENC_CODEWRD_165" ,
           "LDPC_ENC_CODEWRD_166" ,
           "LDPC_ENC_CODEWRD_167" ,
           "LDPC_ENC_CODEWRD_168" ,
           "LDPC_ENC_CODEWRD_169" ,
           "LDPC_ENC_CODEWRD_170" ,
           "LDPC_ENC_CODEWRD_171" ,
           "LDPC_ENC_CODEWRD_172" ,
           "LDPC_ENC_CODEWRD_173" ,
           "LDPC_ENC_CODEWRD_174" ,
           "LDPC_ENC_CODEWRD_175" ,
           "LDPC_ENC_CODEWRD_176" ,
           "LDPC_ENC_CODEWRD_177" ,
           "LDPC_ENC_CODEWRD_178" ,
           "LDPC_ENC_CODEWRD_179" ,
           "LDPC_ENC_CODEWRD_180" ,
           "LDPC_ENC_CODEWRD_181" ,
           "LDPC_ENC_CODEWRD_182" ,
           "LDPC_ENC_CODEWRD_183" ,
           "LDPC_ENC_CODEWRD_184" ,
           "LDPC_ENC_CODEWRD_185" ,
           "LDPC_ENC_CODEWRD_186" ,
           "LDPC_ENC_CODEWRD_187" ,
           "LDPC_ENC_CODEWRD_188" ,
           "LDPC_ENC_CODEWRD_189" ,
           "LDPC_ENC_CODEWRD_190" ,
           "LDPC_ENC_CODEWRD_191" ,
           "LDPC_ENC_CODEWRD_192" ,
           "LDPC_ENC_CODEWRD_193" ,
           "LDPC_ENC_CODEWRD_194" ,
           "LDPC_ENC_CODEWRD_195" ,
           "LDPC_ENC_CODEWRD_196" ,
           "LDPC_ENC_CODEWRD_197" ,
           "LDPC_ENC_CODEWRD_198" ,
           "LDPC_ENC_CODEWRD_199" ,
           "LDPC_ENC_CODEWRD_200" ,
           "LDPC_ENC_CODEWRD_201" ,
           "LDPC_ENC_CODEWRD_202" ,
           "LDPC_ENC_CODEWRD_203" ,
           "LDPC_ENC_CODEWRD_204" ,
           "LDPC_ENC_CODEWRD_205" ,
           "LDPC_ENC_CODEWRD_206" ,
           "LDPC_ENC_CODEWRD_207" ,
           "LDPC_ENC_CODEWRD_VLD" ,
           "LDPC_DEC_CODEWRD_0" ,
           "LDPC_DEC_CODEWRD_1" ,
           "LDPC_DEC_CODEWRD_2" ,
           "LDPC_DEC_CODEWRD_3" ,
           "LDPC_DEC_CODEWRD_4" ,
           "LDPC_DEC_CODEWRD_5" ,
           "LDPC_DEC_CODEWRD_6" ,
           "LDPC_DEC_CODEWRD_7" ,
           "LDPC_DEC_CODEWRD_8" ,
           "LDPC_DEC_CODEWRD_9" ,
           "LDPC_DEC_CODEWRD_10" ,
           "LDPC_DEC_CODEWRD_11" ,
           "LDPC_DEC_CODEWRD_12" ,
           "LDPC_DEC_CODEWRD_13" ,
           "LDPC_DEC_CODEWRD_14" ,
           "LDPC_DEC_CODEWRD_15" ,
           "LDPC_DEC_CODEWRD_16" ,
           "LDPC_DEC_CODEWRD_17" ,
           "LDPC_DEC_CODEWRD_18" ,
           "LDPC_DEC_CODEWRD_19" ,
           "LDPC_DEC_CODEWRD_20" ,
           "LDPC_DEC_CODEWRD_21" ,
           "LDPC_DEC_CODEWRD_22" ,
           "LDPC_DEC_CODEWRD_23" ,
           "LDPC_DEC_CODEWRD_24" ,
           "LDPC_DEC_CODEWRD_25" ,
           "LDPC_DEC_CODEWRD_26" ,
           "LDPC_DEC_CODEWRD_27" ,
           "LDPC_DEC_CODEWRD_28" ,
           "LDPC_DEC_CODEWRD_29" ,
           "LDPC_DEC_CODEWRD_30" ,
           "LDPC_DEC_CODEWRD_31" ,
           "LDPC_DEC_CODEWRD_32" ,
           "LDPC_DEC_CODEWRD_33" ,
           "LDPC_DEC_CODEWRD_34" ,
           "LDPC_DEC_CODEWRD_35" ,
           "LDPC_DEC_CODEWRD_36" ,
           "LDPC_DEC_CODEWRD_37" ,
           "LDPC_DEC_CODEWRD_38" ,
           "LDPC_DEC_CODEWRD_39" ,
           "LDPC_DEC_CODEWRD_40" ,
           "LDPC_DEC_CODEWRD_41" ,
           "LDPC_DEC_CODEWRD_42" ,
           "LDPC_DEC_CODEWRD_43" ,
           "LDPC_DEC_CODEWRD_44" ,
           "LDPC_DEC_CODEWRD_45" ,
           "LDPC_DEC_CODEWRD_46" ,
           "LDPC_DEC_CODEWRD_47" ,
           "LDPC_DEC_CODEWRD_48" ,
           "LDPC_DEC_CODEWRD_49" ,
           "LDPC_DEC_CODEWRD_50" ,
           "LDPC_DEC_CODEWRD_51" ,
           "LDPC_DEC_CODEWRD_52" ,
           "LDPC_DEC_CODEWRD_53" ,
           "LDPC_DEC_CODEWRD_54" ,
           "LDPC_DEC_CODEWRD_55" ,
           "LDPC_DEC_CODEWRD_56" ,
           "LDPC_DEC_CODEWRD_57" ,
           "LDPC_DEC_CODEWRD_58" ,
           "LDPC_DEC_CODEWRD_59" ,
           "LDPC_DEC_CODEWRD_60" ,
           "LDPC_DEC_CODEWRD_61" ,
           "LDPC_DEC_CODEWRD_62" ,
           "LDPC_DEC_CODEWRD_63" ,
           "LDPC_DEC_CODEWRD_64" ,
           "LDPC_DEC_CODEWRD_65" ,
           "LDPC_DEC_CODEWRD_66" ,
           "LDPC_DEC_CODEWRD_67" ,
           "LDPC_DEC_CODEWRD_68" ,
           "LDPC_DEC_CODEWRD_69" ,
           "LDPC_DEC_CODEWRD_70" ,
           "LDPC_DEC_CODEWRD_71" ,
           "LDPC_DEC_CODEWRD_72" ,
           "LDPC_DEC_CODEWRD_73" ,
           "LDPC_DEC_CODEWRD_74" ,
           "LDPC_DEC_CODEWRD_75" ,
           "LDPC_DEC_CODEWRD_76" ,
           "LDPC_DEC_CODEWRD_77" ,
           "LDPC_DEC_CODEWRD_78" ,
           "LDPC_DEC_CODEWRD_79" ,
           "LDPC_DEC_CODEWRD_80" ,
           "LDPC_DEC_CODEWRD_81" ,
           "LDPC_DEC_CODEWRD_82" ,
           "LDPC_DEC_CODEWRD_83" ,
           "LDPC_DEC_CODEWRD_84" ,
           "LDPC_DEC_CODEWRD_85" ,
           "LDPC_DEC_CODEWRD_86" ,
           "LDPC_DEC_CODEWRD_87" ,
           "LDPC_DEC_CODEWRD_88" ,
           "LDPC_DEC_CODEWRD_89" ,
           "LDPC_DEC_CODEWRD_90" ,
           "LDPC_DEC_CODEWRD_91" ,
           "LDPC_DEC_CODEWRD_92" ,
           "LDPC_DEC_CODEWRD_93" ,
           "LDPC_DEC_CODEWRD_94" ,
           "LDPC_DEC_CODEWRD_95" ,
           "LDPC_DEC_CODEWRD_96" ,
           "LDPC_DEC_CODEWRD_97" ,
           "LDPC_DEC_CODEWRD_98" ,
           "LDPC_DEC_CODEWRD_99" ,
           "LDPC_DEC_CODEWRD_100" ,
           "LDPC_DEC_CODEWRD_101" ,
           "LDPC_DEC_CODEWRD_102" ,
           "LDPC_DEC_CODEWRD_103" ,
           "LDPC_DEC_CODEWRD_104" ,
           "LDPC_DEC_CODEWRD_105" ,
           "LDPC_DEC_CODEWRD_106" ,
           "LDPC_DEC_CODEWRD_107" ,
           "LDPC_DEC_CODEWRD_108" ,
           "LDPC_DEC_CODEWRD_109" ,
           "LDPC_DEC_CODEWRD_110" ,
           "LDPC_DEC_CODEWRD_111" ,
           "LDPC_DEC_CODEWRD_112" ,
           "LDPC_DEC_CODEWRD_113" ,
           "LDPC_DEC_CODEWRD_114" ,
           "LDPC_DEC_CODEWRD_115" ,
           "LDPC_DEC_CODEWRD_116" ,
           "LDPC_DEC_CODEWRD_117" ,
           "LDPC_DEC_CODEWRD_118" ,
           "LDPC_DEC_CODEWRD_119" ,
           "LDPC_DEC_CODEWRD_120" ,
           "LDPC_DEC_CODEWRD_121" ,
           "LDPC_DEC_CODEWRD_122" ,
           "LDPC_DEC_CODEWRD_123" ,
           "LDPC_DEC_CODEWRD_124" ,
           "LDPC_DEC_CODEWRD_125" ,
           "LDPC_DEC_CODEWRD_126" ,
           "LDPC_DEC_CODEWRD_127" ,
           "LDPC_DEC_CODEWRD_128" ,
           "LDPC_DEC_CODEWRD_129" ,
           "LDPC_DEC_CODEWRD_130" ,
           "LDPC_DEC_CODEWRD_131" ,
           "LDPC_DEC_CODEWRD_132" ,
           "LDPC_DEC_CODEWRD_133" ,
           "LDPC_DEC_CODEWRD_134" ,
           "LDPC_DEC_CODEWRD_135" ,
           "LDPC_DEC_CODEWRD_136" ,
           "LDPC_DEC_CODEWRD_137" ,
           "LDPC_DEC_CODEWRD_138" ,
           "LDPC_DEC_CODEWRD_139" ,
           "LDPC_DEC_CODEWRD_140" ,
           "LDPC_DEC_CODEWRD_141" ,
           "LDPC_DEC_CODEWRD_142" ,
           "LDPC_DEC_CODEWRD_143" ,
           "LDPC_DEC_CODEWRD_144" ,
           "LDPC_DEC_CODEWRD_145" ,
           "LDPC_DEC_CODEWRD_146" ,
           "LDPC_DEC_CODEWRD_147" ,
           "LDPC_DEC_CODEWRD_148" ,
           "LDPC_DEC_CODEWRD_149" ,
           "LDPC_DEC_CODEWRD_150" ,
           "LDPC_DEC_CODEWRD_151" ,
           "LDPC_DEC_CODEWRD_152" ,
           "LDPC_DEC_CODEWRD_153" ,
           "LDPC_DEC_CODEWRD_154" ,
           "LDPC_DEC_CODEWRD_155" ,
           "LDPC_DEC_CODEWRD_156" ,
           "LDPC_DEC_CODEWRD_157" ,
           "LDPC_DEC_CODEWRD_158" ,
           "LDPC_DEC_CODEWRD_159" ,
           "LDPC_DEC_CODEWRD_160" ,
           "LDPC_DEC_CODEWRD_161" ,
           "LDPC_DEC_CODEWRD_162" ,
           "LDPC_DEC_CODEWRD_163" ,
           "LDPC_DEC_CODEWRD_164" ,
           "LDPC_DEC_CODEWRD_165" ,
           "LDPC_DEC_CODEWRD_166" ,
           "LDPC_DEC_CODEWRD_167" ,
           "LDPC_DEC_CODEWRD_168" ,
           "LDPC_DEC_CODEWRD_169" ,
           "LDPC_DEC_CODEWRD_170" ,
           "LDPC_DEC_CODEWRD_171" ,
           "LDPC_DEC_CODEWRD_172" ,
           "LDPC_DEC_CODEWRD_173" ,
           "LDPC_DEC_CODEWRD_174" ,
           "LDPC_DEC_CODEWRD_175" ,
           "LDPC_DEC_CODEWRD_176" ,
           "LDPC_DEC_CODEWRD_177" ,
           "LDPC_DEC_CODEWRD_178" ,
           "LDPC_DEC_CODEWRD_179" ,
           "LDPC_DEC_CODEWRD_180" ,
           "LDPC_DEC_CODEWRD_181" ,
           "LDPC_DEC_CODEWRD_182" ,
           "LDPC_DEC_CODEWRD_183" ,
           "LDPC_DEC_CODEWRD_184" ,
           "LDPC_DEC_CODEWRD_185" ,
           "LDPC_DEC_CODEWRD_186" ,
           "LDPC_DEC_CODEWRD_187" ,
           "LDPC_DEC_CODEWRD_188" ,
           "LDPC_DEC_CODEWRD_189" ,
           "LDPC_DEC_CODEWRD_190" ,
           "LDPC_DEC_CODEWRD_191" ,
           "LDPC_DEC_CODEWRD_192" ,
           "LDPC_DEC_CODEWRD_193" ,
           "LDPC_DEC_CODEWRD_194" ,
           "LDPC_DEC_CODEWRD_195" ,
           "LDPC_DEC_CODEWRD_196" ,
           "LDPC_DEC_CODEWRD_197" ,
           "LDPC_DEC_CODEWRD_198" ,
           "LDPC_DEC_CODEWRD_199" ,
           "LDPC_DEC_CODEWRD_200" ,
           "LDPC_DEC_CODEWRD_201" ,
           "LDPC_DEC_CODEWRD_202" ,
           "LDPC_DEC_CODEWRD_203" ,
           "LDPC_DEC_CODEWRD_204" ,
           "LDPC_DEC_CODEWRD_205" ,
           "LDPC_DEC_CODEWRD_206" ,
           "LDPC_DEC_CODEWRD_207" ,
           "LDPC_DEC_EXPSYND_0" ,
           "LDPC_DEC_EXPSYND_1" ,
           "LDPC_DEC_EXPSYND_2" ,
           "LDPC_DEC_EXPSYND_3" ,
           "LDPC_DEC_EXPSYND_4" ,
           "LDPC_DEC_EXPSYND_5" ,
           "LDPC_DEC_EXPSYND_6" ,
           "LDPC_DEC_EXPSYND_7" ,
           "LDPC_DEC_EXPSYND_8" ,
           "LDPC_DEC_EXPSYND_9" ,
           "LDPC_DEC_EXPSYND_10" ,
           "LDPC_DEC_EXPSYND_11" ,
           "LDPC_DEC_EXPSYND_12" ,
           "LDPC_DEC_EXPSYND_13" ,
           "LDPC_DEC_EXPSYND_14" ,
           "LDPC_DEC_EXPSYND_15" ,
           "LDPC_DEC_EXPSYND_16" ,
           "LDPC_DEC_EXPSYND_17" ,
           "LDPC_DEC_EXPSYND_18" ,
           "LDPC_DEC_EXPSYND_19" ,
           "LDPC_DEC_EXPSYND_20" ,
           "LDPC_DEC_EXPSYND_21" ,
           "LDPC_DEC_EXPSYND_22" ,
           "LDPC_DEC_EXPSYND_23" ,
           "LDPC_DEC_EXPSYND_24" ,
           "LDPC_DEC_EXPSYND_25" ,
           "LDPC_DEC_EXPSYND_26" ,
           "LDPC_DEC_EXPSYND_27" ,
           "LDPC_DEC_EXPSYND_28" ,
           "LDPC_DEC_EXPSYND_29" ,
           "LDPC_DEC_EXPSYND_30" ,
           "LDPC_DEC_EXPSYND_31" ,
           "LDPC_DEC_EXPSYND_32" ,
           "LDPC_DEC_EXPSYND_33" ,
           "LDPC_DEC_EXPSYND_34" ,
           "LDPC_DEC_EXPSYND_35" ,
           "LDPC_DEC_EXPSYND_36" ,
           "LDPC_DEC_EXPSYND_37" ,
           "LDPC_DEC_EXPSYND_38" ,
           "LDPC_DEC_EXPSYND_39" ,
           "LDPC_DEC_EXPSYND_40" ,
           "LDPC_DEC_EXPSYND_41" ,
           "LDPC_DEC_EXPSYND_42" ,
           "LDPC_DEC_EXPSYND_43" ,
           "LDPC_DEC_EXPSYND_44" ,
           "LDPC_DEC_EXPSYND_45" ,
           "LDPC_DEC_EXPSYND_46" ,
           "LDPC_DEC_EXPSYND_47" ,
           "LDPC_DEC_EXPSYND_48" ,
           "LDPC_DEC_EXPSYND_49" ,
           "LDPC_DEC_EXPSYND_50" ,
           "LDPC_DEC_EXPSYND_51" ,
           "LDPC_DEC_EXPSYND_52" ,
           "LDPC_DEC_EXPSYND_53" ,
           "LDPC_DEC_EXPSYND_54" ,
           "LDPC_DEC_EXPSYND_55" ,
           "LDPC_DEC_EXPSYND_56" ,
           "LDPC_DEC_EXPSYND_57" ,
           "LDPC_DEC_EXPSYND_58" ,
           "LDPC_DEC_EXPSYND_59" ,
           "LDPC_DEC_EXPSYND_60" ,
           "LDPC_DEC_EXPSYND_61" ,
           "LDPC_DEC_EXPSYND_62" ,
           "LDPC_DEC_EXPSYND_63" ,
           "LDPC_DEC_EXPSYND_64" ,
           "LDPC_DEC_EXPSYND_65" ,
           "LDPC_DEC_EXPSYND_66" ,
           "LDPC_DEC_EXPSYND_67" ,
           "LDPC_DEC_EXPSYND_68" ,
           "LDPC_DEC_EXPSYND_69" ,
           "LDPC_DEC_EXPSYND_70" ,
           "LDPC_DEC_EXPSYND_71" ,
           "LDPC_DEC_EXPSYND_72" ,
           "LDPC_DEC_EXPSYND_73" ,
           "LDPC_DEC_EXPSYND_74" ,
           "LDPC_DEC_EXPSYND_75" ,
           "LDPC_DEC_EXPSYND_76" ,
           "LDPC_DEC_EXPSYND_77" ,
           "LDPC_DEC_EXPSYND_78" ,
           "LDPC_DEC_EXPSYND_79" ,
           "LDPC_DEC_EXPSYND_80" ,
           "LDPC_DEC_EXPSYND_81" ,
           "LDPC_DEC_EXPSYND_82" ,
           "LDPC_DEC_EXPSYND_83" ,
           "LDPC_DEC_EXPSYND_84" ,
           "LDPC_DEC_EXPSYND_85" ,
           "LDPC_DEC_EXPSYND_86" ,
           "LDPC_DEC_EXPSYND_87" ,
           "LDPC_DEC_EXPSYND_88" ,
           "LDPC_DEC_EXPSYND_89" ,
           "LDPC_DEC_EXPSYND_90" ,
           "LDPC_DEC_EXPSYND_91" ,
           "LDPC_DEC_EXPSYND_92" ,
           "LDPC_DEC_EXPSYND_93" ,
           "LDPC_DEC_EXPSYND_94" ,
           "LDPC_DEC_EXPSYND_95" ,
           "LDPC_DEC_EXPSYND_96" ,
           "LDPC_DEC_EXPSYND_97" ,
           "LDPC_DEC_EXPSYND_98" ,
           "LDPC_DEC_EXPSYND_99" ,
           "LDPC_DEC_EXPSYND_100" ,
           "LDPC_DEC_EXPSYND_101" ,
           "LDPC_DEC_EXPSYND_102" ,
           "LDPC_DEC_EXPSYND_103" ,
           "LDPC_DEC_EXPSYND_104" ,
           "LDPC_DEC_EXPSYND_105" ,
           "LDPC_DEC_EXPSYND_106" ,
           "LDPC_DEC_EXPSYND_107" ,
           "LDPC_DEC_EXPSYND_108" ,
           "LDPC_DEC_EXPSYND_109" ,
           "LDPC_DEC_EXPSYND_110" ,
           "LDPC_DEC_EXPSYND_111" ,
           "LDPC_DEC_EXPSYND_112" ,
           "LDPC_DEC_EXPSYND_113" ,
           "LDPC_DEC_EXPSYND_114" ,
           "LDPC_DEC_EXPSYND_115" ,
           "LDPC_DEC_EXPSYND_116" ,
           "LDPC_DEC_EXPSYND_117" ,
           "LDPC_DEC_EXPSYND_118" ,
           "LDPC_DEC_EXPSYND_119" ,
           "LDPC_DEC_EXPSYND_120" ,
           "LDPC_DEC_EXPSYND_121" ,
           "LDPC_DEC_EXPSYND_122" ,
           "LDPC_DEC_EXPSYND_123" ,
           "LDPC_DEC_EXPSYND_124" ,
           "LDPC_DEC_EXPSYND_125" ,
           "LDPC_DEC_EXPSYND_126" ,
           "LDPC_DEC_EXPSYND_127" ,
           "LDPC_DEC_EXPSYND_128" ,
           "LDPC_DEC_EXPSYND_129" ,
           "LDPC_DEC_EXPSYND_130" ,
           "LDPC_DEC_EXPSYND_131" ,
           "LDPC_DEC_EXPSYND_132" ,
           "LDPC_DEC_EXPSYND_133" ,
           "LDPC_DEC_EXPSYND_134" ,
           "LDPC_DEC_EXPSYND_135" ,
           "LDPC_DEC_EXPSYND_136" ,
           "LDPC_DEC_EXPSYND_137" ,
           "LDPC_DEC_EXPSYND_138" ,
           "LDPC_DEC_EXPSYND_139" ,
           "LDPC_DEC_EXPSYND_140" ,
           "LDPC_DEC_EXPSYND_141" ,
           "LDPC_DEC_EXPSYND_142" ,
           "LDPC_DEC_EXPSYND_143" ,
           "LDPC_DEC_EXPSYND_144" ,
           "LDPC_DEC_EXPSYND_145" ,
           "LDPC_DEC_EXPSYND_146" ,
           "LDPC_DEC_EXPSYND_147" ,
           "LDPC_DEC_EXPSYND_148" ,
           "LDPC_DEC_EXPSYND_149" ,
           "LDPC_DEC_EXPSYND_150" ,
           "LDPC_DEC_EXPSYND_151" ,
           "LDPC_DEC_EXPSYND_152" ,
           "LDPC_DEC_EXPSYND_153" ,
           "LDPC_DEC_EXPSYND_154" ,
           "LDPC_DEC_EXPSYND_155" ,
           "LDPC_DEC_EXPSYND_156" ,
           "LDPC_DEC_EXPSYND_157" ,
           "LDPC_DEC_EXPSYND_158" ,
           "LDPC_DEC_EXPSYND_159" ,
           "LDPC_DEC_EXPSYND_160" ,
           "LDPC_DEC_EXPSYND_161" ,
           "LDPC_DEC_EXPSYND_162" ,
           "LDPC_DEC_EXPSYND_163" ,
           "LDPC_DEC_EXPSYND_164" ,
           "LDPC_DEC_EXPSYND_165" ,
           "LDPC_DEC_EXPSYND_166" ,
           "LDPC_DEC_EXPSYND_167" ,
           "LDPC_DEC_PROBABILITY" ,
           "LDPC_DEC_HamDist_loop_max" ,
           "LDPC_DEC_HamDist_loop_percentage" ,
           "LDPC_DEC_HamDist_iir1" ,
           "LDPC_DEC_HamDist_iir2_NOT_USED" ,
           "LDPC_DEC_HamDist_iir3_NOT_USED" ,
           "LDPC_DEC_converged_valid" ,
           "LDPC_DEC_converged_status" ,
           "LDPC_DEC_converged_valid_NOT_USED" ,
           "LDPC_DEC_start" ,
           "LDPC_DEC_valid_NOT_USED" ,
           "LDPC_DEC_valid_codeword_NOT_USED" ]

t =  Template("""           LDPC_ENC_MSG_IN_$idx = $val;\n""")
line = ""
for i in range(nn-mm):
    val1 = msg[i]
    line = line + (t.substitute(idx = i, val=val1))

print (line)




line = f"""
int enc_cword  [nn];
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
           enc_cword [   207] = LDPC_ENC_CODEWRD_207 ;"""

print( line )


if(1):
    #// change channel error probability
    p = 0.0384615398943424
    p_int = int(math.log((1-p)/p)  * (1<<11) + 0.5)
    #p_int = 6592;
    #// probability integer from channel
    mod = nn * p + 0.5
    num =0

    #// introduce the error
    while (num<mod) :
      idx = random.randrange(0,nn)
      if (err_cword[idx] ==0) :
         err_cword[idx] = 1
         num += 1

    for i in range (nn):
        if  ( enc_cword[i] ^ err_cword[i] ) :
           dec_cword[i] = 0x3
        else:
           dec_cword[i] = 0x1


line=f"""
    LDPC_DEC_PROBABILITY = {p_int};
    """
print (line)


line =     f"""
           LDPC_DEC_CODEWRD_0  =  { dec_cword[   0] };
           LDPC_DEC_CODEWRD_1  =  { dec_cword[   1] };
           LDPC_DEC_CODEWRD_2  =  { dec_cword[   2] };
           LDPC_DEC_CODEWRD_3  =  { dec_cword[   3] };
           LDPC_DEC_CODEWRD_4  =  { dec_cword[   4] };
           LDPC_DEC_CODEWRD_5  =  { dec_cword[   5] };
           LDPC_DEC_CODEWRD_6  =  { dec_cword[   6] };
           LDPC_DEC_CODEWRD_7  =  { dec_cword[   7] };
           LDPC_DEC_CODEWRD_8  =  { dec_cword[   8] };
           LDPC_DEC_CODEWRD_9  =  { dec_cword[   9] };
           LDPC_DEC_CODEWRD_10  =  { dec_cword[   10] };
           LDPC_DEC_CODEWRD_11  =  { dec_cword[   11] };
           LDPC_DEC_CODEWRD_12  =  { dec_cword[   12] };
           LDPC_DEC_CODEWRD_13  =  { dec_cword[   13] };
           LDPC_DEC_CODEWRD_14  =  { dec_cword[   14] };
           LDPC_DEC_CODEWRD_15  =  { dec_cword[   15] };
           LDPC_DEC_CODEWRD_16  =  { dec_cword[   16] };
           LDPC_DEC_CODEWRD_17  =  { dec_cword[   17] };
           LDPC_DEC_CODEWRD_18  =  { dec_cword[   18] };
           LDPC_DEC_CODEWRD_19  =  { dec_cword[   19] };
           LDPC_DEC_CODEWRD_20  =  { dec_cword[   20] };
           LDPC_DEC_CODEWRD_21  =  { dec_cword[   21] };
           LDPC_DEC_CODEWRD_22  =  { dec_cword[   22] };
           LDPC_DEC_CODEWRD_23  =  { dec_cword[   23] };
           LDPC_DEC_CODEWRD_24  =  { dec_cword[   24] };
           LDPC_DEC_CODEWRD_25  =  { dec_cword[   25] };
           LDPC_DEC_CODEWRD_26  =  { dec_cword[   26] };
           LDPC_DEC_CODEWRD_27  =  { dec_cword[   27] };
           LDPC_DEC_CODEWRD_28  =  { dec_cword[   28] };
           LDPC_DEC_CODEWRD_29  =  { dec_cword[   29] };
           LDPC_DEC_CODEWRD_30  =  { dec_cword[   30] };
           LDPC_DEC_CODEWRD_31  =  { dec_cword[   31] };
           LDPC_DEC_CODEWRD_32  =  { dec_cword[   32] };
           LDPC_DEC_CODEWRD_33  =  { dec_cword[   33] };
           LDPC_DEC_CODEWRD_34  =  { dec_cword[   34] };
           LDPC_DEC_CODEWRD_35  =  { dec_cword[   35] };
           LDPC_DEC_CODEWRD_36  =  { dec_cword[   36] };
           LDPC_DEC_CODEWRD_37  =  { dec_cword[   37] };
           LDPC_DEC_CODEWRD_38  =  { dec_cword[   38] };
           LDPC_DEC_CODEWRD_39  =  { dec_cword[   39] };
           LDPC_DEC_CODEWRD_40  =  { dec_cword[   40] };
           LDPC_DEC_CODEWRD_41  =  { dec_cword[   41] };
           LDPC_DEC_CODEWRD_42  =  { dec_cword[   42] };
           LDPC_DEC_CODEWRD_43  =  { dec_cword[   43] };
           LDPC_DEC_CODEWRD_44  =  { dec_cword[   44] };
           LDPC_DEC_CODEWRD_45  =  { dec_cword[   45] };
           LDPC_DEC_CODEWRD_46  =  { dec_cword[   46] };
           LDPC_DEC_CODEWRD_47  =  { dec_cword[   47] };
           LDPC_DEC_CODEWRD_48  =  { dec_cword[   48] };
           LDPC_DEC_CODEWRD_49  =  { dec_cword[   49] };
           LDPC_DEC_CODEWRD_50  =  { dec_cword[   50] };
           LDPC_DEC_CODEWRD_51  =  { dec_cword[   51] };
           LDPC_DEC_CODEWRD_52  =  { dec_cword[   52] };
           LDPC_DEC_CODEWRD_53  =  { dec_cword[   53] };
           LDPC_DEC_CODEWRD_54  =  { dec_cword[   54] };
           LDPC_DEC_CODEWRD_55  =  { dec_cword[   55] };
           LDPC_DEC_CODEWRD_56  =  { dec_cword[   56] };
           LDPC_DEC_CODEWRD_57  =  { dec_cword[   57] };
           LDPC_DEC_CODEWRD_58  =  { dec_cword[   58] };
           LDPC_DEC_CODEWRD_59  =  { dec_cword[   59] };
           LDPC_DEC_CODEWRD_60  =  { dec_cword[   60] };
           LDPC_DEC_CODEWRD_61  =  { dec_cword[   61] };
           LDPC_DEC_CODEWRD_62  =  { dec_cword[   62] };
           LDPC_DEC_CODEWRD_63  =  { dec_cword[   63] };
           LDPC_DEC_CODEWRD_64  =  { dec_cword[   64] };
           LDPC_DEC_CODEWRD_65  =  { dec_cword[   65] };
           LDPC_DEC_CODEWRD_66  =  { dec_cword[   66] };
           LDPC_DEC_CODEWRD_67  =  { dec_cword[   67] };
           LDPC_DEC_CODEWRD_68  =  { dec_cword[   68] };
           LDPC_DEC_CODEWRD_69  =  { dec_cword[   69] };
           LDPC_DEC_CODEWRD_70  =  { dec_cword[   70] };
           LDPC_DEC_CODEWRD_71  =  { dec_cword[   71] };
           LDPC_DEC_CODEWRD_72  =  { dec_cword[   72] };
           LDPC_DEC_CODEWRD_73  =  { dec_cword[   73] };
           LDPC_DEC_CODEWRD_74  =  { dec_cword[   74] };
           LDPC_DEC_CODEWRD_75  =  { dec_cword[   75] };
           LDPC_DEC_CODEWRD_76  =  { dec_cword[   76] };
           LDPC_DEC_CODEWRD_77  =  { dec_cword[   77] };
           LDPC_DEC_CODEWRD_78  =  { dec_cword[   78] };
           LDPC_DEC_CODEWRD_79  =  { dec_cword[   79] };
           LDPC_DEC_CODEWRD_80  =  { dec_cword[   80] };
           LDPC_DEC_CODEWRD_81  =  { dec_cword[   81] };
           LDPC_DEC_CODEWRD_82  =  { dec_cword[   82] };
           LDPC_DEC_CODEWRD_83  =  { dec_cword[   83] };
           LDPC_DEC_CODEWRD_84  =  { dec_cword[   84] };
           LDPC_DEC_CODEWRD_85  =  { dec_cword[   85] };
           LDPC_DEC_CODEWRD_86  =  { dec_cword[   86] };
           LDPC_DEC_CODEWRD_87  =  { dec_cword[   87] };
           LDPC_DEC_CODEWRD_88  =  { dec_cword[   88] };
           LDPC_DEC_CODEWRD_89  =  { dec_cword[   89] };
           LDPC_DEC_CODEWRD_90  =  { dec_cword[   90] };
           LDPC_DEC_CODEWRD_91  =  { dec_cword[   91] };
           LDPC_DEC_CODEWRD_92  =  { dec_cword[   92] };
           LDPC_DEC_CODEWRD_93  =  { dec_cword[   93] };
           LDPC_DEC_CODEWRD_94  =  { dec_cword[   94] };
           LDPC_DEC_CODEWRD_95  =  { dec_cword[   95] };
           LDPC_DEC_CODEWRD_96  =  { dec_cword[   96] };
           LDPC_DEC_CODEWRD_97  =  { dec_cword[   97] };
           LDPC_DEC_CODEWRD_98  =  { dec_cword[   98] };
           LDPC_DEC_CODEWRD_99  =  { dec_cword[   99] };
           LDPC_DEC_CODEWRD_100  =  { dec_cword[   100] };
           LDPC_DEC_CODEWRD_101  =  { dec_cword[   101] };
           LDPC_DEC_CODEWRD_102  =  { dec_cword[   102] };
           LDPC_DEC_CODEWRD_103  =  { dec_cword[   103] };
           LDPC_DEC_CODEWRD_104  =  { dec_cword[   104] };
           LDPC_DEC_CODEWRD_105  =  { dec_cword[   105] };
           LDPC_DEC_CODEWRD_106  =  { dec_cword[   106] };
           LDPC_DEC_CODEWRD_107  =  { dec_cword[   107] };
           LDPC_DEC_CODEWRD_108  =  { dec_cword[   108] };
           LDPC_DEC_CODEWRD_109  =  { dec_cword[   109] };
           LDPC_DEC_CODEWRD_110  =  { dec_cword[   110] };
           LDPC_DEC_CODEWRD_111  =  { dec_cword[   111] };
           LDPC_DEC_CODEWRD_112  =  { dec_cword[   112] };
           LDPC_DEC_CODEWRD_113  =  { dec_cword[   113] };
           LDPC_DEC_CODEWRD_114  =  { dec_cword[   114] };
           LDPC_DEC_CODEWRD_115  =  { dec_cword[   115] };
           LDPC_DEC_CODEWRD_116  =  { dec_cword[   116] };
           LDPC_DEC_CODEWRD_117  =  { dec_cword[   117] };
           LDPC_DEC_CODEWRD_118  =  { dec_cword[   118] };
           LDPC_DEC_CODEWRD_119  =  { dec_cword[   119] };
           LDPC_DEC_CODEWRD_120  =  { dec_cword[   120] };
           LDPC_DEC_CODEWRD_121  =  { dec_cword[   121] };
           LDPC_DEC_CODEWRD_122  =  { dec_cword[   122] };
           LDPC_DEC_CODEWRD_123  =  { dec_cword[   123] };
           LDPC_DEC_CODEWRD_124  =  { dec_cword[   124] };
           LDPC_DEC_CODEWRD_125  =  { dec_cword[   125] };
           LDPC_DEC_CODEWRD_126  =  { dec_cword[   126] };
           LDPC_DEC_CODEWRD_127  =  { dec_cword[   127] };
           LDPC_DEC_CODEWRD_128  =  { dec_cword[   128] };
           LDPC_DEC_CODEWRD_129  =  { dec_cword[   129] };
           LDPC_DEC_CODEWRD_130  =  { dec_cword[   130] };
           LDPC_DEC_CODEWRD_131  =  { dec_cword[   131] };
           LDPC_DEC_CODEWRD_132  =  { dec_cword[   132] };
           LDPC_DEC_CODEWRD_133  =  { dec_cword[   133] };
           LDPC_DEC_CODEWRD_134  =  { dec_cword[   134] };
           LDPC_DEC_CODEWRD_135  =  { dec_cword[   135] };
           LDPC_DEC_CODEWRD_136  =  { dec_cword[   136] };
           LDPC_DEC_CODEWRD_137  =  { dec_cword[   137] };
           LDPC_DEC_CODEWRD_138  =  { dec_cword[   138] };
           LDPC_DEC_CODEWRD_139  =  { dec_cword[   139] };
           LDPC_DEC_CODEWRD_140  =  { dec_cword[   140] };
           LDPC_DEC_CODEWRD_141  =  { dec_cword[   141] };
           LDPC_DEC_CODEWRD_142  =  { dec_cword[   142] };
           LDPC_DEC_CODEWRD_143  =  { dec_cword[   143] };
           LDPC_DEC_CODEWRD_144  =  { dec_cword[   144] };
           LDPC_DEC_CODEWRD_145  =  { dec_cword[   145] };
           LDPC_DEC_CODEWRD_146  =  { dec_cword[   146] };
           LDPC_DEC_CODEWRD_147  =  { dec_cword[   147] };
           LDPC_DEC_CODEWRD_148  =  { dec_cword[   148] };
           LDPC_DEC_CODEWRD_149  =  { dec_cword[   149] };
           LDPC_DEC_CODEWRD_150  =  { dec_cword[   150] };
           LDPC_DEC_CODEWRD_151  =  { dec_cword[   151] };
           LDPC_DEC_CODEWRD_152  =  { dec_cword[   152] };
           LDPC_DEC_CODEWRD_153  =  { dec_cword[   153] };
           LDPC_DEC_CODEWRD_154  =  { dec_cword[   154] };
           LDPC_DEC_CODEWRD_155  =  { dec_cword[   155] };
           LDPC_DEC_CODEWRD_156  =  { dec_cword[   156] };
           LDPC_DEC_CODEWRD_157  =  { dec_cword[   157] };
           LDPC_DEC_CODEWRD_158  =  { dec_cword[   158] };
           LDPC_DEC_CODEWRD_159  =  { dec_cword[   159] };
           LDPC_DEC_CODEWRD_160  =  { dec_cword[   160] };
           LDPC_DEC_CODEWRD_161  =  { dec_cword[   161] };
           LDPC_DEC_CODEWRD_162  =  { dec_cword[   162] };
           LDPC_DEC_CODEWRD_163  =  { dec_cword[   163] };
           LDPC_DEC_CODEWRD_164  =  { dec_cword[   164] };
           LDPC_DEC_CODEWRD_165  =  { dec_cword[   165] };
           LDPC_DEC_CODEWRD_166  =  { dec_cword[   166] };
           LDPC_DEC_CODEWRD_167  =  { dec_cword[   167] };
           LDPC_DEC_CODEWRD_168  =  { dec_cword[   168] };
           LDPC_DEC_CODEWRD_169  =  { dec_cword[   169] };
           LDPC_DEC_CODEWRD_170  =  { dec_cword[   170] };
           LDPC_DEC_CODEWRD_171  =  { dec_cword[   171] };
           LDPC_DEC_CODEWRD_172  =  { dec_cword[   172] };
           LDPC_DEC_CODEWRD_173  =  { dec_cword[   173] };
           LDPC_DEC_CODEWRD_174  =  { dec_cword[   174] };
           LDPC_DEC_CODEWRD_175  =  { dec_cword[   175] };
           LDPC_DEC_CODEWRD_176  =  { dec_cword[   176] };
           LDPC_DEC_CODEWRD_177  =  { dec_cword[   177] };
           LDPC_DEC_CODEWRD_178  =  { dec_cword[   178] };
           LDPC_DEC_CODEWRD_179  =  { dec_cword[   179] };
           LDPC_DEC_CODEWRD_180  =  { dec_cword[   180] };
           LDPC_DEC_CODEWRD_181  =  { dec_cword[   181] };
           LDPC_DEC_CODEWRD_182  =  { dec_cword[   182] };
           LDPC_DEC_CODEWRD_183  =  { dec_cword[   183] };
           LDPC_DEC_CODEWRD_184  =  { dec_cword[   184] };
           LDPC_DEC_CODEWRD_185  =  { dec_cword[   185] };
           LDPC_DEC_CODEWRD_186  =  { dec_cword[   186] };
           LDPC_DEC_CODEWRD_187  =  { dec_cword[   187] };
           LDPC_DEC_CODEWRD_188  =  { dec_cword[   188] };
           LDPC_DEC_CODEWRD_189  =  { dec_cword[   189] };
           LDPC_DEC_CODEWRD_190  =  { dec_cword[   190] };
           LDPC_DEC_CODEWRD_191  =  { dec_cword[   191] };
           LDPC_DEC_CODEWRD_192  =  { dec_cword[   192] };
           LDPC_DEC_CODEWRD_193  =  { dec_cword[   193] };
           LDPC_DEC_CODEWRD_194  =  { dec_cword[   194] };
           LDPC_DEC_CODEWRD_195  =  { dec_cword[   195] };
           LDPC_DEC_CODEWRD_196  =  { dec_cword[   196] };
           LDPC_DEC_CODEWRD_197  =  { dec_cword[   197] };
           LDPC_DEC_CODEWRD_198  =  { dec_cword[   198] };
           LDPC_DEC_CODEWRD_199  =  { dec_cword[   199] };
           LDPC_DEC_CODEWRD_200  =  { dec_cword[   200] };
           LDPC_DEC_CODEWRD_201  =  { dec_cword[   201] };
           LDPC_DEC_CODEWRD_202  =  { dec_cword[   202] };
           LDPC_DEC_CODEWRD_203  =  { dec_cword[   203] };
           LDPC_DEC_CODEWRD_204  =  { dec_cword[   204] };
           LDPC_DEC_CODEWRD_205  =  { dec_cword[   205] };
           LDPC_DEC_CODEWRD_206  =  { dec_cword[   206] };
           LDPC_DEC_CODEWRD_207  =  { dec_cword[   207] };

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
           LDPC_DEC_EXPSYND_167  = 0x0; """

print (line.format(dec_cword))

line = f"""
           LDPC_DEC_HamDist_loop_max  = 0x20;
           LDPC_DEC_HamDist_loop_percentage  = 110;
           LDPC_DEC_HamDist_iir1  = 85;
           LDPC_DEC_HamDist_iir2_NOT_USED = 15;
           LDPC_DEC_HamDist_iir3_NOT_USED  = 5;
           LDPC_DEC_start  = 0x1;"""

print (line)
line = r"""
           while( LDPC_DEC_converged_valid != 0x00000001) {}
           // status = LDPC_DEC_converged_status;
           """
print (line)





