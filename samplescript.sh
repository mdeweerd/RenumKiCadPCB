#!/bin/bash

# Sample script to run numbering non-interactively

# Set to the name of your '.pro' file, without '.pro'.
KICAD_PROJECT=PROJECTNAME
# 
RENUMTOOL="../RenumKiCadPCB/RenumKiCadPCB"

cat > RenumParameters.txt <<EOF
PCB file name=${KICAD_PROJECT}
Top Sort Direction=4
Bottom Sort Direction=5
Top Start Reference Designation=1
Bottom Start Reference Designation=101
Sort on Modules/Reference Designators=1
Sort Grid=1.000000
Log=0
EOF

"$RENUMTOOL" <<< "
R
"
