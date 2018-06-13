set boardName [lindex $argv 0]
set partName [lindex $argv 1]

cd hlsIP_${boardName}


#creates special switch for ip packets
open_project ip_dest_filter 
set_top ip_dest_filter 
add_files ../hlsSources/srcs/ip_dest_filter.cpp
open_solution "solution1"
#set_part {xcku115-flva1517-2-e}
set_part ${partName}
create_clock -period 250MHz -name default
config_interface -expose_global
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -format ip_catalog
close_project

quit