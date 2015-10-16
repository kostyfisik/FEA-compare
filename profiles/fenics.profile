name:  FEniCS
website: http://fenicsproject.org/
license: GNU GPL\LGPL
GUI: Postprocessing only 
Community: Mailing list
Documentation: Tutorial, demos (how many?), 700-page book
Wilkinson Prize: [[http://www.nag.co.uk/other/WilkinsonPrize.html][2015 for dolfin-adjoint]]
Binary: Linux (Debian\Ubuntu), Mac

    Mesh

mesh elements: intervals, triangles, tetrahedra (quads, hexes - work in progress)
mesh high-order mapping: (Any - work in progress)
mesh generation: Yes, Constructive Solid Geometry (CSG) supported via mshr (CGAL and Tetgen used as backends)
mesh input\output: XDMF (and FEniCS XML)
mesh adaptive-refinement: Only h
mesh check: intersections (collision testing)

    Parallel possibilities

automatic mesh partitioning: Yes
MPI: Yes, [[http://figshare.com/articles/Parallel_scaling_of_DOLFIN_on_ARCHER/1304537][DOLFIN solver scales up to 24k]]
threads:
OpenMP:
OpenCL:
CUDA:

    Solver

Dimension: 1/2/3D
FE: Lagrange, BDM, RT, Nedelic, Crouzeix-Raviart, all simplex elements in the Periodic Table (femtable.org), any
 order
Predifined equations:
Visualization: Buil-in simple plotting + External
Output format: VTK(.pvd, .vtu) and XDMF/HDF5
Boundary elements solver: No
Automated assembly: Yes
Use multiple meshes: Yes, including non-matching meshes

    Linear algebra

Used libs:  PETSc, Trilinos/TPetra, Eigen.
Iterative matrix solvers:
Preconditioners:

    Matrix-free

matrix-free:
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: C++
Bindings to language: Python

    Other
