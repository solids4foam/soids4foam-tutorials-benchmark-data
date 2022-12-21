#! /bin/bash

startTime="30"
endTime=""

for log in solids4Foam-*-log; do 

    # Get the nu value (suffix of file name)
    form=$(echo $log | cut -d "-" -f2)

    cat "$log" | \
        sed -n "/^Time = ${startTime}$/,/^Time = ${endTime}$/p" | \
        grep "^ \{4\}[0-9]\{1,5\}," | \
        cut -d " " -f5,6 | \
        tr  -d "," > "residuals-${form}.dat"

done

# Plot residuals
gnuplot residuals.gnuplot

if [ "$?" == 0 ]; then
    # If last command was fine, clean up directory
    rm residuals*.dat
fi
