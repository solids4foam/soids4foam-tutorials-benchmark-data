# To generate the plot, use the following command:
# > gnuplot plot.gnuplot -p

set title "3dTube: Radial Displacement at Point A. Aitkens, Robin, pimpleFluid, Euler, foam-extend-4.1."
set xlabel "Time (in s)"
set ylabel "Radial Displacement (in mm)"
set grid
set key top right

plot \
    "pimpleFluid/robin/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w l t "deltaT=1x10^{-4}"
