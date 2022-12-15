reset
set terminal png size 400,300 enhanced font "Helvetica,12"
set output 'displacement-force.png'

set grid
set xlabel 'Plate Displacement (-)'
set ylabel 'Displacement Force (kN/mm)'
set key right bottom
set key font ",10"

# Multiplies the force by 10*1e-6 = 1e-5 to converto to per meter and in kN/mm
# and multiply by 2 to account for the whole cylinder
plot '< paste -d " " ./postProcessing/0/solidPointDisplacement_displacement.dat ./postProcessing/0/solidForcescylinderContact.dat' \
    u (-2*$3):(2e-5*sqrt($7**2 + $8**2 + $9**2)) w p title "solids4Foam",\
    "./displacement-force-fem-solution.dat" u (2*$1):2 w l title "FEM Solution"

set output
