make clean
ps -ef | grep iverilog | awk '{print $2}' | xargs -I str -t kill -9 str
make clean
make verify-wb_port-rtl
