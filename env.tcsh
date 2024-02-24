

setenv PSR1 $PWD/"LdpcEncDec"


setenv OPENLANE_ROOT $PSR1/asic/openlane
setenv PDK_ROOT $PSR1/asic/pdk
setenv PDK sky130B
setenv MCW_ROOT $PSR1/mgmt_core_wrapper


setenv DOCKER_BUILDKIT 0
setenv COMPOSE_DOCKER_CLI_BUILD 0
setenv DOCKER_DEFAULT_PLATFORM linux/amd64



setenv CARAVEL_ROOT $PWD/caravel
setenv CARAVEL_PATH $CARAVEL_ROOT/../caravel/verilog
setenv VERILOG_PATH $PSR1/mgmt_core_wrapper/verilog
setenv USER_PROJECT_VERILOG $CARAVEL_ROOT/../verilog


