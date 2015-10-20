name:  FEniCS
website: http://firedrakeproject.org/
license: GNU LGPL
GUI: No
Community: Mailing list and IRC channel
Documentation: Manual, demos, API reference 
Wilkinson Prize: 
Binary: No. Automated installers for Linux and Mac

    Mesh

mesh elements: intervals, triangles, tetrahedra, quads, plus extruded meshes of hexes and wedges
mesh high-order mapping: (Any - using appropriate branches)
mesh generation: No
mesh input\output: 
mesh adaptive-refinement: 
mesh check: 

    Parallel possibilities

automatic mesh partitioning: Yes
MPI: Yes, [[http://figshare.com/articles/Parallel_scaling_of_DOLFIN_on_ARCHER/1304537][DOLFIN solver scales up to 24k]]
threads:
OpenMP:
OpenCL:
CUDA:

    Solver

Dimension: 1/2/3D
FE: Lagrange, BDM, RT, Nedelec, all simplex elements and Q- quad elements in the Periodic Table (femtable.org), any
 order
Predifined equations:
Visualization: External
Output format: VTK(.pvd, .vtu)
Boundary elements solver: No
Automated assembly: Yes
Use multiple meshes: Yes

    Linear algebra

Used libs:  PETSc
Iterative matrix solvers:
Preconditioners:

    Matrix-free

matrix-free: Yes
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: Python (and generated C)
Bindings to language:

    Other
