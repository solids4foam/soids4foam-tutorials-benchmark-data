#! /bin/bash

startTime="10"
endTime="20"

for log in log.solids4Foam-nu*; do 

    # Get the nu value (suffix of file name)
    nu=${log##*-}

    cat "$log" | \
        sed -n "/^Time = ${startTime}$/,/^Time = ${endTime}$/p" | \
        grep "^ \{4\}[0-9]\{1,3\}," | \
        cut -d " " -f6 | \
        tr  -d "," > "residuals-${nu}.dat"

done

# Plot residuals
gnuplot residuals.gnuplot

if [ "$?" == 0 ]; then
    # If last command was fine, clean up directory
    rm residuals*.dat
fi
