name: GetFEM++
website: http://home.gna.org/getfem/
license: LGPL
GUI: No
Community: Mailing list
Documentation: User doc, tutorials, demos, developper's guide
mesh elements: intervals, triangles, tetrahedra, quads, hexes, prisms, some 4D elements, easily extensible.
mesh generation: Experimental in any dimension + predefined shapes + Extrusion.
mesh adaptive-refinement: Only h
mesh input\output: gmsh, GiD, Ansys
mesh check: ?
CAD files support: No
automatic mesh partitioning: Yes (METIS)
MPI: Yes
Threads:
OpenMP: Yes
OpenCL: No
CUDA: No
Dimension: Any, possibility to mix and couple problem of different dimension
FE: Continuous and discontinuous Lagrange, Hermite, Argyris, Morley, Nedelec, Raviart-Thomas, composite elements (HCT, FVS), Hierarchical elements, Xfem, easily extensible.
Predifined equations: Model bricks: Laplace, linear and nonlinear elasticity, Helmholtz, plasticity, Mindlin and K.L. plates, boundary conditions including contact with friction.
Visualization: External or with the Scilab/Matlab/Python interface. Possibility to perform complex slices.
Output format: vtk, gmsh, OpenDX.
Boundary elements solver: No
Use multiple meshes: Yes including different dimensions and taking account of any transformation.
Used libs: SuperLU, MUMPS, Built-in.
Iterative matrix solvers: All Krylov 
Preconditioners: Basic ones (ILU, ILUT)
matrix-free: No
matrix-free save memory: No
matrix-free speed-up: No
Native language: C++
Bindings to language: Python, Scilab or Matlab
Binary: Linux (Debian/Ubuntu)
Automated assembly: Yes
mesh operation: Extrude, rotate, translation, refine




Coupled nonlinear problems: Yes
Symbolic derivation of the tangent system for nonlinear problems: Yes.
Support for fictitious domain methods: Yes
