

## git clone git@github.com:manish03/LDPCENCDEC.git
## cd LDPCENCDEC
## git submodule init
## git submodule update --remote
## cd LDPCENCDEC/verilog/rtl/LDPC_ENC_DEC
## git checkout main
## git pull
## cd LDPCENCDEC/verilog/rtl/rggen-verilog-rtl
## git checkout main
## git pull
## 
## cd LDPCENCDEC
## mkdir ../asic
## #ENV VARIABLES
## #setenv OPENLANE_ROOT asic/openlane
## #setenv PDK_ROOT asic/pdk
## # needs docker and sudo apt-get install python3-venv
## /usr/bin/make setup
## source run.sh



#
#  source ~/.cshrc
#  source env.tcsh.new  # dont use env.tcsh.old
#  python3 ${PSR1}/../LDPCENCDEC/verilog/rtl/gen2.py
## make setup
#  make pdk
#

echo "do make setup first time"
make clean
echo "do make setup first time"
echo "do pushd verilog/rtl/ ; python3 gen2.py ; popd"
#sleep 15
echo "do make setup first time"
ps -ef | grep iverilog | awk '{print $2}' | xargs -I str -t kill -9 str
echo "do make setup first time"
#sleep 15
echo "make setup first time"
ls -ltr  /tmp | grep $USER | awk '{print $9}' | xargs -I str -t /bin/rm -rf /tmp/str
echo "do make setup first time"
#sleep 15
echo "do make setup first time"
make clean
echo "do make setup first time"
#sleep 15
echo "do make setup first time"
make verify-wb_port-rtl |& tee wb_port_ldpc.log 
echo "do make setup first time"
echo "add -g2012 to mgmt_core_wrapper/verilog/dv/make/sim.makefile"

################################################
#iverilog -Ttyp -DFUNCTIONAL -DSIM -DUSE_POWER_PINS -DUNIT_DELAY=#1 -g2012  -f${PSR1}/../LDPCENCDEC/mgmt_core_wrapper/verilog/includes/includes.rtl.caravel  -f${PSR1}/../LDPCENCDEC/verilog/includes/includes.rtl.caravel_user_project -o wb_port.vvp wb_port_tb.v
################################################


#setenv CARAVEL_ROOT ${PSR1}/../LDPCENCDEC/caravel
#setenv CARAVEL_PATH $CARAVEL_ROOT/../caravel/verilog
#setenv VERILOG_PATH $CARAVEL_ROOT/../mgmt_core_wrapper/verilog
#setenv USER_PROJECT_VERILOG $CARAVEL_ROOT/../verilog
#
#iverilog -Ttyp -DFUNCTIONAL -DSIM -DUSE_POWER_PINS -DUNIT_DELAY=#1 -g2012 -f$CARAVEL_ROOT/../mgmt_core_wrapper/verilog/includes/includes.rtl.caravel -f$CARAVEL_ROOT/../verilog/includes/includes.rtl.caravel_user_project -o wb_port.vvp wb_port_tb.v
#

## make setup
## cd openlane
## make user_proj_example
## make ldpcEncDec
## cd LDPCENCDEC/verilog/dv
## make
##
## make precheck
## make run-precheck

# cd LDPCENCDEC/openlane
# make ldpcEncDec
# cd ${PSR1}/../LDPCENCDEC/openlane/ldpcEncDec/runs/24_02_27_16_20
# ../../../../../LDPCENCDEC/LdpcEncDec/asic/openlane/flow.tcl  -from floorplan -design ldpcEncDec

# cd ${PSR1}/../LDPCENCDEC/openlane/ldpcEncDec
# ../../../LDPCENCDEC/LdpcEncDec/asic/openlane/flow.tcl  -from floorplan -design ldpcEncDec

#It has mapped 208 $_DFF_PN0_ cells to \sky130_fd_sc_hd__dfrtp_2 cells. 208 DFF
#and mapped 27801 $_DFF_PN0_ cells to \sky130_fd_sc_hd__dfrtp_2 cells 
#/// sta-blackbox


################################################
# Pre-Check
################################################
#export PDK_PATH=<Absolute path to the desired PDK 'variant specific'.>
#export INPUT_DIRECTORY=<Absolute path to the user project path>
#sh docker-mount.sh
################################################
#export PSR1=/media/psf/Home/Downloads/sljt1.comp.xfer/backupcvs/hcb1/hcb/LDPCENCDEC
#source /media/psf/Home/Downloads/sljt1.comp.xfer/backupcvs/hcb1/hcb/LDPCENCDEC/env.bash
#sh docker-mount.sh
#export PDK_PATH=${PSR1}/../asic/pdk/volare/sky130/versions/78b7bc32ddb4b6f14f76883c2e2dc5b5de9d1cbc/sky130A
#export INPUT_DIRECTORY=${PSR1}/../LDPCENCDEC
#cd ${PSR1}/../LDPCENCDEC/mpw_precheck
#usage: mpw_precheck.py [-h] --input_directory $INPUT_DIRECTORY --pdk_path $PDK_PATH [--output_directory OUTPUT_DIRECTORY] [--private] [check [check ...]]

################################################
#python3 mpw_precheck/mpw_precheck.py [-h] --input_directory $INPUT_DIRECTORY --pdk_path $PDK_PATH [--output_directory OUTPUT_DIRECTORY] [--private] [check [check ...]]
#setenv PDK_PATH ${PSR1}/../asic/pdk/volare/sky130/versions/78b7bc32ddb4b6f14f76883c2e2dc5b5de9d1cbc/sky130A
#setenv INPUT_DIRECTORY ${PSR1}/../LDPCENCDEC
# cd mpw_precheck
#
#python3 mpw_precheck.py --input_directory $INPUT_DIRECTORY --pdk_path $PDK_PATH --output_directory ${PSR1}/precheck_results
################################################
#
#Runs the precheck tool by calling the various checks in order.
#
#positional arguments:
#
#  check                 Checks to be ran by the precheck (default: None)
#
#optional arguments:
#
#  -h, --help               show this help message and exit
#
#  -i, --input_directory    $INPUT_DIRECTORY
#                           INPUT_DIRECTORY, absolute Path to the project. (default: None)
#
#  -p, --pdk_path           $PDK_PATH
#                           PDK_PATH, points to the installation path of the pdk 'variant specific' (default: None)
#
#  -o, --output_directory   OUTPUT_DIRECTORY
#                           OUTPUT_DIRECTORY, default=<input_directory>/precheck_results. (default:None)
#
#  --private                If provided, precheck skips [License, Defaults, Documentation]
#                           checks used to qualify the project to as an Open Source Project (default: False)
#
#
#
################################################
## Install
## % git clone https://github.com/The-OpenROAD-Project/OpenLane.git
## % sudo apt install ./openroad_2.0_amd64-ubuntu22.04-2024-08-22.deb
## % setenv DOCKER_DEFAULT_PLATFORM linux/arm64
## % :...hcb1/hcb/OpenLane% make
##################################

## % setenv DOCKER_DEFAULT_PLATFORM linux/arm64
## % \cp -rf runs hcb1/hcb/OpenLane/designs
## % :...hcb1/hcb/OpenLane% make mount
## OpenLane Container:/openlane% openroad
## > cd designs/runs/24_04_24_08_02
## > read_lef tmp/merged.nom.lef
## > read_def results/routing/ldpcEncDec.def
## > gui::show

## die area for user design:2564x2590


## hcb/LDPCENCDEC/openlane% \cp -rf ldpcEncDec/runs/24_08_27_00_18/ ../../OpenLane/designs/


