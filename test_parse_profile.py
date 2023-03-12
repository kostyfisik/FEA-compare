from utils.parse_profile import parse_all_profiles, parse_profile


def test_can_read_key():
    file_lines = ['key:test value\n']
    profile = parse_profile(file_lines)
    assert(len(profile) == 1)
    assert(profile['key:'] == 'test value')

    file_lines = ['key: test value\n']
    profile = parse_profile(file_lines)
    assert(profile['key:'] == 'test value')

    file_lines = ['key:  test value \n']
    profile = parse_profile(file_lines)
    assert(profile['key:'] == 'test value')

    file_lines = [' key :  test value \n']
    profile = parse_profile(file_lines)
    assert(profile['key:'] == 'test value')


def test_can_skip_section():
    file_lines = ['key: value\n', 'section name\n', 'key2:  value']
    profile = parse_profile(file_lines)
    assert(len(profile) == 2)


def test_ignore_comments():
    file_lines = ['# comment 1\n', 'key: value\n',
                  '# comment2\n', 'section name\n',
                  '# comment 3\n', 'key2:value\n']
    profile = parse_profile(file_lines)
    assert(len(profile) == 2)


def test_ignore_empty_lines():
    file_lines = ['# comment 1\n', '\n', 'key: value\n', '\n',
                  '# comment2\n', '\n', 'section name\n', '\n',
                  '# comment 3\n', '\n', 'key2:value\n', '\n', '\n', ]

    profile = parse_profile(file_lines)
    assert(len(profile) == 2)


def test_can_read_sample_lines():
    sample_file_lines = ['name:  FEniCS\n', 'website: [[http://fenicsproject.org/][http://fenicsproject.org/]]\n', 'license: GNU GPL\\LGPL\n', 'GUI: Postprocessing only \n', 'Community: Mailing list\n', 'Documentation: Tutorial, demos (how many?), 700-page book\n', 'Wilkinson Prize: [[http://www.nag.co.uk/other/WilkinsonPrize.html][2015 for dolfin-adjoint]]\n', 'Binary: Linux (Debian\\Ubuntu), Mac\n', '\n', '    Mesh\n', '\n', 'mesh elements: intervals, triangles, tetrahedra (quads, hexes - work in progress)\n', 'mesh high-order mapping: (Any - work in progress)\n', 'mesh generation: Yes, [[http://fenicsproject.org/documentation/dolfin/1.4.0/python/demo/documented/csg-2D/python/documentation.html][Constructive Solid Geometry (CSG)]] supported via mshr (CGAL and Tetgen used as backends) \n', 'mesh input\\output: XDMF (and FEniCS XML)\n', 'mesh adaptive-refinement: Only h\n', 'mesh check: intersections (collision testing)\n', '\n', '    Parallel possibilities\n', '\n', 'automatic mesh partitioning: Yes (ParMETIS and SCOTCH)\n',
                         'MPI: Yes, [[http://figshare.com/articles/Parallel_scaling_of_DOLFIN_on_ARCHER/1304537][DOLFIN solver scales up to 24k]]\n', 'threads:\n', 'OpenMP:\n', 'OpenCL:\n', 'CUDA:\n', '\n', '    Solver\n', '\n', 'Dimension: 1/2/3D\n', 'FE: Lagrange, BDM, RT, Nedelic, Crouzeix-Raviart, all simplex elements in the Periodic Table (femtable.org), any\n', ' order\n', 'Predifined equations:\n', 'Visualization: Buil-in simple plotting + External\n', 'Output format: VTK(.pvd, .vtu) and XDMF/HDF5\n', 'Boundary elements solver: No\n', 'Automated assembly: Yes\n', 'Use multiple meshes: Yes, including non-matching meshes\n', '\n', '    Linear algebra\n', '\n', 'Used libs:  PETSc, Trilinos/TPetra, Eigen.\n', 'Iterative matrix solvers:\n', 'Preconditioners:\n', '\n', '    Matrix-free\n', '\n', 'matrix-free:\n', 'matrix-free save memory:\n', 'matrix-free speed-up:\n', '\n', '    Used language\n', '\n', 'Native language: C++\n', 'Bindings to language: Python\n', '\n', '    Other\n']
    profile = parse_profile(sample_file_lines)
    assert(profile['name:'] == 'FEniCS')
    assert(profile['Dimension:'] == '1/2/3D')
    assert(profile['Native language:'] == 'C++')


def test_can_read_from_real_file():
    with open('profiles/fenics.profile') as f:
        lines = f.readlines()
    profile = parse_profile(lines)
    assert(len(profile) > 0)
    assert(len(profile['name:']) > 0)


def test_can_parse_multiple_profiles(mocker):
    all_profiles = parse_all_profiles('mock path')
    pass
