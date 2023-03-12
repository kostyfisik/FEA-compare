import os
from typing import Callable

from utils.filesystem import file_reader, search_files


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
    filenames = search_files(profiles_path, ['*.profile'])
    for file in filenames:
        profile = {}
        lines = file_reader(file)
        profile = parse_profile(lines)
        all_profiles.append(profile)
    return all_profiles


def get_profiles(profiles_path: str) -> dict[str, str]:
    all_profiles = parse_all_profiles(profiles_path)
    # Profiles order - show better filled profiles first
    all_profiles.sort(key=lambda d: len(d), reverse=True)
    return all_profiles
