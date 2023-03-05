import os


def parse_profile(file_lines: list[str]) -> dict[str, str]:
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


def parse_all_profiles(profiles_path: str) -> dict[str, str]:
    all_profiles = []
    for dirname, _, filenames in os.walk(profiles_path):
        for filename in filenames:
            if '.profile' == filename[-8:]:
                profile = {}
                with open(os.path.join(dirname, filename)) as f:
                    lines = f.readlines()
                profile = parse_profile(lines)
                all_profiles.append(profile)
    return all_profiles


def get_profiles(profiles_path: str) -> dict[str, str]:
    all_profiles = parse_all_profiles(profiles_path)
    # Profiles order - show better filled profiles first
    all_profiles.sort(key=lambda d: len(d), reverse=True)
    return all_profiles
