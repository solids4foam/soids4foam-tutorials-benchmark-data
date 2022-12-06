#!/bin/bash

# Checked on macOS with GNU grep
find . -type f -name log.solids4Foam -execdir bash -c "cat {} | grep '^Time = .*' | grep -B1 'Time = [0-9]\.[0-9]*$' | grep 'Time = .*,.*' | cut -d' ' -f 3,5 | tr -d ',' > timeStepVsNumberOfIterations.txt" \;

# Checked with Ubuntu
#find . -type f -name log.solids4Foam -execdir bash -c "cat {} | grep '^Time = .*' | grep -B1 '^Time = [0-9]\.[0-9]*$' | grep '^Time = .*,.*' | cut -d' ' -f 3,5 | tr -d ',' > timeStepVsNumberOfIterations.txt" \;
