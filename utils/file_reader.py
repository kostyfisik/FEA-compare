def file_reader(filepath: str) -> list[str]:
    with open(filepath) as f:
        lines = f.readlines()
    return lines
