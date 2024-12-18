# `solids4foam` tutorials benchmark data

## What is this repository?

This repository contains benchmark data for the `solids4foam` tutorials.

Its primary purpose is to store simulation reference data and results associated with specific versions of `solids4foam` (e.g., particular installations). This enables users to compare results and performance across different `solids4foam` versions.

The repository's structure mirrors that of `solids4foam`, organized into categories based on problem types:

- **`solids`**: Focused on solid mechanics problems, subdivided into: `linearElasticiry`, `hyperelasticity`, `viscoelasticity`,  `thermoelasticity`, `elastoplasticity`, `poroelasticity`, `multimaterial`, `beamsPlatesShells` and `fracture`.  
- **`fluids`**: Focused on fluid dynamics problems.
- **`fluidSolidInteraction`**: Covers coupled simulations involving fluid-solid interaction.
- **`fluidSolidInteraction-preCICE`**: Demonstrates the usage of `solids4foam` with [preCICE](https://precice.org/)

Contribution guidelines for this repository follow those of `solids4foam` and are detailed in the `CONTRIBUTING.md` file.

For more information about `solids4foam`, please visit the [solids4foam website](https://solids4foam.github.io).

---

The following explains how the benchmark data were generated and what each dataset represents. The OpenFOAM version used for each dataset is identified by the corresponding tutorial subfolder, named in accordance with the corresponding OpenFOAM version.

All datasets currently in this repository were generated using `solids4foam-v2.0`. As additional data from future versions are incorporated, version-specific details will be clearly documented and managed to maintain clarity and usability.

## `fluidSolidInteraction`

### [`3dTube`](https://www.solids4foam.com/tutorials/tutorial4.html)

- **`axialDisplacementDeltaT1e-4.gnuplot`** and **`axialDisplacementDeltaT2.5e-5.gnuplot`**: These files plot the axial displacement of point A for time steps $\Delta t = 1 \cdot 10^{-4}$ and $\Delta t = 2.5 \cdot 10^{-4}$, respectively. The plots compare results across different `accelerationMethods`, `solvers`, and `coupling types`.
- **`radialDisplacementDeltaT1e-4.gnuplot`** and **`radialDisplacementDeltaT2.5e-5.gnuplot`**: These files plot the radial displacement of point A for time steps $\Delta t = 1 \cdot 10^{-4}$ and $\Delta t = 2.5 \cdot 10^{-4}$. Similar to the axial displacement plots, they compare results for various `accelerationMethods`, `solvers`, and `coupling types`.
- **`timeStepVsNumberOfIterationsDeltaT2.5e-5.gnuplot`** and **`timeStepVsNumberOfIterationsDeltaT1e-4.gnuplot`**: These files plot the number of FSI coupling iterations per time step for different `accelerationMethods`, `solvers`, and `coupling types`.

#### Data Organization in `fe41/` and `v2012/` Folders

These folders contain the following data:

- **`timeStepVsNumberOfIterations.gnuplot`**: Plots the number of FSI coupling iterations for the `Euler` and `backward` time schemes at different time steps.
- **`radialDisplacement.gnuplot`**: Plots the radial displacement of point A for the `Euler` and `backward` time schemes at various time steps.
- **`createNumberOfIterationFiles.sh`**: A script used to extract the `timeStepVsNumberOfIterations.txt` file from each solver log file.

#### Folder Naming Convention

The folder structure follows the naming convention: `solver/couplingType/accelerationMethod/timeScheme/timeStep`.

#### Within each `timeStep` folder, you will find

- **`log.solids4Foam`**: The solver log file.
- **`postProcessing/0/solidForcesinner-wall.dat`** and **`postProcessing/0/solidPointDisplacement_displacement.dat`**: These files record the displacement history of point A and the force history on the `inner-wall` solid patch. They are generated using the `solidForces` and `solidPointDisplacement` function objects.
- For the `v2012` version the `fluid/forces/0/` folder contains:
  - **`force.dat`** and **`moment.dat`**: These files store the time history of forces and moments on the fluid patch `wall`, generated using the `forces` function object.
- **`timeStepVsNumberOfIterations.txt`**: This file records the number of FSI coupling iterations for each time step.

---

## `solids`

### [`cylindricalPressureVessel`](https://www.solids4foam.com/tutorials/more-tutorials/solid-mechanics/hyperelasticity/cylindricalPressureVessel.html)

- **`radial_stress.dat`**: Contains radial stress data from [Bijelonja et al. (2005)](https://hrcak.srce.hr/206941).

    **`hoop_stress.dat`**: Contains hoop stress data from [Bijelonja et al. (2005)](https://hrcak.srce.hr/206941).

    **`stresses-along-radius.gnuplot`**: Plots radial and hoop stresses obtained from `postProcessing` alongside reference solutions from [Bijelonja et al. (2005)](https://hrcak.srce.hr/206941).

- **`logs/`**

  - **`log.solids4Foam-nu0.30`**: Solver log file for Poisson's ratio $\nu = 0.3$.

  - **`log.solids4Foam-nu0.40`**: Solver log file for Poisson's ratio $\nu = 0.4$.

  - **`log.solids4Foam-nu0.45`**: Solver log file for Poisson's ratio $\nu = 0.45$.

  - **`log.solids4Foam-nu0.49`**: Solver log file for Poisson's ratio $\nu = 0.49$.

  - **`plot_residuals.sh`**: A script used to extract data from the log files listed above and execute `residuals.gnuplot` to visualize residuals.

- **`postProcessing/sets/100/`**

  - **`line_D.xy`**: Displacement data sampled along a line at a 45-degree angle, generated using the `sampleDict` function object.

  - **`line_sigmaRR_sigmaThetaTheta.xy`**: Radial and hoop stresses sampled along a line at a 45-degree angle, also generated using the `sampleDict` function object.

### [`cylinderCrush`](https://www.solids4foam.com/tutorials/more-tutorials/solid-mechanics/hyperelasticity/cylinderCrush.html)

- **`logs/`**

  - **`solids4Foam-TL-log`**: Solver log file for the `nonLinearGeometryTotalLagrangian` solver.
  - **`solids4Foam-TLTD-log`**: Solver log file for the `nonLinearGeometryTotalLagrangianTotalDisplacement` solver.
  - **`solids4Foam-UL-log`**: Solver log file for the `nonLinearGeometryUpdatedLagrangian` solver.
  - **`plot_residuals.sh`**: A script that extracts data from the log files listed above and runs `residuals.gnuplot` to visualize the residuals.

    **`displacement-force-fem-solution.dat`**: Reference solution computed using the FEM method, as published in [Bijelonja et al. (2005)](https://hrcak.srce.hr/206941).

- **`postProcessing/0/`**

  - **`solidForcescylinderContact.dat`**: Time history of the applied force on the `cylinderContact` patch, generated using the `solidForces` function object.

  - **`solidPointDisplacement_displacement.dat`**: Time history of the displacement of the top cylinder point, generated using the `solidPointDisplacement` function object.

- **`plot-displacement-force.gnuplot`**: A script used to plot the force history results from `postProcessing/0/solidForcescylinderContact.dat` and compare them with the reference results in `displacement-force-fem-solution.dat`.

---
