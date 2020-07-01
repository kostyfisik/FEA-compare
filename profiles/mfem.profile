name: MFEM
website: [[https://mfem.org/][https://mfem.org/]]
license: BSD 3-Clause License
GUI: No
Community: [[https://github.com/mfem/mfem][GitHub Repository]]
Documentation: 26 examples, 17 miniapps, Doxygen, [[https://mfem.org][online documentation]]

    Mesh

mesh elements: segments, triangles, quadrilaterals, tetrahedra, hexahedra, prisms
mesh high-order mapping: arbitrary-order meshes and NURBS meshes
mesh generation: meshing miniapps and target-matrix mesh optimization
mesh adaptive-refinement: conforming and non-conforming adaptive refinement for tensor product and simplex meshes
mesh input\output: VTK, Gmsh, CUBIT, NETGEN, TrueGrid, and MFEM format


    Parallel possibilities

automatic mesh partitioning: METIS and space-filling curve partitioning
MPI: Yes
threads: Using OpenMP, RAJA, or OCCA backends
OpenMP: Yes
OpenCL: Through OCCA backends
CUDA: Yes

    Solver

Dimension: 1D/2D/3D
FE: Arbitrary-order Lagrange elements (continuous and discontinuous), Bernstein basis, Nedelec and Raviart-Thomas elements, support for NURBS spaces (IGA)
Quadrature: Gauss-Legendre, Gauss-Lobatto, and uniform quadrature rules.
Transient problems: Runge-Kutta, SSP, SDIRK, Adams-Bashforth, Adams-Moulton, Symplectic Integration Algorithm, Newmark method, Generalized-alpha method
Predifined equations: Miniapps and examples for Laplace, elasticity, Maxwell, Darcy, advection, Euler, Helmholtz, and others
Visualization: In situ visualization with [[GLVis][https://glvis.org]]. Export to VisIt and ParaView.
Output format: VisIt, ParaView (VTU), GLVis format


    Linear algebra

Used libs: Built-in and integrated with hypre. Optional integrations with PETSc, Ginkgo, SuperLU, Suite Sparse, libCEED
Iterative matrix solvers: Krylov methods (CG, MINRES, GMRES, BiCGStab)
Preconditioners: Algebraic, geometric, and p-multigrid. Block ILU preconditioning. Support for hypre's AMS and ADS preconditioners for H(curl) and H(div).

    Matrix-free

matrix-free: Yes
matrix-free save memory: Yes
matrix-free speed-up: Yes

    Used language

Native language: C++
Bindings to language: [[https://github.com/mfem/PyMFEM][PyMFEM]]

    Other

Testing: Comprehensive unit and regression tests. Continuous integration through [[https://travis-ci.com/github/mfem/mfem][Travis CI]]
Optimization Solvers: Integration with HiOp. Built-in SLBQP optimizer
