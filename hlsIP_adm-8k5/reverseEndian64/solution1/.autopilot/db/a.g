#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/workDir/galapagos/hlsIP_adm-8k5/reverseEndian64/solution1/.autopilot/db/a.g.bc ${1+"$@"}
