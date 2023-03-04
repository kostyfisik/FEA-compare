def read_main_keys(file_lines: list(str)) -> list(str):
    keys = []
    for line in file_lines:
        s_line = line.strip()
        if len(s_line) == 0:
            continue
        if (s_line[0] == '#'):
            continue
        keys.append(s_line)
    return keys
