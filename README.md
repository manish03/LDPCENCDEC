# LDPC_Project_template

LDPC Project is a sample smaller version of the design that is optimized using a SRAM to have low area. This increases the simulation time, as every iteration takes more number of clocks to do one step at a time, but it is still fast enough to correct errors.
It takes 5,515,887,500ps 5ms to complete the task of correcting errors for a LDPC(208,168,40) codeblock at clock frequency of 40MHz.

The design for 5 clocks per iteration, with upto maximum required loops of 12 the number of clocks required are 60 clocks, at a clock which can be as fast as 1.2 GHz or more.

The slower design is for proof of concept, though can be used for 5G. For 6G the same matrices can be used with the faster design to get high throughput.

The matrices for 5G,6G are...

--------------------------------------------------------
1 . ==> NR_1_0_128.alist <== 8704 5888
2  . ==> NR_1_0_16.alist <== 1088 736
3  . ==> NR_1_0_2.alist <== 136 92
4  . ==> NR_1_0_256.alist <== 17408 11776
5  . ==> NR_1_0_32.alist <== 2176 1472
6  . ==> NR_1_0_4.alist <== 272 184
7  . ==> NR_1_0_64.alist <== 4352 2944
8  . ==> NR_1_0_8.alist <== 544 368
9  . ==> NR_1_1_12.alist <== 816 552
10  . ==> NR_1_1_192.alist <== 13056 8832
11  . ==> NR_1_1_24.alist <== 1632 1104
12  . ==> NR_1_1_3.alist <== 204 138
13  . ==> NR_1_1_384.alist <== 26112 17664
14  . ==> NR_1_1_48.alist <== 3264 2208
15  . ==> NR_1_1_6.alist <== 408 276
16  . ==> NR_1_1_96.alist <== 6528 4416
17  . ==> NR_1_2_10.alist <== 680 460
18  . ==> NR_1_2_160.alist <== 10880 7360
19  . ==> NR_1_2_20.alist <== 1360 920
20  . ==> NR_1_2_320.alist <== 21760 14720
21  . ==> NR_1_2_40.alist <== 2720 1840
22  . ==> NR_1_2_5.alist <== 340 230
23  . ==> NR_1_2_80.alist <== 5440 3680
24  . ==> NR_1_3_112.alist <== 7616 5152
25  . ==> NR_1_3_14.alist <== 952 644
26  . ==> NR_1_3_224.alist <== 15232 10304
27  . ==> NR_1_3_28.alist <== 1904 1288
28  . ==> NR_1_3_56.alist <== 3808 2576
29  . ==> NR_1_3_7.alist <== 476 322
30  . ==> NR_1_4_144.alist <== 9792 6624
31  . ==> NR_1_4_18.alist <== 1224 828
32  . ==> NR_1_4_288.alist <== 19584 13248
33  . ==> NR_1_4_36.alist <== 2448 1656
34  . ==> NR_1_4_72.alist <== 4896 3312
35  . ==> NR_1_4_9.alist <== 612 414
36  . ==> NR_1_5_11.alist <== 748 506
37  . ==> NR_1_5_176.alist <== 11968 8096
38  . ==> NR_1_5_22.alist <== 1496 1012
39  . ==> NR_1_5_352.alist <== 23936 16192
40  . ==> NR_1_5_44.alist <== 2992 2024
41  . ==> NR_1_5_88.alist <== 5984 4048
42  . ==> NR_1_6_104.alist <== 7072 4784
43  . ==> NR_1_6_13.alist <== 884 598
44  . ==> NR_1_6_208.alist <== 14144 9568
45  . ==> NR_1_6_26.alist <== 1768 1196
46  . ==> NR_1_6_52.alist <== 3536 2392
47  . ==> NR_1_7_120.alist <== 8160 5520
48  . ==> NR_1_7_15.alist <== 1020 690
49  . ==> NR_1_7_240.alist <== 16320 11040
50  . ==> NR_1_7_30.alist <== 2040 1380
51  . ==> NR_1_7_60.alist <== 4080 2760
--------------------------------------------------------
52  . ==> NR_2_0_128.alist <== 6656 5376
53  . ==> NR_2_0_16.alist <== 832 672
54  . ==> NR_2_0_2.alist <== 104 84
55  . ==> NR_2_0_256.alist <== 13312 10752
56  . ==> NR_2_0_32.alist <== 1664 1344
57  . ==> NR_2_0_4.alist <== 208 168                <----- used in this design...
58  . ==> NR_2_0_64.alist <== 3328 2688
59  . ==> NR_2_0_8.alist <== 416 336
60  . ==> NR_2_1_12.alist <== 624 504
61  . ==> NR_2_1_192.alist <== 9984 8064
62  . ==> NR_2_1_24.alist <== 1248 1008
63  . ==> NR_2_1_3.alist <== 156 126
64  . ==> NR_2_1_384.alist <== 19968 16128
65  . ==> NR_2_1_48.alist <== 2496 2016
66  . ==> NR_2_1_6.alist <== 312 252
67  . ==> NR_2_1_96.alist <== 4992 4032
68  . ==> NR_2_2_10.alist <== 520 420
69  . ==> NR_2_2_160.alist <== 8320 6720
70  . ==> NR_2_2_20.alist <== 1040 840
71  . ==> NR_2_2_320.alist <== 16640 13440
72  . ==> NR_2_2_40.alist <== 2080 1680
73  . ==> NR_2_2_5.alist <== 260 210
74  . ==> NR_2_2_80.alist <== 4160 3360
75  . ==> NR_2_3_112.alist <== 5824 4704
76  . ==> NR_2_3_14.alist <== 728 588
77  . ==> NR_2_3_224.alist <== 11648 9408
78  . ==> NR_2_3_28.alist <== 1456 1176
79  . ==> NR_2_3_56.alist <== 2912 2352
80  . ==> NR_2_3_7.alist <== 364 294
81  . ==> NR_2_4_144.alist <== 7488 6048
82  . ==> NR_2_4_18.alist <== 936 756
83  . ==> NR_2_4_288.alist <== 14976 12096
84  . ==> NR_2_4_36.alist <== 1872 1512
85  . ==> NR_2_4_72.alist <== 3744 3024
86  . ==> NR_2_4_9.alist <== 468 378
87  . ==> NR_2_5_11.alist <== 572 462
88  . ==> NR_2_5_176.alist <== 9152 7392
89  . ==> NR_2_5_22.alist <== 1144 924
90  . ==> NR_2_5_352.alist <== 18304 14784
91  . ==> NR_2_5_44.alist <== 2288 1848
92  . ==> NR_2_5_88.alist <== 4576 3696
93  . ==> NR_2_6_104.alist <== 5408 4368
94  . ==> NR_2_6_13.alist <== 676 546
95  . ==> NR_2_6_208.alist <== 10816 8736
96  . ==> NR_2_6_26.alist <== 1352 1092
97  . ==> NR_2_6_52.alist <== 2704 2184
98  . ==> NR_2_7_120.alist <== 6240 5040
99  . ==> NR_2_7_15.alist <== 780 630
100  . ==> NR_2_7_240.alist <== 12480 10080
101  . ==> NR_2_7_30.alist <== 1560 1260
102  . ==> NR_2_7_60.alist <== 3120 2520
--------------------------------------------------------


## ENV setup
env.bash
env.tcsh



## Project Structure
module
  git@github.com:manish03/LDPCENCDEC.git
sub modules:
  git@github.com:rggen/rggen-verilog-rtl.git
  git@github.com:mattvenn/openlane_summary.git
  git@repositories.efabless.com:manishmahajan/LDPC_ENC_DEC.git


## Simulation can be run using the script
LDPCENCDEC/run.sh

## For Synthesis use the script
Makefile
in LDPCENCDEC/openlane/


## ip_files
are present in the LDPCENCDEC/verilog/rtl directory.

## design files
are present in LDPCENCDEC/verilog/rtl/LDPC_ENC_DEC directory


NOTE:  Current design file examples are provided for initial reference.  These files are currently being updated and will be reposted once complete.
The simulations are working, gds has been created successfully.


## C Program sample
A C program with an example for stimulus which will be encoded, error insertion and decoding has been provided
at LDPCENCDEC/verilog/dv/wb_port/wb_port.c










