# Script for post processing inflation of an infinitely long tube
# Plots the radial and circunferential (hoop) stress along the radius
 
postProcDirectory = "postProcessing/sets/100/"
sigmaFile = postProcDirectory . "line_sigmaRR_sigmaThetaTheta.xy"


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Radial stress along radius
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
reset
set terminal png size 400,300 enhanced font "Helvetica,12"
set output 'radial-stress.png'

set grid
set xlabel 'Radius (m)'
set ylabel 'Radial Stress (MPa)'
set key right bottom
set key font ",10"

set xrange [7:18.625]

plot sigmaFile u (sqrt($1**2+$2**2)):($4/1e6) w p title "Numerical",\
     "./radial_stress.dat" w l lw 2 title "Analytical"
     
set output


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Hoop stress along radius
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

reset
set terminal png size 400,300 enhanced font "Helvetica,12"
set output 'hoop-stress.png'

set grid
set xlabel 'Radius (m)'
set ylabel 'Hoop Stress (MPa)'
set key right top
set key font ",10"

set xrange [7:18.625]

plot sigmaFile u (sqrt($1**2+$2**2)):($5/1e6) w p title "Numerical",\
     "./hoop_stress.dat" w l lw 2 title "Analytical"

set output
