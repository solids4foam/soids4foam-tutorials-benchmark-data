# To generate the plot, use the following command:
# > gnuplot timeStepVsNumberOfIterations.gnuplot -p

set title "3dTube: Number of FSI iterations. Aitkens, sonicLiquidFluid, Euler, OpenFOAM-v2012."
set xlabel "Time (in s)"
set ylabel "Number of FSI iterations"
set grid
set key top right

set yrange [0:40]

plot \
    "sonicLiquidFoam/aitkens/Euler/deltaT8e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 1 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=8x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT4e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.5 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=4x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT2e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.25 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=2x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT1e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.125 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=1x10^{-4}", \
    "sonicLiquidFoam/aitkens/Euler/deltaT5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.0625 pt 5 lc "red" lw 0.1 lt 1 t "Euler, deltaT=5x10^{-5}", \
    \
    "sonicLiquidFoam/aitkens/backward/deltaT8e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 1 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=8x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT4e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.5 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=4x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT2e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.25 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=2x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT1e-4/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.125 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=1x10^{-4}", \
    "sonicLiquidFoam/aitkens/backward/deltaT5e-5/timeStepVsNumberOfIterations.txt" u 1:2 w lp ps 0.0625 pt 7 lc "blue" lw 0.1 lt 1 t "backward, deltaT=5x10^{-5}"
