# To generate the plot, use the following command:
# > gnuplot plot.gnuplot -p

set title "3dTube: Radial Displacement at Point A. Aitkens, sonicLiquidFluid, Euler, OpenFOAM-v2012."
set xlabel "Time (in s)"
set ylabel "Radial Displacement (in mm)"
set grid
set key top right

plot \
    "sonicLiquidFoam/aitkens/deltaT8e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w l t "deltaT=8x10^{-4}", \
    "sonicLiquidFoam/aitkens/deltaT4e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w l t "deltaT=4x10^{-4}", \
    "sonicLiquidFoam/aitkens/deltaT2e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w l t "deltaT=2x10^{-4}", \
    "sonicLiquidFoam/aitkens/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w l t "deltaT=1x10^{-4}", \
    "sonicLiquidFoam/aitkens/deltaT5e-5/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$3) w l t "deltaT=5x10^{-5}"
