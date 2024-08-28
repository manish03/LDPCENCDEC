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

module  sntc_HamDist#(
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
parameter SUM_NN=$clog2(NN+1), // 8 : nn_width
parameter SUM_MM=$clog2(MM+1), // 8 : mm_width
parameter LEN=MM,
parameter SUM_LEN= $clog2(NN+1)+1,
parameter HAM_LEN= 16
) (


input  wire [LEN-1:0]                         HamDist_y,
input  wire [LEN-1:0]                         HamDist_x,
output wire [SUM_LEN-1:0]                     sum_mm,

/* verilator lint_off UNUSED */
input wire                                    clr,
/* verilator lint_on UNUSED */
input wire                                    rstn,
input wire                                    clk
);

`ifdef ENCRYPT
`endif

//  4 : numAdditionGates

wire [SUM_LEN -1:0] sum_mm_00001_00000;
wire [SUM_LEN -1:0] sum_mm_00001_00001;
wire [SUM_LEN -1:0] sum_mm_00001_00002;
wire [SUM_LEN -1:0] sum_mm_00001_00003;
wire [SUM_LEN -1:0] sum_mm_00002_00000;
wire [SUM_LEN -1:0] sum_mm_00002_00001;
wire [SUM_LEN -1:0] sum_mm_00002_00002;
wire [SUM_LEN -1:0] sum_mm_00002_00003;
wire [SUM_LEN -1:0] sum_mm_00002_00004;
wire [SUM_LEN -1:0] sum_mm_00002_00005;
wire [SUM_LEN -1:0] sum_mm_00002_00006;
wire [SUM_LEN -1:0] sum_mm_00002_00007;
wire [SUM_LEN -1:0] sum_mm_00003_00000;
wire [SUM_LEN -1:0] sum_mm_00003_00001;
wire [SUM_LEN -1:0] sum_mm_00003_00002;
wire [SUM_LEN -1:0] sum_mm_00003_00003;
wire [SUM_LEN -1:0] sum_mm_00003_00004;
wire [SUM_LEN -1:0] sum_mm_00003_00005;
wire [SUM_LEN -1:0] sum_mm_00003_00006;
wire [SUM_LEN -1:0] sum_mm_00003_00007;
wire [SUM_LEN -1:0] sum_mm_00003_00008;
wire [SUM_LEN -1:0] sum_mm_00003_00009;
wire [SUM_LEN -1:0] sum_mm_00003_00010;
wire [SUM_LEN -1:0] sum_mm_00003_00011;

wire [LEN-1:0] cmp;
assign       cmp['d 00000] = HamDist_x['d 00000] != HamDist_y ['d 00000];
assign       cmp['d 00001] = HamDist_x['d 00001] != HamDist_y ['d 00001];
assign       cmp['d 00002] = HamDist_x['d 00002] != HamDist_y ['d 00002];
assign       cmp['d 00003] = HamDist_x['d 00003] != HamDist_y ['d 00003];
assign       cmp['d 00004] = HamDist_x['d 00004] != HamDist_y ['d 00004];
assign       cmp['d 00005] = HamDist_x['d 00005] != HamDist_y ['d 00005];
assign       cmp['d 00006] = HamDist_x['d 00006] != HamDist_y ['d 00006];
assign       cmp['d 00007] = HamDist_x['d 00007] != HamDist_y ['d 00007];
assign       cmp['d 00008] = HamDist_x['d 00008] != HamDist_y ['d 00008];
assign       cmp['d 00009] = HamDist_x['d 00009] != HamDist_y ['d 00009];
assign       cmp['d 00010] = HamDist_x['d 00010] != HamDist_y ['d 00010];
assign       cmp['d 00011] = HamDist_x['d 00011] != HamDist_y ['d 00011];
assign       cmp['d 00012] = HamDist_x['d 00012] != HamDist_y ['d 00012];
assign       cmp['d 00013] = HamDist_x['d 00013] != HamDist_y ['d 00013];
assign       cmp['d 00014] = HamDist_x['d 00014] != HamDist_y ['d 00014];
assign       cmp['d 00015] = HamDist_x['d 00015] != HamDist_y ['d 00015];
assign       cmp['d 00016] = HamDist_x['d 00016] != HamDist_y ['d 00016];
assign       cmp['d 00017] = HamDist_x['d 00017] != HamDist_y ['d 00017];
assign       cmp['d 00018] = HamDist_x['d 00018] != HamDist_y ['d 00018];
assign       cmp['d 00019] = HamDist_x['d 00019] != HamDist_y ['d 00019];
assign       cmp['d 00020] = HamDist_x['d 00020] != HamDist_y ['d 00020];
assign       cmp['d 00021] = HamDist_x['d 00021] != HamDist_y ['d 00021];
assign       cmp['d 00022] = HamDist_x['d 00022] != HamDist_y ['d 00022];
assign       cmp['d 00023] = HamDist_x['d 00023] != HamDist_y ['d 00023];
assign       cmp['d 00024] = HamDist_x['d 00024] != HamDist_y ['d 00024];
assign       cmp['d 00025] = HamDist_x['d 00025] != HamDist_y ['d 00025];
assign       cmp['d 00026] = HamDist_x['d 00026] != HamDist_y ['d 00026];
assign       cmp['d 00027] = HamDist_x['d 00027] != HamDist_y ['d 00027];
assign       cmp['d 00028] = HamDist_x['d 00028] != HamDist_y ['d 00028];
assign       cmp['d 00029] = HamDist_x['d 00029] != HamDist_y ['d 00029];
assign       cmp['d 00030] = HamDist_x['d 00030] != HamDist_y ['d 00030];
assign       cmp['d 00031] = HamDist_x['d 00031] != HamDist_y ['d 00031];
assign       cmp['d 00032] = HamDist_x['d 00032] != HamDist_y ['d 00032];
assign       cmp['d 00033] = HamDist_x['d 00033] != HamDist_y ['d 00033];
assign       cmp['d 00034] = HamDist_x['d 00034] != HamDist_y ['d 00034];
assign       cmp['d 00035] = HamDist_x['d 00035] != HamDist_y ['d 00035];
assign       cmp['d 00036] = HamDist_x['d 00036] != HamDist_y ['d 00036];
assign       cmp['d 00037] = HamDist_x['d 00037] != HamDist_y ['d 00037];
assign       cmp['d 00038] = HamDist_x['d 00038] != HamDist_y ['d 00038];
assign       cmp['d 00039] = HamDist_x['d 00039] != HamDist_y ['d 00039];
assign       cmp['d 00040] = HamDist_x['d 00040] != HamDist_y ['d 00040];
assign       cmp['d 00041] = HamDist_x['d 00041] != HamDist_y ['d 00041];
assign       cmp['d 00042] = HamDist_x['d 00042] != HamDist_y ['d 00042];
assign       cmp['d 00043] = HamDist_x['d 00043] != HamDist_y ['d 00043];
assign       cmp['d 00044] = HamDist_x['d 00044] != HamDist_y ['d 00044];
assign       cmp['d 00045] = HamDist_x['d 00045] != HamDist_y ['d 00045];
assign       cmp['d 00046] = HamDist_x['d 00046] != HamDist_y ['d 00046];
assign       cmp['d 00047] = HamDist_x['d 00047] != HamDist_y ['d 00047];
assign       cmp['d 00048] = HamDist_x['d 00048] != HamDist_y ['d 00048];
assign       cmp['d 00049] = HamDist_x['d 00049] != HamDist_y ['d 00049];
assign       cmp['d 00050] = HamDist_x['d 00050] != HamDist_y ['d 00050];
assign       cmp['d 00051] = HamDist_x['d 00051] != HamDist_y ['d 00051];
assign       cmp['d 00052] = HamDist_x['d 00052] != HamDist_y ['d 00052];
assign       cmp['d 00053] = HamDist_x['d 00053] != HamDist_y ['d 00053];
assign       cmp['d 00054] = HamDist_x['d 00054] != HamDist_y ['d 00054];
assign       cmp['d 00055] = HamDist_x['d 00055] != HamDist_y ['d 00055];
assign       cmp['d 00056] = HamDist_x['d 00056] != HamDist_y ['d 00056];
assign       cmp['d 00057] = HamDist_x['d 00057] != HamDist_y ['d 00057];
assign       cmp['d 00058] = HamDist_x['d 00058] != HamDist_y ['d 00058];
assign       cmp['d 00059] = HamDist_x['d 00059] != HamDist_y ['d 00059];
assign       cmp['d 00060] = HamDist_x['d 00060] != HamDist_y ['d 00060];
assign       cmp['d 00061] = HamDist_x['d 00061] != HamDist_y ['d 00061];
assign       cmp['d 00062] = HamDist_x['d 00062] != HamDist_y ['d 00062];
assign       cmp['d 00063] = HamDist_x['d 00063] != HamDist_y ['d 00063];
assign       cmp['d 00064] = HamDist_x['d 00064] != HamDist_y ['d 00064];
assign       cmp['d 00065] = HamDist_x['d 00065] != HamDist_y ['d 00065];
assign       cmp['d 00066] = HamDist_x['d 00066] != HamDist_y ['d 00066];
assign       cmp['d 00067] = HamDist_x['d 00067] != HamDist_y ['d 00067];
assign       cmp['d 00068] = HamDist_x['d 00068] != HamDist_y ['d 00068];
assign       cmp['d 00069] = HamDist_x['d 00069] != HamDist_y ['d 00069];
assign       cmp['d 00070] = HamDist_x['d 00070] != HamDist_y ['d 00070];
assign       cmp['d 00071] = HamDist_x['d 00071] != HamDist_y ['d 00071];
assign       cmp['d 00072] = HamDist_x['d 00072] != HamDist_y ['d 00072];
assign       cmp['d 00073] = HamDist_x['d 00073] != HamDist_y ['d 00073];
assign       cmp['d 00074] = HamDist_x['d 00074] != HamDist_y ['d 00074];
assign       cmp['d 00075] = HamDist_x['d 00075] != HamDist_y ['d 00075];
assign       cmp['d 00076] = HamDist_x['d 00076] != HamDist_y ['d 00076];
assign       cmp['d 00077] = HamDist_x['d 00077] != HamDist_y ['d 00077];
assign       cmp['d 00078] = HamDist_x['d 00078] != HamDist_y ['d 00078];
assign       cmp['d 00079] = HamDist_x['d 00079] != HamDist_y ['d 00079];
assign       cmp['d 00080] = HamDist_x['d 00080] != HamDist_y ['d 00080];
assign       cmp['d 00081] = HamDist_x['d 00081] != HamDist_y ['d 00081];
assign       cmp['d 00082] = HamDist_x['d 00082] != HamDist_y ['d 00082];
assign       cmp['d 00083] = HamDist_x['d 00083] != HamDist_y ['d 00083];
assign       cmp['d 00084] = HamDist_x['d 00084] != HamDist_y ['d 00084];
assign       cmp['d 00085] = HamDist_x['d 00085] != HamDist_y ['d 00085];
assign       cmp['d 00086] = HamDist_x['d 00086] != HamDist_y ['d 00086];
assign       cmp['d 00087] = HamDist_x['d 00087] != HamDist_y ['d 00087];
assign       cmp['d 00088] = HamDist_x['d 00088] != HamDist_y ['d 00088];
assign       cmp['d 00089] = HamDist_x['d 00089] != HamDist_y ['d 00089];
assign       cmp['d 00090] = HamDist_x['d 00090] != HamDist_y ['d 00090];
assign       cmp['d 00091] = HamDist_x['d 00091] != HamDist_y ['d 00091];
assign       cmp['d 00092] = HamDist_x['d 00092] != HamDist_y ['d 00092];
assign       cmp['d 00093] = HamDist_x['d 00093] != HamDist_y ['d 00093];
assign       cmp['d 00094] = HamDist_x['d 00094] != HamDist_y ['d 00094];
assign       cmp['d 00095] = HamDist_x['d 00095] != HamDist_y ['d 00095];
assign       cmp['d 00096] = HamDist_x['d 00096] != HamDist_y ['d 00096];
assign       cmp['d 00097] = HamDist_x['d 00097] != HamDist_y ['d 00097];
assign       cmp['d 00098] = HamDist_x['d 00098] != HamDist_y ['d 00098];
assign       cmp['d 00099] = HamDist_x['d 00099] != HamDist_y ['d 00099];
assign       cmp['d 00100] = HamDist_x['d 00100] != HamDist_y ['d 00100];
assign       cmp['d 00101] = HamDist_x['d 00101] != HamDist_y ['d 00101];
assign       cmp['d 00102] = HamDist_x['d 00102] != HamDist_y ['d 00102];
assign       cmp['d 00103] = HamDist_x['d 00103] != HamDist_y ['d 00103];
assign       cmp['d 00104] = HamDist_x['d 00104] != HamDist_y ['d 00104];
assign       cmp['d 00105] = HamDist_x['d 00105] != HamDist_y ['d 00105];
assign       cmp['d 00106] = HamDist_x['d 00106] != HamDist_y ['d 00106];
assign       cmp['d 00107] = HamDist_x['d 00107] != HamDist_y ['d 00107];
assign       cmp['d 00108] = HamDist_x['d 00108] != HamDist_y ['d 00108];
assign       cmp['d 00109] = HamDist_x['d 00109] != HamDist_y ['d 00109];
assign       cmp['d 00110] = HamDist_x['d 00110] != HamDist_y ['d 00110];
assign       cmp['d 00111] = HamDist_x['d 00111] != HamDist_y ['d 00111];
assign       cmp['d 00112] = HamDist_x['d 00112] != HamDist_y ['d 00112];
assign       cmp['d 00113] = HamDist_x['d 00113] != HamDist_y ['d 00113];
assign       cmp['d 00114] = HamDist_x['d 00114] != HamDist_y ['d 00114];
assign       cmp['d 00115] = HamDist_x['d 00115] != HamDist_y ['d 00115];
assign       cmp['d 00116] = HamDist_x['d 00116] != HamDist_y ['d 00116];
assign       cmp['d 00117] = HamDist_x['d 00117] != HamDist_y ['d 00117];
assign       cmp['d 00118] = HamDist_x['d 00118] != HamDist_y ['d 00118];
assign       cmp['d 00119] = HamDist_x['d 00119] != HamDist_y ['d 00119];
assign       cmp['d 00120] = HamDist_x['d 00120] != HamDist_y ['d 00120];
assign       cmp['d 00121] = HamDist_x['d 00121] != HamDist_y ['d 00121];
assign       cmp['d 00122] = HamDist_x['d 00122] != HamDist_y ['d 00122];
assign       cmp['d 00123] = HamDist_x['d 00123] != HamDist_y ['d 00123];
assign       cmp['d 00124] = HamDist_x['d 00124] != HamDist_y ['d 00124];
assign       cmp['d 00125] = HamDist_x['d 00125] != HamDist_y ['d 00125];
assign       cmp['d 00126] = HamDist_x['d 00126] != HamDist_y ['d 00126];
assign       cmp['d 00127] = HamDist_x['d 00127] != HamDist_y ['d 00127];
assign       cmp['d 00128] = HamDist_x['d 00128] != HamDist_y ['d 00128];
assign       cmp['d 00129] = HamDist_x['d 00129] != HamDist_y ['d 00129];
assign       cmp['d 00130] = HamDist_x['d 00130] != HamDist_y ['d 00130];
assign       cmp['d 00131] = HamDist_x['d 00131] != HamDist_y ['d 00131];
assign       cmp['d 00132] = HamDist_x['d 00132] != HamDist_y ['d 00132];
assign       cmp['d 00133] = HamDist_x['d 00133] != HamDist_y ['d 00133];
assign       cmp['d 00134] = HamDist_x['d 00134] != HamDist_y ['d 00134];
assign       cmp['d 00135] = HamDist_x['d 00135] != HamDist_y ['d 00135];
assign       cmp['d 00136] = HamDist_x['d 00136] != HamDist_y ['d 00136];
assign       cmp['d 00137] = HamDist_x['d 00137] != HamDist_y ['d 00137];
assign       cmp['d 00138] = HamDist_x['d 00138] != HamDist_y ['d 00138];
assign       cmp['d 00139] = HamDist_x['d 00139] != HamDist_y ['d 00139];
assign       cmp['d 00140] = HamDist_x['d 00140] != HamDist_y ['d 00140];
assign       cmp['d 00141] = HamDist_x['d 00141] != HamDist_y ['d 00141];
assign       cmp['d 00142] = HamDist_x['d 00142] != HamDist_y ['d 00142];
assign       cmp['d 00143] = HamDist_x['d 00143] != HamDist_y ['d 00143];
assign       cmp['d 00144] = HamDist_x['d 00144] != HamDist_y ['d 00144];
assign       cmp['d 00145] = HamDist_x['d 00145] != HamDist_y ['d 00145];
assign       cmp['d 00146] = HamDist_x['d 00146] != HamDist_y ['d 00146];
assign       cmp['d 00147] = HamDist_x['d 00147] != HamDist_y ['d 00147];
assign       cmp['d 00148] = HamDist_x['d 00148] != HamDist_y ['d 00148];
assign       cmp['d 00149] = HamDist_x['d 00149] != HamDist_y ['d 00149];
assign       cmp['d 00150] = HamDist_x['d 00150] != HamDist_y ['d 00150];
assign       cmp['d 00151] = HamDist_x['d 00151] != HamDist_y ['d 00151];
assign       cmp['d 00152] = HamDist_x['d 00152] != HamDist_y ['d 00152];
assign       cmp['d 00153] = HamDist_x['d 00153] != HamDist_y ['d 00153];
assign       cmp['d 00154] = HamDist_x['d 00154] != HamDist_y ['d 00154];
assign       cmp['d 00155] = HamDist_x['d 00155] != HamDist_y ['d 00155];
assign       cmp['d 00156] = HamDist_x['d 00156] != HamDist_y ['d 00156];
assign       cmp['d 00157] = HamDist_x['d 00157] != HamDist_y ['d 00157];
assign       cmp['d 00158] = HamDist_x['d 00158] != HamDist_y ['d 00158];
assign       cmp['d 00159] = HamDist_x['d 00159] != HamDist_y ['d 00159];
assign       cmp['d 00160] = HamDist_x['d 00160] != HamDist_y ['d 00160];
assign       cmp['d 00161] = HamDist_x['d 00161] != HamDist_y ['d 00161];
assign       cmp['d 00162] = HamDist_x['d 00162] != HamDist_y ['d 00162];
assign       cmp['d 00163] = HamDist_x['d 00163] != HamDist_y ['d 00163];
assign       cmp['d 00164] = HamDist_x['d 00164] != HamDist_y ['d 00164];
assign       cmp['d 00165] = HamDist_x['d 00165] != HamDist_y ['d 00165];
assign       cmp['d 00166] = HamDist_x['d 00166] != HamDist_y ['d 00166];
assign       cmp['d 00167] = HamDist_x['d 00167] != HamDist_y ['d 00167];


wire [3-1:0] sum_mm_168_00000_00000;
            assign sum_mm_168_00000_00000 =
                                                     cmp[0] +
                                                     cmp[1] +
                                                     cmp[2] +
                                                     cmp[3] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00001_00000;
            assign sum_mm_168_00001_00000 =
                                                     cmp[4] +
                                                     cmp[5] +
                                                     cmp[6] +
                                                     cmp[7] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00002_00000;
            assign sum_mm_168_00002_00000 =
                                                     cmp[8] +
                                                     cmp[9] +
                                                     cmp[10] +
                                                     cmp[11] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00003_00000;
            assign sum_mm_168_00003_00000 =
                                                     cmp[12] +
                                                     cmp[13] +
                                                     cmp[14] +
                                                     cmp[15] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00004_00000;
            assign sum_mm_168_00004_00000 =
                                                     cmp[16] +
                                                     cmp[17] +
                                                     cmp[18] +
                                                     cmp[19] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00005_00000;
            assign sum_mm_168_00005_00000 =
                                                     cmp[20] +
                                                     cmp[21] +
                                                     cmp[22] +
                                                     cmp[23] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00006_00000;
            assign sum_mm_168_00006_00000 =
                                                     cmp[24] +
                                                     cmp[25] +
                                                     cmp[26] +
                                                     cmp[27] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00007_00000;
            assign sum_mm_168_00007_00000 =
                                                     cmp[28] +
                                                     cmp[29] +
                                                     cmp[30] +
                                                     cmp[31] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00008_00000;
            assign sum_mm_168_00008_00000 =
                                                     cmp[32] +
                                                     cmp[33] +
                                                     cmp[34] +
                                                     cmp[35] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00009_00000;
            assign sum_mm_168_00009_00000 =
                                                     cmp[36] +
                                                     cmp[37] +
                                                     cmp[38] +
                                                     cmp[39] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00010_00000;
            assign sum_mm_168_00010_00000 =
                                                     cmp[40] +
                                                     cmp[41] +
                                                     cmp[42] +
                                                     cmp[43] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00011_00000;
            assign sum_mm_168_00011_00000 =
                                                     cmp[44] +
                                                     cmp[45] +
                                                     cmp[46] +
                                                     cmp[47] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00012_00000;
            assign sum_mm_168_00012_00000 =
                                                     cmp[48] +
                                                     cmp[49] +
                                                     cmp[50] +
                                                     cmp[51] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00013_00000;
            assign sum_mm_168_00013_00000 =
                                                     cmp[52] +
                                                     cmp[53] +
                                                     cmp[54] +
                                                     cmp[55] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00014_00000;
            assign sum_mm_168_00014_00000 =
                                                     cmp[56] +
                                                     cmp[57] +
                                                     cmp[58] +
                                                     cmp[59] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00015_00000;
            assign sum_mm_168_00015_00000 =
                                                     cmp[60] +
                                                     cmp[61] +
                                                     cmp[62] +
                                                     cmp[63] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00016_00000;
            assign sum_mm_168_00016_00000 =
                                                     cmp[64] +
                                                     cmp[65] +
                                                     cmp[66] +
                                                     cmp[67] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00017_00000;
            assign sum_mm_168_00017_00000 =
                                                     cmp[68] +
                                                     cmp[69] +
                                                     cmp[70] +
                                                     cmp[71] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00018_00000;
            assign sum_mm_168_00018_00000 =
                                                     cmp[72] +
                                                     cmp[73] +
                                                     cmp[74] +
                                                     cmp[75] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00019_00000;
            assign sum_mm_168_00019_00000 =
                                                     cmp[76] +
                                                     cmp[77] +
                                                     cmp[78] +
                                                     cmp[79] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00020_00000;
            assign sum_mm_168_00020_00000 =
                                                     cmp[80] +
                                                     cmp[81] +
                                                     cmp[82] +
                                                     cmp[83] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00021_00000;
            assign sum_mm_168_00021_00000 =
                                                     cmp[84] +
                                                     cmp[85] +
                                                     cmp[86] +
                                                     cmp[87] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00022_00000;
            assign sum_mm_168_00022_00000 =
                                                     cmp[88] +
                                                     cmp[89] +
                                                     cmp[90] +
                                                     cmp[91] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00023_00000;
            assign sum_mm_168_00023_00000 =
                                                     cmp[92] +
                                                     cmp[93] +
                                                     cmp[94] +
                                                     cmp[95] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00024_00000;
            assign sum_mm_168_00024_00000 =
                                                     cmp[96] +
                                                     cmp[97] +
                                                     cmp[98] +
                                                     cmp[99] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00025_00000;
            assign sum_mm_168_00025_00000 =
                                                     cmp[100] +
                                                     cmp[101] +
                                                     cmp[102] +
                                                     cmp[103] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00026_00000;
            assign sum_mm_168_00026_00000 =
                                                     cmp[104] +
                                                     cmp[105] +
                                                     cmp[106] +
                                                     cmp[107] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00027_00000;
            assign sum_mm_168_00027_00000 =
                                                     cmp[108] +
                                                     cmp[109] +
                                                     cmp[110] +
                                                     cmp[111] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00028_00000;
            assign sum_mm_168_00028_00000 =
                                                     cmp[112] +
                                                     cmp[113] +
                                                     cmp[114] +
                                                     cmp[115] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00029_00000;
            assign sum_mm_168_00029_00000 =
                                                     cmp[116] +
                                                     cmp[117] +
                                                     cmp[118] +
                                                     cmp[119] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00030_00000;
            assign sum_mm_168_00030_00000 =
                                                     cmp[120] +
                                                     cmp[121] +
                                                     cmp[122] +
                                                     cmp[123] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00031_00000;
            assign sum_mm_168_00031_00000 =
                                                     cmp[124] +
                                                     cmp[125] +
                                                     cmp[126] +
                                                     cmp[127] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00032_00000;
            assign sum_mm_168_00032_00000 =
                                                     cmp[128] +
                                                     cmp[129] +
                                                     cmp[130] +
                                                     cmp[131] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00033_00000;
            assign sum_mm_168_00033_00000 =
                                                     cmp[132] +
                                                     cmp[133] +
                                                     cmp[134] +
                                                     cmp[135] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00034_00000;
            assign sum_mm_168_00034_00000 =
                                                     cmp[136] +
                                                     cmp[137] +
                                                     cmp[138] +
                                                     cmp[139] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00035_00000;
            assign sum_mm_168_00035_00000 =
                                                     cmp[140] +
                                                     cmp[141] +
                                                     cmp[142] +
                                                     cmp[143] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00036_00000;
            assign sum_mm_168_00036_00000 =
                                                     cmp[144] +
                                                     cmp[145] +
                                                     cmp[146] +
                                                     cmp[147] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00037_00000;
            assign sum_mm_168_00037_00000 =
                                                     cmp[148] +
                                                     cmp[149] +
                                                     cmp[150] +
                                                     cmp[151] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00038_00000;
            assign sum_mm_168_00038_00000 =
                                                     cmp[152] +
                                                     cmp[153] +
                                                     cmp[154] +
                                                     cmp[155] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00039_00000;
            assign sum_mm_168_00039_00000 =
                                                     cmp[156] +
                                                     cmp[157] +
                                                     cmp[158] +
                                                     cmp[159] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00040_00000;
            assign sum_mm_168_00040_00000 =
                                                     cmp[160] +
                                                     cmp[161] +
                                                     cmp[162] +
                                                     cmp[163] +
                                                1'b0;
wire [3-1:0] sum_mm_168_00041_00000;
            assign sum_mm_168_00041_00000 =
                                                     cmp[164] +
                                                     cmp[165] +
                                                     cmp[166] +
                                                     cmp[167] +
                                                1'b0;

// 42 : LEN
wire [5-1:0] sum_mm_42_00000_00001;
                              assign sum_mm_42_00000_00001 =
                                                     sum_mm_168_00000_00000 +
                                                     sum_mm_168_00001_00000 +
                                                     sum_mm_168_00002_00000 +
                                                     sum_mm_168_00003_00000 ;
wire [5-1:0] sum_mm_42_00001_00001;
                              assign sum_mm_42_00001_00001 =
                                                     sum_mm_168_00004_00000 +
                                                     sum_mm_168_00005_00000 +
                                                     sum_mm_168_00006_00000 +
                                                     sum_mm_168_00007_00000 ;
wire [5-1:0] sum_mm_42_00002_00001;
                              assign sum_mm_42_00002_00001 =
                                                     sum_mm_168_00008_00000 +
                                                     sum_mm_168_00009_00000 +
                                                     sum_mm_168_00010_00000 +
                                                     sum_mm_168_00011_00000 ;
wire [5-1:0] sum_mm_42_00003_00001;
                              assign sum_mm_42_00003_00001 =
                                                     sum_mm_168_00012_00000 +
                                                     sum_mm_168_00013_00000 +
                                                     sum_mm_168_00014_00000 +
                                                     sum_mm_168_00015_00000 ;
wire [5-1:0] sum_mm_42_00004_00001;
                              assign sum_mm_42_00004_00001 =
                                                     sum_mm_168_00016_00000 +
                                                     sum_mm_168_00017_00000 +
                                                     sum_mm_168_00018_00000 +
                                                     sum_mm_168_00019_00000 ;
wire [5-1:0] sum_mm_42_00005_00001;
                              assign sum_mm_42_00005_00001 =
                                                     sum_mm_168_00020_00000 +
                                                     sum_mm_168_00021_00000 +
                                                     sum_mm_168_00022_00000 +
                                                     sum_mm_168_00023_00000 ;
wire [5-1:0] sum_mm_42_00006_00001;
                              assign sum_mm_42_00006_00001 =
                                                     sum_mm_168_00024_00000 +
                                                     sum_mm_168_00025_00000 +
                                                     sum_mm_168_00026_00000 +
                                                     sum_mm_168_00027_00000 ;
wire [5-1:0] sum_mm_42_00007_00001;
                              assign sum_mm_42_00007_00001 =
                                                     sum_mm_168_00028_00000 +
                                                     sum_mm_168_00029_00000 +
                                                     sum_mm_168_00030_00000 +
                                                     sum_mm_168_00031_00000 ;
wire [5-1:0] sum_mm_42_00008_00001;
                              assign sum_mm_42_00008_00001 =
                                                     sum_mm_168_00032_00000 +
                                                     sum_mm_168_00033_00000 +
                                                     sum_mm_168_00034_00000 +
                                                     sum_mm_168_00035_00000 ;
wire [5-1:0] sum_mm_42_00009_00001;
                              assign sum_mm_42_00009_00001 =
                                                     sum_mm_168_00036_00000 +
                                                     sum_mm_168_00037_00000 +
                                                     sum_mm_168_00038_00000 +
                                                     sum_mm_168_00039_00000 ;
wire [5-1:0] sum_mm_42_00010_00001;
                              assign sum_mm_42_00010_00001 =
                                                     sum_mm_168_00040_00000 +
                                                     sum_mm_168_00041_00000 ;
// 11 : LEN
wire [7-1:0] sum_mm_11_00000_00002;
                              assign sum_mm_11_00000_00002 =
                                                     sum_mm_42_00000_00001 +
                                                     sum_mm_42_00001_00001 +
                                                     sum_mm_42_00002_00001 +
                                                     sum_mm_42_00003_00001 ;
wire [7-1:0] sum_mm_11_00001_00002;
                              assign sum_mm_11_00001_00002 =
                                                     sum_mm_42_00004_00001 +
                                                     sum_mm_42_00005_00001 +
                                                     sum_mm_42_00006_00001 +
                                                     sum_mm_42_00007_00001 ;
wire [7-1:0] sum_mm_11_00002_00002;
                              assign sum_mm_11_00002_00002 =
                                                     sum_mm_42_00008_00001 +
                                                     sum_mm_42_00009_00001 +
                                                     sum_mm_42_00010_00001 ;
// 3 : LEN
wire [9-1:0] sum_mm_3_00000_00003;
                              assign sum_mm_3_00000_00003 =
                                                     sum_mm_11_00000_00002 +
                                                     sum_mm_11_00001_00002 +
                                                     sum_mm_11_00002_00002 ;
assign sum_mm = sum_mm_3_00000_00003;


`ifdef ENCRYPT
`endif

endmodule

