import pathlib

import pytest

from utils.filesystem import file_reader, search_files


@pytest.fixture
def mocker_file(mocker):
    # Read a mocked /etc/release file
    mocked_file_data = mocker.mock_open(read_data="file line 1\nfile line 2\n")
    mocker.patch("builtins.open", mocked_file_data)


def test_check_solaris_version(mocker_file):
    lines = file_reader(filepath='fakefile')
    assert(len(lines) == 2)
    assert(lines[0] == 'file line 1\n')


def test_filesystem_search_by_pattern(mocker):
    mocker.patch("pathlib.Path.rglob", return_value=[
                 pathlib.Path('file.1'), pathlib.Path('file.2')])
    mocker.patch("pathlib.Path.is_file", return_value=True)
    res = search_files('some/path', ['some.pattern'])
    assert(res == [pathlib.Path('file.1'), pathlib.Path('file.2')])
    res = search_files('some/path', ['some.pattern', 'same.pattern'])
    assert(res == [pathlib.Path('file.1'), pathlib.Path('file.2'),
                   pathlib.Path('file.1'), pathlib.Path('file.2')])


def test_filesystem_search_by_pattern2(mocker):
    mocker.patch("pathlib.Path.rglob", return_value=[pathlib.Path('file.1')])
    mocker.patch("pathlib.Path.is_file", return_value=True)
    res = search_files('some/path', [])
    assert(res == [])
    res = search_files('some/path', ['some.pattern'])
    assert(res == [pathlib.Path('file.1')])
    res = search_files('some/path', ['some.pattern', 'same.pattern'])
    assert(res == [pathlib.Path('file.1'), pathlib.Path('file.1')])


def test_filesystem_search_by_pattern3(mocker):
    mocker.patch("pathlib.Path.rglob", return_value=[pathlib.Path('file.1')])
    mocker.patch("pathlib.Path.is_file", return_value=False)
    res = search_files('some/path', ['some.pattern', 'same.pattern'])
    assert(res == [])
