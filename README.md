This is a LDPC Project for 5g lower matrix
# LDPC_Project

LDPC Project is a sample smaller version of the design that is optimized using a SRAM to have low area. This increases the simulation time, as every iteration takes more number of clocks to do one step at a time, but it is still fast enough to correct errors.
It takes 5,515,887,500ps 5ms to complete the task of correcting errors for a LDPC(208,168,40) codeblock at clock frequency of 40MHz.

The design for 5 clocks per iteration, with upto maximum required loops of 12 the number of clocks required are 60 clocks, at a clock which can be as fast as 1.2 GHz or more.

The slower design is for proof of concept, though can be used for 5G. For 6G the same matrices can be used with the faster design to get high throughput.

The matrices for 5G,6G are...

  |           |                       |           |                  |       
  | sr. No.   | alist filename        | n         |       k          |       
  |-----------|-----------------------|-----------|------------------|
  | NR.1 .    | NewRadio_1_0_128.alist|8704       |      5888        |
  | NR.2  .   | NewRadio_1_0_16.alist |1088       |      736         |
  | NR.3  .   | NewRadio_1_0_2.alist  |136        |      92          |
  | NR.4  .   | NewRadio_1_0_256.alist|17408      |      11776       |
  | NR.5  .   | NewRadio_1_0_32.alist |2176       |      1472        |
  | NR.6  .   | NewRadio_1_0_4.alist  |272        |      184         |
  | NR.7  .   | NewRadio_1_0_64.alist |4352       |      2944        |
  | NR.8  .   | NewRadio_1_0_8.alist  |544        |      368         |
  | NR.9  .   | NewRadio_1_1_12.alist |816        |      552         |
  | NR.10  .  | NewRadio_1_1_192.alist|13056      |      8832        |
  | NR.11  .  | NewRadio_1_1_24.alist |1632       |      1104        |
  | NR.12  .  | NewRadio_1_1_3.alist  |204        |      138         |
  | NR.13  .  | NewRadio_1_1_384.alist|26112      |      17664       |
  | NR.14  .  | NewRadio_1_1_48.alist |3264       |      2208        |
  | NR.15  .  | NewRadio_1_1_6.alist  |408        |      276         |
  | NR.16  .  | NewRadio_1_1_96.alist |6528       |      4416        |
  | NR.17  .  | NewRadio_1_2_10.alist |680        |      460         |
  | NR.18  .  | NewRadio_1_2_160.alist|10880      |      7360        |
  | NR.19  .  | NewRadio_1_2_20.alist |1360       |      920         |
  | NR.20  .  | NewRadio_1_2_320.alist|21760      |      14720       |
  | NR.21  .  | NewRadio_1_2_40.alist |2720       |      1840        |
  | NR.22  .  | NewRadio_1_2_5.alist  |340        |      230         |
  | NR.23  .  | NewRadio_1_2_80.alist |5440       |      3680        |
  | NR.24  .  | NewRadio_1_3_112.alist|7616       |      5152        |
  | NR.25  .  | NewRadio_1_3_14.alist |952        |      644         |
  | NR.26  .  | NewRadio_1_3_224.alist|15232      |      10304       |
  | NR.27  .  | NewRadio_1_3_28.alist |1904       |      1288        |
  | NR.28  .  | NewRadio_1_3_56.alist |3808       |      2576        |
  | NR.29  .  | NewRadio_1_3_7.alist  |476        |      322         |
  | NR.30  .  | NewRadio_1_4_144.alist|9792       |      6624        |
  | NR.31  .  | NewRadio_1_4_18.alist |1224       |      828         |
  | NR.32  .  | NewRadio_1_4_288.alist|19584      |      13248       |
  | NR.33  .  | NewRadio_1_4_36.alist |2448       |      1656        |
  | NR.34  .  | NewRadio_1_4_72.alist |4896       |      3312        |
  | NR.35  .  | NewRadio_1_4_9.alist  |612        |      414         |
  | NR.36  .  | NewRadio_1_5_11.alist |748        |      506         |
  | NR.37  .  | NewRadio_1_5_176.alist|11968      |      8096        |
  | NR.38  .  | NewRadio_1_5_22.alist |1496       |      1012        |
  | NR.39  .  | NewRadio_1_5_352.alist|23936      |      16192       |
  | NR.40  .  | NewRadio_1_5_44.alist |2992       |      2024        |
  | NR.41  .  | NewRadio_1_5_88.alist |5984       |      4048        |
  | NR.42  .  | NewRadio_1_6_104.alist|7072       |      4784        |
  | NR.43  .  | NewRadio_1_6_13.alist |884        |      598         |
  | NR.44  .  | NewRadio_1_6_208.alist|14144      |      9568        |
  | NR.45  .  | NewRadio_1_6_26.alist |1768       |      1196        |
  | NR.46  .  | NewRadio_1_6_52.alist |3536       |      2392        |
  | NR.47  .  | NewRadio_1_7_120.alist|8160       |      5520        |
  | NR.48  .  | NewRadio_1_7_15.alist |1020       |      690         |
  | NR.49  .  | NewRadio_1_7_240.alist|16320      |      11040       |
  | NR.50  .  | NewRadio_1_7_30.alist |2040       |      1380        |
  | NR.51  .  | NewRadio_1_7_60.alist |4080       |      2760        |
  |-----------|-----------------------|-----------|------------------|
  | NR.52  .  | NewRadio_2_0_128.alist|6656       |      5376        |
  | NR.53  .  | NewRadio_2_0_16.alist |832        |      672         |
  | NR.54  .  | NewRadio_2_0_2.alist  |104        |      84          |
  | NR.55  .  | NewRadio_2_0_256.alist|13312      |      10752       |
  | NR.56  .  | NewRadio_2_0_32.alist |1664       |      1344        |
  |           | +----- used in this   |           |                  |
  |           | v----- design...      |           |                  |
  | NR.57  .  | NewRadio_2_0_4.alist  |208        |      168         |
  | NR.58  .  | NewRadio_2_0_64.alist |3328       |      2688        |
  | NR.59  .  | NewRadio_2_0_8.alist  |416        |      336         |
  | NR.60  .  | NewRadio_2_1_12.alist |624        |      504         |
  | NR.61  .  | NewRadio_2_1_192.alist|9984       |      8064        |
  | NR.62  .  | NewRadio_2_1_24.alist |1248       |      1008        |
  | NR.63  .  | NewRadio_2_1_3.alist  |156        |      126         |
  | NR.64  .  | NewRadio_2_1_384.alist|19968      |      16128       |
  | NR.65  .  | NewRadio_2_1_48.alist |2496       |      2016        |
  | NR.66  .  | NewRadio_2_1_6.alist  |312        |      252         |
  | NR.67  .  | NewRadio_2_1_96.alist |4992       |      4032        |
  | NR.68  .  | NewRadio_2_2_10.alist |520        |      420         |
  | NR.69  .  | NewRadio_2_2_160.alist|8320       |      6720        |
  | NR.70  .  | NewRadio_2_2_20.alist |1040       |      840         |
  | NR.71  .  | NewRadio_2_2_320.alist|16640      |      13440       |
  | NR.72  .  | NewRadio_2_2_40.alist |2080       |      1680        |
  | NR.73  .  | NewRadio_2_2_5.alist  |260        |      210         |
  | NR.74  .  | NewRadio_2_2_80.alist |4160       |      3360        |
  | NR.75  .  | NewRadio_2_3_112.alist|5824       |      4704        |
  | NR.76  .  | NewRadio_2_3_14.alist |728        |      588         |
  | NR.77  .  | NewRadio_2_3_224.alist|11648      |      9408        |
  | NR.78  .  | NewRadio_2_3_28.alist |1456       |      1176        |
  | NR.79  .  | NewRadio_2_3_56.alist |2912       |      2352        |
  | NR.80  .  | NewRadio_2_3_7.alist  |364        |      294         |
  | NR.81  .  | NewRadio_2_4_144.alist|7488       |      6048        |
  | NR.82  .  | NewRadio_2_4_18.alist |936        |      756         |
  | NR.83  .  | NewRadio_2_4_288.alist|14976      |      12096       |
  | NR.84  .  | NewRadio_2_4_36.alist |1872       |      1512        |
  | NR.85  .  | NewRadio_2_4_72.alist |3744       |      3024        |
  | NR.86  .  | NewRadio_2_4_9.alist  |468        |      378         |
  | NR.87  .  | NewRadio_2_5_11.alist |572        |      462         |
  | NR.88  .  | NewRadio_2_5_176.alist|9152       |      7392        |
  | NR.89  .  | NewRadio_2_5_22.alist |1144       |      924         |
  | NR.90  .  | NewRadio_2_5_352.alist|18304      |      14784       |
  | NR.91  .  | NewRadio_2_5_44.alist |2288       |      1848        |
  | NR.92  .  | NewRadio_2_5_88.alist |4576       |      3696        |
  | NR.93  .  | NewRadio_2_6_104.alist|5408       |      4368        |
  | NR.94  .  | NewRadio_2_6_13.alist |676        |      546         |
  | NR.95  .  | NewRadio_2_6_208.alist|10816      |      8736        |
  | NR.96  .  | NewRadio_2_6_26.alist |1352       |      1092        |
  | NR.97  .  | NewRadio_2_6_52.alist |2704       |      2184        |
  | NR.98  .  | NewRadio_2_7_120.alist|6240       |      5040        |
  | NR.99  .  | NewRadio_2_7_15.alist |780        |      630         |
  | NR.100  . | NewRadio_2_7_240.alist|12480      |      10080       |
  | NR.101  . | NewRadio_2_7_30.alist |1560       |      1260        |
  | NR.102  . | NewRadio_2_7_60.alist |3120       |      2520        |


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










