name: Deal II
website: www.dealii.org
license: GPL
GUI: No
Wilkinson Prize: 2007 
Community: [[https://groups.google.com/forum/#!forum/dealii][Google Group]]
Documentation: 50+ tutorials, 50+ video lectures, Doxygen

    Mesh

mesh elements: quad only
mesh input\output:
mesh mapping: [[http://dealii.org/developer/doxygen/deal.II/step_10.html][any order]]
mesh generation: external+predefined shapes
mesh adaptive-refinement: h, p, and hp for CG and DG

    Parallel possibilities

MPI: Yes (up to 16k pocesses)
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
FE: Lagrange elements of any order, continuous and discontinuous; Nedelec and Raviart-Thomas elements of any order; elements composed of other elements.
Predifined equations: Laplace?
Visualization: External (export to *.vtk and many others)
Output format: *.vtk
Boundary elements solver: [[https://www.dealii.org/developer/doxygen/deal.II/step_34.html][Yes]]

    Matrix-free

matrix-free save memory:
matrix-free speed-up: [[https://www.dealii.org/developer/doxygen/deal.II/step_37.html#Comparisonwithasparsematrix][Yes]]

    Used language

Native language:
Bindings to language:

    Other

