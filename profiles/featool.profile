name:  FEATool Multiphysics
website: [[https://www.featool.com/][https://www.featool.com/]]
license: 
GUI: Matlab and Octave GUI
Community: Mailing list
Documentation: [[https://www.featool.com/doc][Online FEATool
documentation]], ~600 pages, ~20 step-by-step tutorials, and 85 m-script model examples
Wilkinson Prize: 
Binary: Windows, Linux, Mac

    Mesh

mesh elements: intervals, triangles, tetrahedra, quads, hexes
mesh high-order mapping: 
mesh generation: Integrated DistMesh, Gmsh, and Triangle GUI and CLI interfaces
mesh input\output: FeatFlow, FEniCS XML, GiD, Gmsh, GMV, Triangle
mesh adaptive-refinement: 
mesh check: 
mesh operation: Merge, join, extrude, and revolve operations

    Parallel possibilities

automatic mesh partitioning: 
MPI: 
threads:
OpenMP:
OpenCL:
CUDA:

    Solver

Dimension: 1/2/3D
FE: Lagrange (1st-5th order), Crouzeix-Raviart, Hermite
Transient problems: BE, CN, and Fractional-Step-Theta schemes
Predifined equations: Incompressible Navier-Stokes, Heat transfer, convection-diffusion-reaction, linear elasticity, electromagnetics, Darcy's, Brinkman equations, and support for custom PDE equations  
Visualization: Built-in with optional Plotly and GMV export 
Output format: GMV and Plotly
Boundary elements solver: 
Automated assembly: Yes
Use multiple meshes: 

    Linear algebra

Used libs:  Matlab/Octave built-in (Umfpack), supports integration with the FEniCS and FeatFlow solvers
Iterative matrix solvers: Matlab/Octave built-in
Preconditioners: Matlab/Octave built-in

    Matrix-free

matrix-free:
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language: Matlab / Octave
Bindings to language: 

    Other

multiphysics: Arbitrary multiphysics couplings are supported
scripting: Fully scriptable in as m-file Matlab scripts and the GUI supports exporting models in script format
