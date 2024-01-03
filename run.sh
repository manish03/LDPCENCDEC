make clean
sleep 15
ps -ef | grep iverilog | awk '{print $2}' | xargs -I str -t kill -9 str
sleep 15
make clean
sleep 15
make verify-wb_port-rtl
