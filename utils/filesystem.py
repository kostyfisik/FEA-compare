import pathlib


def file_reader(filepath: str) -> list[str]:
    with open(filepath) as f:
        lines = f.readlines()
    return lines


def search_files(path: pathlib.Path | str, patterns_list: list[str]) -> list[pathlib.Path]:
    all_paths = list()
    path = pathlib.Path(path)
    for pattern in patterns_list:
        all_paths += list(path.rglob(pattern))
    return [path for path in all_paths if path.is_file()]
