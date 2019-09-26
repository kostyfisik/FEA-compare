name: libMesh
website: [[http://libmesh.github.io/][http://libmesh.github.io/]]
license: LGPL
GUI: No
Community:  [[http://sourceforge.net/p/libmesh/mailman/][mail lists]]
Documentation: Doxygen, 100+ example codes

    Mesh

mesh elements: Tria, Quad, Tetra, Prism, etc.
mesh high-order mapping:
mesh generation: Built-in
mesh input\output: ExodusII, Nemesis, Abaqus, Ensight, Gmsh, GMV, OFF, TecPlot TetGen, etc.
mesh adaptive-refinement: h, p, mached hp, singular hp
mesh operation: distort/translate/rotate/scale
automatic mesh partitioning: Metis, Parmetis, Hilbert

    Parallel possibilities

MPI: Yes
threads: Yes
OpenMP: Yes
OpenCL:
CUDA:

    Solver

Dimension: 2D\3D
FE: Lagrange, Hierarchic, Discontinuous Monomials, Nedelec
Quadrature: Gauss-Legendre (1D and tensor product rules in 2D and 3D) tabulated up to 44th-order to high precision, best available rules for triangles and tetrahedra to very high order, best available monomial rules for quadrilaterals and hexahedra.
Predifined equations: No
Visualization: No
Output format: ExodusII, Xdr, etc.
Boundary elements solver:

    Linear algebra

Used libs:  PETSc, Trilinos, LASPack,  SLEPc 
Iterative matrix solvers: LASPack serial, PETSc parallel
Preconditioners: LASPack serial, PETSc parallel

    Matrix-free

matrix-free:
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: C++
Bindings to language:

    Other
    
Optimization Solvers: Support for TAO- and nlopt-based constrained optimization solvers incorporating gradient and Hessian information.
