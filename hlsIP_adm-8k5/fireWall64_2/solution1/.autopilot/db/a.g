#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nfs/ug/thesis/thesis0/pc/Graham/galapagos_test/hlsIP_adm-8k5/fireWall64_2/solution1/.autopilot/db/a.g.bc ${1+"$@"}