#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/luis/TEC/DEAN/Proyectos-DAN/Proyecto4/Counter/solution1/.autopilot/db/a.g.bc ${1+"$@"}
