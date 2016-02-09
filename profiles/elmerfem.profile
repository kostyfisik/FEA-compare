name: Elmerfem, Elmer finite element software 
website: [[https://www.csc.fi/elmer][https://www.csc.fi/elmer]]
license: GNU (L)GPL
GUI: Yes, partial functionality
Community: 1000's of users, discussion forum, mailing list
Documentation: ElmerSolver Manual, Elmer Models Manual, ElmerGUI Tutorials, etc. (>700 pages of LaTeX documentation)

    Mesh

mesh elements: intervals (1d), triangles, quadrilaterals (2d), tetrahedra, pyramids, wedges, hexahedra (3d)
mesh high-order mapping: Yes, for Lagrange elements
mesh generation: Limited own meshing capabilities with ElmerGrid and netgen/tetgen APIs. Internal extrusion and mesh multiplication on parallel level. 
mesh input\output: 
mesh adaptive-refinement: h-refinement for selected equations
automatic mesh partitioning: partitioning with ElmerGrid using Metis or geometric division
CAD files support: Limited support via OpenCASCADE in ElmerGUI

    Parallel possibilities

MPI: Yes, demonstrated scalability up to 1000's of cores
threads: threadsafe, limited threading, work in progress
OpenMP: Yes, partially
OpenCL: No
CUDA: No

    Solver

Dimension: 1D/2D/3D (dimensions may coexist)
FE: Lagrange elements, p-elements up to 10th order, Hcurl conforming elements (linear and quadratic) for
all shapes, Hdiv conforming elements
Predifined equations: Around 40 predefined solvers 
Visualization: ElmerPost, VTK widget (but Paraview is recommended)
Output format: Several output formats (VTU, gmsh,...)
Boundary elements solver: Existing but without multipole acceleration (not usable for large problems)
Use multiple meshes: Continuity of non-conforming interfaces ensured by mortar finite elements

    Linear algebra

Used libs: Built-in, Hypre, Trilinos, umfpack, MUMPS, Pardiso, etc. (optional) 
Iterative matrix solvers: Built-in Krylov solvers, Krylov and multigrid solvers from external libraries
Preconditioners: Built-in preconditioners (ILU, diagonal, vanka, block) and
Hypre, Trilinos preconditioners 

    Matrix-free

matrix-free: Experimental implementation
matrix-free save memory: 
matrix-free speed-up:

    Used language

Native language: Fortran (2003 standard)
Bindings to language: 
Binary: Windows, Linux (launchpad: Debian/Ubuntu), Mac (homebrew) (all with MPI)

    Other

Testing: More than 400 consistency tests ensuring backward compatibility 