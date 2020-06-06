name: Rama Simulator
website: [[http://ramasimulator.org][http://ramasimulator.org]]
license: GPL
GUI: Yes
Community: [[https://github.com/Evenedric/stuff][https://github.com/Evenedric/stuff]]
Documentation: User guide, reference manual, API documentation, examples, tutorials


    Mesh

mesh elements: triangles
mesh high-order mapping: No
mesh generation: Built-in
mesh input\output: Matlab
mesh adaptive-refinement: No
mesh check: Avoids degenerate elements
CAD files support: DXF
mesh operation: Union, difference, intersection, refine


    Parallel possibilities

automatic mesh partitioning:
MPI:
threads: Supports multithreading
OpenMP: No
OpenCL: No
CUDA: No

    Solver

Dimension: 2D
FE: Lagrange elements
Quadrature:
Transient problems: Yes
Predifined equations: Helmholtz
Visualization: Built-in
Output format: PNG
Boundary elements solver: No

    Linear algebra

Used libs: ARPACK, BLAS, LAPACK
Iterative matrix solvers:
Preconditioners:

    Matrix-free

matrix-free: No
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: C++
Bindings to language: Lua

    Other

Predefined equations: No
Coupled nonlinear problems: No
Binary: Windows, Linux, macOS
Testing:
scripting: Lua
automatic differentiation: Yes
multiphysics: No
Optimization Solvers: Levenberg-Marquardt, Subspace dogleg
