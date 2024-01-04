make clean
sleep 15
ps -ef | grep iverilog | awk '{print $2}' | xargs -I str -t kill -9 str
sleep 15
ls -ltr  /tmp | grep $USER | awk '{print $9}' | xargs -I str -t /bin/rm -rf /tmp/str
sleep 15
make clean
sleep 15
make verify-wb_port-rtl
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

