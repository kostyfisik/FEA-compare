name: PERMAS(R)
website: [[https://www.intes.de][https://www.intes.de]]
license: Proprietary
GUI: Yes
Community: [[https://meet.intes.de:444/projects/permas4edu][https://meet.intes.de:444/projects/permas4edu]] [[https://www.researchgate.net/topic/PERMAS][https://www.researchgate.net/topic/PERMAS]]
Documentation: User guides, reference manuals, API documentation, application libraries with solved examples, online tutorials

    Mesh

mesh elements: Intervals (1D); triangles, quadrilaterals (2D and 3D boundaries); tetrahedra, pyramids, prisms, hexahedra (3d)
mesh high-order mapping: Second order (Serendipity and Lagrange)
mesh generation: Built-in and external
mesh input\output: STL, ABAQUS, NASTRAN, NX (Dr.Binde), PATRAN, UNV, BIF/BOF, H3D, native format (i.e. .hdf, .post)
mesh adaptive-refinement: No; no p-refinement but several higher-order elements are included. 
mesh check: Avoids inverted and degenerated elements; various mesh quality measures
CAD files support: STL.
mesh operation: Merge, copy; convert; extrude, revolve


    Parallel possibilities

automatic mesh partitioning: Task graph and mesh partitioning for DMP
MPI: on request
threads: Supports multithreading
OpenMP: Yes
OpenCL: No
CUDA: Yes

    Solver

Dimension: 0D, 1D, 2D, 3D (can coexist)
FE: Lagrange (bubble,EAS, serendipity), beam and plate elements, control elements, RBC elements, Hermite
Quadrature: Gauss-Legendre, Gauss-Lobatto and best element specific quadrature rules.
Transient problems: Yes, Newmark, HHT, Alpha Method
Predifined equations: heat transfer, linear elasticity, electromagnetics, pressure acoustics, fluid-structure interaction.
Visualization: Built-in
Output format: Text, PNG, GIF, JPEG, XLSX, Microsoft PowerPoint (for images). GIF, MP4, Windows Media 
Boundary elements solver: No

    Linear algebra

Used libs: MUMPS, SPOOLES; ARPACK, BLAS, BLIS, Intel MKL, LAPACK
Iterative matrix solvers:  GMRES, PCG, (P-)Multigrid, Contact-Multigrid, FETI
Preconditioners: diverse

    Matrix-free

matrix-free: Yes
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: Primarily Fortran and C++ , Python
Bindings to language: Fortran, C, Python

    Other
    
Predefined equations: Yes, many predefined physics
Coupled nonlinear problems: Yes
Binary: Windows, Linux
Testing: More than 6000 regular QA tests
scripting: Python
automatic differentiation: Yes
multiphysics: Yes, full custom and predefined multiphysics couplings between all kinds of physics
Optimization Solvers: Adaptive Monte Carlo, Latin Hypercube Sampling, Response surface, SCP, SLP, SQP, ACP, COBYLA, GCA, MS (multistart), OC (optimality criteria) , WLIN, dividing rectangle, design centering

