# To generate the plot, use the following command:
# > gnuplot plot.gnuplot -p

set title "3dTube: Radial Displacement at Point A. Aitkens, sonicLiquidFluid, Euler, OpenFOAM-v2012."
set xlabel "Time (in s)"
set ylabel "Radial Displacement (in mm)"
set grid
set key top right

set yrange [-0.1:0.15]

plot \
    "sonicLiquidFoam/aitkens/Euler/deltaT8e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 1 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=8x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT4e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.5 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=4x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT2e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.25 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=2x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.125 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=1x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT5e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.0625 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=5x10^{-5}", \
    \
    "sonicLiquidFoam/aitkens/backward/deltaT8e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 1 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=8x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT4e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.5 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=4x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT2e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.25 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=2x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.125 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=1x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT5e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w lp ps 0.0625 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=5x10^{-5}"
