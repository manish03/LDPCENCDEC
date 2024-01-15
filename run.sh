echo "do make setup first time"
make clean
echo "do make setup first time"
echo "do pushd verilog/rtl/ ; python3 gen2.py ; popd"
sleep 15
echo "do make setup first time"
ps -ef | grep iverilog | awk '{print $2}' | xargs -I str -t kill -9 str
echo "do make setup first time"
sleep 15
echo "make setup first time"
ls -ltr  /tmp | grep $USER | awk '{print $9}' | xargs -I str -t /bin/rm -rf /tmp/str
echo "do make setup first time"
sleep 15
echo "do make setup first time"
make clean
echo "do make setup first time"
sleep 15
echo "do make setup first time"
make verify-wb_port-rtl |& tee wb_port_ldpc.log 
echo "do make setup first time"
echo "add -g2012 to mgmt_core_wrapper/verilog/dv/make/sim.makefile"
#verilog -Ttyp -DFUNCTIONAL -DSIM -DUSE_POWER_PINS -DUNIT_DELAY=#1 -g2012 \
#        -f/media/psf/1TBsljt1/sljt1/sljt1.comp.xfer/backupcvs/hcb1/hcb/LDPCENCDEC/mgmt_core_wrapper/verilog/includes/includes.rtl.caravel \
#        -f/media/psf/1TBsljt1/sljt1/sljt1.comp.xfer/backupcvs/hcb1/hcb/LDPCENCDEC/verilog/includes/includes.rtl.caravel_user_project -o wb_port.vvp wb_port_tb.v



#setenv CARAVEL_ROOT /media/psf/1TBsljt1/sljt1/sljt1.comp.xfer/backupcvs/hcb1/hcb/LDPCENCDEC/caravel
#setenv CARAVEL_PATH $CARAVEL_ROOT/../caravel/verilog
#setenv VERILOG_PATH $CARAVEL_ROOT/../mgmt_core_wrapper/verilog
#setenv USER_PROJECT_VERILOG $CARAVEL_ROOT/../verilog
#
#iverilog -Ttyp -DFUNCTIONAL -DSIM -DUSE_POWER_PINS -DUNIT_DELAY=#1 -g2012 -f$CARAVEL_ROOT/../mgmt_core_wrapper/verilog/includes/includes.rtl.caravel -f$CARAVEL_ROOT/../verilog/includes/includes.rtl.caravel_user_project -o wb_port.vvp wb_port_tb.v
#

