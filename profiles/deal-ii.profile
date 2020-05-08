name: Deal II
website: [[http://www.dealii.org][http://www.dealii.org]]
license: LGPL
GUI: No
Wilkinson Prize: [[http://www.nag.co.uk/other/WilkinsonPrize.html][2007]]
Community: [[https://groups.google.com/forum/#!forum/dealii][Google Group]]
Documentation: 50+ tutorials, 50+ video lectures, Doxygen
Binary: Linux, Windows (work in progress), Mac

    Mesh

mesh elements: intervals (1d), quads (2d), and hexes (3d) only
mesh input\output:
mesh high-order mapping: [[http://dealii.org/developer/doxygen/deal.II/step_10.html][any order]]
mesh generation: external+predefined shapes
mesh adaptive-refinement: h, p, and hp for CG and DG
CAD files support: IGES, STEP (with [[https://dealii.org/developer/doxygen/deal.II/group__OpenCASCADE.html][OpenCascade wrapper]])


    Parallel possibilities

automatic mesh partitioning: yes, shared (METIS/Parmetis) and distributed (p4est)
MPI: Yes (up to 147k processes), test for [[http://dealii.org/developer/doxygen/deal.II/step_40.html#Results][4k processes]] and [[https://www.dealii.org/deal85-preprint.pdf][geometric multigrid for 147k, strong and weak scaling]]
threads: Threading Build Blocks
OpenMP: Yes (vectorization only)
OpenCL: No
CUDA: since 9.1, see [[https://www.dealii.org/developer/doxygen/deal.II/step_64.html][step-64]] for matrix-free GPU+MPI example

    Linear algebra

Used libs: Built-in + Trilinos, PETSc, and SLEPc
Iterative matrix solvers: All Krylov (CG, Minres, GMRES, BiCGStab, QMRS)
Preconditioners: Many, including algebraic multigrid (via Hypre and ML) and geometric multigrid

    Solver

Dimension: 1/2/3D
FE: Lagrange elements of any order, continuous and discontinuous; Nedelec and Raviart-Thomas elements of any order; BDM and Bernstein; elements composed of other elements.
Transient problems: Any user implemented and/or from a set of predifined. Explicit methods: forward Euler, 3rd and 4th order Runge-Kutta. Implicit methods: backward Euler, implicit Midpoint, Crank-Nicolson, SDIRK. Embedded explicit methods: Heun-Euler, Bogacki-Shampine, Dopri, Fehlberg, Cash-Karp.

Quadrature: Gauss-Legendre, Gauss-Lobatto, midpoint, trapezoidal,  Simpson, Milne and Weddle (closed Newton-Cotes for 4 and 7 order polinomials), Gauss quadrature with logarithmic or 1/R weighting function, Telles quadrature of arbitrary order.
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

Testing: [[https://dealii.org/developer/developers/testsuite.html][3500+ tests]]
