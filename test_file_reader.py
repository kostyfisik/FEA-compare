import pytest

from utils.file_reader import file_reader


@pytest.fixture
def mocker_file(mocker):
    # Read a mocked /etc/release file
    mocked_file_data = mocker.mock_open(read_data="file line 1\nfile line 2\n")
    mocker.patch("builtins.open", mocked_file_data)


def test_check_solaris_version(mocker_file):
    lines = file_reader(filepath='fakefile')
    assert(len(lines) == 2)
    assert(lines[0] == 'file line 1\n')
