name: MFEM
website: [[https://mfem.org/][https://mfem.org/]]
license: BSD
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
HIP: Yes

    Solver

Dimension: 1D/2D/3D
FE: Arbitrary-order Lagrange elements (continuous and discontinuous), Bernstein basis, Nedelec and Raviart-Thomas elements, support for NURBS spaces (IGA)
Quadrature: Gauss-Legendre, Gauss-Lobatto, and uniform quadrature rules.
Transient problems: Runge-Kutta, SSP, SDIRK, Adams-Bashforth, Adams-Moulton, Symplectic Integration Algorithm, Newmark method, Generalized-alpha method
Predifined equations: Miniapps and examples for Laplace, elasticity, Maxwell, Darcy, advection, Euler, Helmholtz, and others
Visualization: In situ visualization with [[GLVis][https://glvis.org]]. Export to VisIt and ParaView.
Output format: VisIt, ParaView (VTU), GLVis format


    Linear algebra

Used libs: Built-in and integrated with hypre. Optional integrations with PETSc, Ginkgo, SuperLU, Suite Sparse, libCEED, and more
Iterative matrix solvers: Krylov methods (CG, MINRES, GMRES, BiCGStab)
Preconditioners: Algebraic, Geometric, and p-multigrid. Block ILU preconditioning. Support for hypre's AMS and ADS preconditioners for H(curl) and H(div).

    Matrix-free

matrix-free: Yes
matrix-free save memory: Yes
matrix-free speed-up: Yes

    Used language

Native language: C++
Bindings to language: [[https://github.com/mfem/PyMFEM][PyMFEM]]

    Other

Predefined equations: A large number of [[https://mfem.org/bilininteg/][Bilinear]] and [[https://mfem.org/lininteg/][Linear]] forms
Coupled nonlinear problems: Yes
Binary: Yes, via [[https://openhpc.community/][OpenHPC]]. Also available as part of [[https://github.com/spack/spack][Spack]], [[https://xsdk.info/][xSDK]], [[https://e4s-project.github.io/][E4S]], [[https://fastmath-scidac.llnl.gov/software-catalog.html][FASTMath]], [[https://software.llnl.gov/radiuss][RADIUSS]] and [[https://ceed.exascaleproject.org/software][CEED]].
Testing: Comprehensive unit and regression tests. Continuous integration through [[https://travis-ci.com/github/mfem/mfem][Travis CI]]
multiphysics: Arbitrary multiphysics couplings are supported
Optimization Solvers: Integration with HiOp. Built-in SLBQP optimizer
