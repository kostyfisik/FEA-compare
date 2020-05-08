name: Range
website: [[http://www.range-software.com][http://www.range-software.com]]
license: GPL
GUI: Yes
Community: GitHub
Documentation: user manual, tutorials

    Mesh

mesh elements: points(0d), segments (1d), triangles, quadrilaterals (2d), tetrahedra, hexahedra (3d)
mesh generation: Yes (TetGen)
mesh input\output: rbm, stl
mesh check: limited features (double nodes, degenerated elements, intersected elements)
CAD files support:  Yes (stl)
mesh operation: Extrude, rotate, translation, refine

    Parallel possibilities

automatic mesh partitioning: No
MPI: No
threads: Yes
OpenMP: Yes
OpenCL: No
CUDA: No

    Solver

Dimension:	0D/1D/2D/3D (dimensions may coexist)
FE: Lagrange elements
Transient problems: Yes
Predifined equations: Yes (Incompressible Navier-Stokes, Heat transfer (convection-conduction-radiation), Stress analysis, Soft body dynamics, Modal analysis, Electrostatics, Magnetostatics )
Automated assembly: Yes
Visualization: GUI (built-in)

    Linear algebra

Used libs: No 
Iterative matrix solvers: GMRES, CG
Preconditioners: ILU, Jacobi

    Matrix-free

matrix-free: No
matrix-free save memory: No
matrix-free speed-up: No

    Used language

Native language: C++
Bindings to language: No
