def parse_profile(file_lines: list(str)) -> dict(str, str):
    profile = {}
    for line in file_lines:
        s_line = line.strip()
        if len(s_line) == 0:
            continue
        if (s_line[0] == '#'):
            continue
        if ':' in s_line:
            key, value = s_line.split(':', 1)
            s_key, s_value = key.strip(), value.strip()
            if len(s_value) > 0:
                profile[s_key+':'] = s_value.strip()
    return profile
