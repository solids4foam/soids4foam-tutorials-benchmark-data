# To generate the plot, use the following command:
# > gnuplot plot.gnuplot -p

set title "3dTube: Axial Displacement at Point A using deltaT = 1e-4 s"
set xlabel "Time (in s)"
set ylabel "Axial Displacement (in mm)"
set grid
set key top right

set yrange [-0.1:0.1]

plot \
    "v2012/pimpleFluid/aitkens/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$4) w lp ps 0.3 pt 5 lc "red" lw 0.5 lt 1 t "DN-Aitkens", \
    "v2012/pimpleFluid/IQNILS/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$4) w lp ps 0.25 pt 5 lc "red" lw 0.5 lt 1 dt 2 t "DN-IQNILS", \
    "v2012/sonicLiquidFluid/aitkens/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$4) w lp ps 0.25 pt 5 lc "green" lw 0.5 lt 1 t "WC-DN-Aitkens", \
    "v2012/sonicLiquidFluid/IQNILS/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$4) w lp ps 0.25 pt 5 lc "green" lw 0.5 lt 1 dt 2 t "WC-DN-IQNILS", \
    "fe41/pimpleFluid/robin/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$4) w lp ps 0.25 pt 7 lc "blue" lw 0.5 lt 1 t "RN", \
    "v2012/pimpleFluid/preCICE-IQNILS/Euler/deltaT1e-4/postProcessing/0/solidPointDisplacement_displacement.dat" u 1:(1000*$4) w lp ps 0.25 pt 7 lc "orange" lw 0.5 lt 1 t "preCICE-DN-IQNILS"
