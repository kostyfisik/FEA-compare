name: MOOSE
website: [[https://www.mooseframework.org/][https://www.mooseframework.org/]]
license: LGPL
GUI: Yes
Community:  [[https://groups.google.com/forum/#!forum/moose-users][Google Group]]
Documentation: Doxygen, Markdown, 170+ example codes, 4300+ test inputs

    Mesh

mesh elements: Tria, Quad, Tetra, Prism, etc.
mesh high-order mapping:
mesh generation: Built-in
mesh input\output: ExodusII, Nemesis, Abaqus, Ensight, Gmsh, GMV, OFF, TecPlot TetGen, etc.
mesh adaptive-refinement: h, p, mached hp, singular hp
mesh operation: Merge, join, extrude, modular mesh modifier system
automatic mesh partitioning: Metis, Parmetis, Hilbert (shared and distributed meshes)

    Parallel possibilities

MPI: Yes
threads: Yes
OpenMP: Yes
OpenCL:
CUDA:

    Solver

Dimension: 1/2/3D
FE: Lagrange, Hierarchic, Discontinuous Monomials, Nedelec
Transient problems: implicit-euler explicit-euler crank-nicolson bdf2 explicit-midpoint dirk explicit-tvd-rk-2 newmark-beta
Quadrature: Gauss-Legendre (1D and tensor product rules in 2D and 3D) tabulated up to 44th-order to high precision, best available rules for triangles and tetrahedra to very high order, best available monomial rules for quadrilaterals and hexahedra.
Predifined equations: Phase Field, Solid Mechanics, Navier-Stokes, Porous Flow, Level Set, Chemical Reactions, Heat Conduction, support for custom PDEs
Visualization: Yes, VTK-based GUI, Python visualizatuion library
Output format: ExodusII, Xdr, etc.
Boundary elements solver:

    Linear algebra

Used libs:  PETSc, Trilinos, LASPack,  SLEPc
Iterative matrix solvers: LASPack serial, PETSc parallel
Preconditioners: LASPack serial, PETSc parallel, algebraic multigrid (via Hypre)

    Matrix-free

matrix-free:
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: C++
Bindings to language:

    Other

Optimization Solvers: Support for TAO- and nlopt-based constrained optimization solvers incorporating gradient and Hessian information.
Testing: [[https://civet.inl.gov/][4300+ tests]], Testing as a service for derived applications
multiphysics: Arbitrary multiphysics couplings are supported
scripting: Runtime parsed mathematical expression in input files
automatic differentiation: Forward-mode for Jacobian computation, symbolic differentiation capabilities
