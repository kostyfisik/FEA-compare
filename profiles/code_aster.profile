name: code_aster
website: www.code-aster.org
license: GPL
GUI: Yes (Salome-Meca)
Community: discussion forum, Bitbucket forge
Documentation: user manual, theory manual, verification manual, developer manual (more than 25000 pages both in French and English with machine translation)

    Mesh

mesh elements: segments (1d), triangles, quadrilaterals (2d), tetrahedra, pyramids, wedges, hexahedra (3d)
mesh high-order mapping: Quadratic
mesh generation: Yes (Salome-Meca)
mesh adaptive-refinement: h-refinement
mesh input\output: unv, gmsh, MED, aster
mesh check: limited features (double nodes, degenerated elements)
CAD files support:  Yes (Salome-Meca)
mesh operation: Yes (Salome-Meca)

    Parallel possibilities

automatic mesh partitioning: Yes for parallel calculations (PTScotch, ParMetis)
MPI: Yes
threads: Yes
OpenMP: Yes
OpenCL: No
CUDA: No

    Solver

Dimension:	0D/1D/2D/3D (dimensions may coexist)
FE: Lagrange elements (isoparametric), mixed elements, structural mechanics elements (beam, plate)
Quadrature: depending on the type of element (Gauss, Newton-Cotes, etc)
Transient problems: Yes
Predifined equations: Yes (mechanics, thermics, acoustics)
Automated assembly: Yes
Visualization: Paraview (Salome-Meca)
Output format: MED, ASCII
Boundary elements solver: Yes for Soil-Structure Interaction (Miss3D)
Use multiple meshes: Yes

    Linear algebra

Used libs: BLAS/LAPACK, MUMPS (and SCALAPACK), PETSc 
Iterative matrix solvers: GMRES, CG, GCR, CR, FGMRES (via PETSc)
Preconditioners: ILU, Jacobi, Simple Precision Preconditioner (via MUMPS)

    Matrix-free

matrix-free: No
matrix-free save memory: No
matrix-free speed-up: No

    Used language

Native language: Fortran 90, Python
Bindings to language: Python

    Other

Predefined equations: linear quasistatics, linear thermics, non-linear quasistatics, non-linear dynamics, eigen problem for mechanics, linear dynamics on physical basis and modal basis, harmonic analysis, spectral analysis
Coupled nonlinear problems: thermo-hydro-mechanical problem for porous media, coupling with Code_Saturne CFD software for Fluid-Structure Interaction via SALOME platform
Binary: Yes for Salome-Meca (Linux)
Testing: More than 3500 verification testcases covering all features and providing easy starting points for beginners
fullname: Analyse des Structures et Thermo-mécanique pour des Études et des Recherches (ASTER)
