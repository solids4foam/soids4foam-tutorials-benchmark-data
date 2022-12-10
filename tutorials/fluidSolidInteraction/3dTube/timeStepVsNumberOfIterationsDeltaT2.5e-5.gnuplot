# To generate the plot, use the following command:
# > gnuplot timeStepVsNumberOfIterations.gnuplot -p

set title "3dTube: Number of FSI iterations with deltaT = 2.5e-5 s"
set xlabel "Time (in s)"
set ylabel "Number of FSI iterations"
set grid
set key top center

set yrange [0:80]

plot \
    "v2012/pimpleFluid/aitkens/Euler/deltaT2.5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w l lc "red" lw 1 lt 1 t "DN-Aitkens", \
    "v2012/pimpleFluid/IQNILS/Euler/deltaT2.5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w l lc "red" lw 1 lt 1 dt 2 t "DN-IQNILS", \
    "v2012/sonicLiquidFluid/aitkens/Euler/deltaT2.5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w l lc "green" lw 1 lt 1 t "WC-DN-Aitkens", \
    "v2012/sonicLiquidFluid/IQNILS/Euler/deltaT2.5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w l lc "green" lw 1 lt 1 dt 2 t "WC-DN-IQNILS", \
    "fe41/pimpleFluid/robin/Euler/deltaT2.5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w l lc "blue" lw 1 lt 1 t "RN", \
    "v2012/pimpleFluid/preCICE-IQNILS/Euler/deltaT2.5e-5/precice-Solid-iterations.log" u (0.000025*$1):3 w l lc "orange" lw 1 lt 1 t "preCICE-DN-IQNILS"