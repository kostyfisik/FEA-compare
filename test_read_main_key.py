from utils.read_main_keys import read_main_keys


def test_can_read_key():
    file_lines = ['test key:\n']
    keys = read_main_keys(file_lines)
    assert(len(keys) == 1)
    assert(keys[0][-1] == ':')


def test_can_read_section():
    file_lines = ['test key:\n', 'section name\n']
    keys = read_main_keys(file_lines)
    assert(len(keys) == 2)
    assert(keys[1][-1] != ':')


def test_order_matters():
    file_lines = ['test key:\n', 'section name\n']
    keys = read_main_keys(file_lines)
    assert(keys[0] == 'test key:')
    assert(keys[1] == 'section name')
    file_lines = ['section name\n', 'test key:\n']
    keys = read_main_keys(file_lines)
    assert(keys[0] == 'section name')
    assert(keys[1] == 'test key:')


def test_ignore_comments():
    file_lines = ['# comment 1\n', 'test key:\n',
                  '# comment2\n', 'section name\n', '# comment 3\n', ]
    keys = read_main_keys(file_lines)
    assert(len(keys) == 2)
    assert(keys[0] == 'test key:')
    assert(keys[1] == 'section name')


def test_ignore_empty_lines():
    file_lines = ['# comment 1\n', 'test key:\n', '# comment2\n',
                  '\n', 'section name\n', '\n',
                  '# comment 3\n', '\n', '\n', ]
    keys = read_main_keys(file_lines)
    assert(len(keys) == 2)


def test_can_read_sample_lines():
    sample_file_lines = ['# These are ordered and sectioned keys for comparison table\n', '#\n', '# Rules:\n', '#  - Keys in comparison table will be ordered in same manner as in this file\n', "#  - Key without colon symbol (which is ':') at the end are treated as section names\n", '#  - Empty lines are ignored\n', '#  - Any line starting with # symbol is a comment and it is ignored\n', '#  - Any other line is treated as a key\n', '\n', 'name:\n', 'website:\n', 'license:\n', 'GUI:\n', 'Community:\n', 'Documentation:\n', '\n', '    Mesh\n', '\n', 'mesh elements:\n', 'mesh high-order mapping:\n', 'mesh generation:\n', 'mesh adaptive-refinement:\n', 'mesh input\\output:\n', 'mesh check:\n', 'CAD files support:\n',
                         'mesh operation:\n', '\n', '    Parallel possibilities\n', '\n', 'automatic mesh partitioning:\n', 'MPI:\n', 'threads:\n', 'OpenMP:\n', 'OpenCL:\n', 'CUDA:\n', '\n', '    Solver\n', '\n', 'Dimension:\n', 'FE:\n', 'Quadrature:\n', 'Transient problems:\n', 'Predifined equations:\n', 'Automated assembly:\n', 'Visualization:\n', 'Output format:\n', 'Boundary elements solver:\n', 'Use multiple meshes:\n', '\n', '    Linear algebra\n', '\n', 'Used libs:\n', 'Iterative matrix solvers:\n', 'Preconditioners:\n', '\n', '    Matrix-free\n', '\n', 'matrix-free:\n', 'matrix-free save memory:\n', 'matrix-free speed-up:\n', '\n', '    Used language\n', '\n', 'Native language:\n', 'Bindings to language:\n', '\n', '    Other\n']
    keys = read_main_keys(sample_file_lines)
    assert(keys[0] == 'name:')
    assert(keys[6] == 'Mesh')
    assert(keys[7] == 'mesh elements:')


def test_can_read_from_real_file():
    with open('main-keys.txt') as f:
        lines = f.readlines()
    keys = read_main_keys(lines)
    assert(len(keys) > 0)
    assert(len(keys[0]) > 0)
