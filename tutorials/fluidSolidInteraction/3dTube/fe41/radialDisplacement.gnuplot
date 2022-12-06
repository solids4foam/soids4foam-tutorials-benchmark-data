# To generate the plot, use the following command:
# > gnuplot plot.gnuplot -p

set title "3dTube: Radial Displacement at Point A. Aitkens, Robin, pimpleFluid, Euler, foam-extend-4.1."
set xlabel "Time (in s)"
set ylabel "Radial Displacement (in mm)"
set grid
set key top right

set yrange [-0.1:0.15]

plot \
    "pimpleFluid/robin/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.25 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=1x10^{-4}", \
    "pimpleFluid/robin/Euler/deltaT5e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.125 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=5x10^{-5}", \
    "pimpleFluid/robin/Euler/deltaT2.5e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.0625 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=2.5x10^{-5}", \
    "pimpleFluid/robin/Euler/deltaT1.25e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.03125 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=1.25x10^{-5}", \
    "pimpleFluid/robin/Euler/deltaT6.25e-6/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.015625 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=6.25x10^{-6}"

#\
#    "pimpleFluid/robin/backward/deltaT8e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 1 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=8x10^{-4}", \
#    "pimpleFluid/robin/backward/deltaT4e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.5 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=4x10^{-4}", \
#    "pimpleFluid/robin/backward/deltaT2e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.25 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=2x10^{-4}", \
#    "pimpleFluid/robin/backward/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.125 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=1x10^{-4}", \
#    "pimpleFluid/robin/backward/deltaT5e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.0625 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=5x10^{-5}"
