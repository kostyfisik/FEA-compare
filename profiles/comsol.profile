name: COMSOL(R)
website: [[https://www.comsol.com][https://www.comsol.com]]
license:
GUI: Yes
Community:
Documentation:

    Mesh

mesh elements:
mesh high-order mapping: Any? [[https://www.comsol.com/blogs/keeping-track-of-element-order-in-multiphysics-models/][ Second-order is the default for most cases.]]
mesh generation: Built-in
mesh input\output:
mesh adaptive-refinement: generate new mesh with variable density, no(?) p-refinement.
automatic mesh partitioning:
CAD files support: STEP, IGES and [[https://www.comsol.com/cad-import-module][many others]].


    Parallel possibilities

MPI: Almost ideal for parameter sweep? For large scale simulations  Comsol 4.2 (bench by Pepper)[https://www.comsol.ru/paper/download/83777/pepper_presentation.pdf] has 19.2 speedup on 24 core cluster (0.8 efficiency).
threads:
OpenMP:
OpenCL:
CUDA: 

    Solver

Dimension:
FE: in Wave Optics Module: frequency domain and trainsient UI - 1,2, and 3 order; time explicit UI - 1,2,3, and 4 order; 
Quadrature:
Transient problems: (?) assume 2nd order leapfrog for wave optics?
Predifined equations: Yes, via modules
Visualization: Built-in
Output format:
Boundary elements solver:

    Linear algebra

Used libs:
Iterative matrix solvers:
Preconditioners:

    Matrix-free

matrix-free:
matrix-free save memory:
matrix-free speed-up:

    Used language

Native language:
Bindings to language:

    Other
