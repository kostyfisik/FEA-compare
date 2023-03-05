from typing import Callable

from utils.file_reader import file_reader


def read_main_keys(file_lines: list[str]) -> list[str]:
    keys = []
    for line in file_lines:
        s_line = line.strip()
        if len(s_line) == 0:
            continue
        if (s_line[0] == '#'):
            continue
        keys.append(s_line)
    return keys


def enrich_keys_from_profiles(all_keys, all_profiles):
    for profile in all_profiles:
        for key in profile.keys():
            if not key in all_keys:
                all_keys.append(key)


def get_sorted_keys(main_keys_path: str,
                    all_profiles: dict[str, str],
                    reader: Callable[[str], list[str]] = file_reader):
    lines = reader(main_keys_path)
    all_keys = read_main_keys(lines)
    enrich_keys_from_profiles(all_keys, all_profiles)
    return all_keys
