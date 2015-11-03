name: Deal II
website: www.dealii.org
license: LGPL
GUI: No
Wilkinson Prize: [[http://www.nag.co.uk/other/WilkinsonPrize.html][2007]]
Community: [[https://groups.google.com/forum/#!forum/dealii][Google Group]]
Documentation: 50+ tutorials, 50+ video lectures, Doxygen

    Mesh

mesh elements: quad only
mesh input\output:
mesh high-order mapping: [[http://dealii.org/developer/doxygen/deal.II/step_10.html][any order]]
mesh generation: external+predefined shapes
mesh adaptive-refinement: h, p, and hp for CG and DG
CAD files support: IGES, STEP (with [[https://dealii.org/developer/doxygen/deal.II/group__OpenCASCADE.html][OpenCascade wrapper]])
automatic mesh partitioning: yes


    Parallel possibilities

MPI: Yes (up to 16k processes), [[http://dealii.org/developer/doxygen/deal.II/step_40.html#Results][test data for 4k processes]]
threads: Threading Build Blocks
OpenMP: No
OpenCL: No
CUDA: No

    Linear algebra

Used libs: Built-in + Trilinos, PETSc, and METIS
Iterative matrix solvers:
Preconditioners: Multigrid

    Solver

Dimension: 1/2/3D
FE: Lagrange elements of any order, continuous and discontinuous; Nedelec and Raviart-Thomas elements of any order; BDM and Bernstein; elements composed of other elements.
Predifined equations: Laplace?
Visualization: External (export to *.vtk and many others)
Output format: *.dx *.ucd *.gnuplot *.povray *.eps *.gmv *.tecplot *.tecplot_binary *.vtk *.vtu *.svg *.hdf5 
Boundary elements solver: [[https://www.dealii.org/developer/doxygen/deal.II/step_34.html][Yes]]
Use multiple meshes:[[http://dealii.org/developer/doxygen/deal.II/step_28.html#Meshesandmeshrefinement][Yes, autorefined from same initial mesh for each variable of a coupled problem]]

    Matrix-free

matrix-free: Yes
matrix-free save memory: Yes
matrix-free speed-up: [[https://www.dealii.org/developer/doxygen/deal.II/step_37.html#Comparisonwithasparsematrix][Yes]]

    Used language

Native language: C++
Bindings to language: No

    Other

