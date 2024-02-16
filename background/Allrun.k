#!/bin/bash
cd "${0%/*}" || exit                                # Run from this directory
. ${WM_PROJECT_DIR:?}/bin/tools/RunFunctions        # Tutorial run functions
#------------------------------------------------------------------------------

# Make the angle file
declare -a freqs=(0.1 0.2 0.3 1)
for k in "${freqs[@]}"
do
    cd .. # overFoil2D
    python3 tools/getFrequency.py $k background/constant/plungingMotion
    cd background

    # Run the case
    ./Allrun

    # Copy the file
    cd .. # overFoil2D
    python3 tools/getDataPath.py coefficientPlunging $k
    cd background
done