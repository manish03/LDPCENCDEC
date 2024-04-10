
unsetenv PSR1 OPENLANE_ROOT PDK_ROOT PDK MCW_ROOT DOCKER_BUILDKIT COMPOSE_DOCKER_CLI_BUILD DOCKER_DEFAULT_PLATFORM CARAVEL_ROOT CARAVEL_PATH VERILOG_PATH USER_PROJECT_VERILOG 

setenv PSR1 $PWD/"LdpcEncDec"


setenv VERILOG_PATH verilog
setenv CARAVEL_PATH caravel
setenv OPENLANE_ROOT $PSR1/asic/openlane
setenv PDK_ROOT $PSR1/asic/pdk
setenv PDK sky130B
#setenv MCW_ROOT $PWD/mgmt_core_wrapper


setenv DOCKER_BUILDKIT 0
setenv COMPOSE_DOCKER_CLI_BUILD 0
setenv DOCKER_DEFAULT_PLATFORM linux/amd64

setenv NETGEN_COLUMNS 80



#setenv CARAVEL_ROOT $PWD/caravel
#setenv CARAVEL_PATH $CARAVEL_ROOT/../caravel/verilog
#setenv VERILOG_PATH $PWD/mgmt_core_wrapper/verilog
#setenv USER_PROJECT_VERILOG $CARAVEL_ROOT/../verilog

#echo $PSR1 $OPENLANE_ROOT $PDK_ROOT $PDK $MCW_ROOT $DOCKER_BUILDKIT $COMPOSE_DOCKER_CLI_BUILD $DOCKER_DEFAULT_PLATFORM $CARAVEL_ROOT $CARAVEL_PATH $VERILOG_PATH $USER_PROJECT_VERILOG 

