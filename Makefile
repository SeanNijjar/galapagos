BOARD = adm-8k5
DCP = static_routed_v2.dcp
LOGICALFILE=hwMiddleware/packetSwitch/input/kmeans90/mpiLogical.xml
MACFILE=hwMiddleware/packetSwitch/input/kmeans90/mpiMacAddresses
MAPFILE=hwMiddleware/packetSwitch/input/kmeans90/mpiMap.xml
PROJECTNAME=kmeans90
USERIP_DIR=HMPI
USERIPTCL=${USERIP_DIR}/generate_hls_ip.tcl


all: userIP createCluster pr  


createCluster: tclScripts/createCluster.tcl


userIP: ${USERIP_DIR}/* ${USERIP_DIR}/generate_hls_ip.tcl
	mkdir -p userIP
	vivado_hls -f ${USERIPTCL}

#shell: hlsShell shells/projects/${BOARD}/${DCP}
shell: shells/projects/${BOARD}/${DCP}

hlsShell:
	mkdir -p hlsIP_${BOARD}
	vivado_hls tclScripts/generate_hls_ip.tcl

tclScripts/createCluster.tcl: ${LOGICALFILE} ${MACFILE} ${MAPFILE} 
	mkdir -p projects
	python hwMiddleware/packetSwitch/globalFPGAParser.py --logicalFile=${LOGICALFILE} --macFile=${MACFILE} --mapFile=${MAPFILE} --projectName=${PROJECTNAME}
#	touch projects/${PROJECTNAME}/cluster

clean:
	rm -rf projects/${PROJECTNAME} tclScripts/createCluster.tcl

clean_shell:
	rm -rf hlsIP_${BOARD}
	rm -rf shells/projects/${BOARD}

shells/projects/${BOARD}/${DCP}:
	mkdir -p shells
	mkdir -p shells/projects
	vivado -mode batch -source tclScripts/createShell_${BOARD}.tcl -tclargs ${DCP}
	mkdir -p shells/${BOARD}/dcps
	cp shells/projects/${BOARD}/${DCP} shells/${BOARD}/dcps

pr: createCluster 
	bash ./tclScripts/createCluster.sh
	touch projects/${PROJECTNAME}/cluster	

dcp:
	mkdir -p shells/${BOARD}/dcps
	ls shells/${BOARD}/dcps/static_routed.dcp 2> /dev/null &&  echo "File exists" || (wget http://www.eecg.toronto.edu/~tarafda1/hypervisors/${BOARD}/${DCP} && mv ${DCP} shells/${BOARD}/dcps/static_routed.dcp) 
       
clean_dcp:
	rm -rf shells/${BOARD}/dcps/static_routed.dcp
