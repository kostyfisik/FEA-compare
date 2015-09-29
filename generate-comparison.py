#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#
#    Copyright (C) 2015  Konstantin Ladutenko <kostyfisik@gmail.com>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
import os
import string
from glob import glob
# Read all profiles from `profiles` dir
all_profiles = []
for dirname, dirnames, filenames in os.walk('./profiles/'):
    # print path to all filenames.
    isFirst = True
    for filename in filenames:
        if '.profile' == filename[-8:]:
            # print("== Reading data from "+filename)
            profile = {}
            with open(os.path.join(dirname,filename)) as f:
                for line in f:
                    key, value = line.split(':',1)
                    profile[key.strip()] = value.strip()
            all_profiles.append(profile)
all_keys = []
# Read main keys
with open('main-keys.txt') as f:
    for line in f:
        all_keys.append(line.strip())
# Add all other possible keys
for profile in all_profiles:
    for key in profile.keys():
        if not key in all_keys:
            all_keys.append(key)
# Generate Org-mode table
header = "|  "
delimeter = "|--"
for profile in all_profiles:
    header += '|'+profile[all_keys[0]]
    delimeter += "+--"
header += "|"
delimeter += "|"

all_table = header + "\n" + delimeter + "\n"
for key in all_keys[1:]:
    all_table += "|"+key
    for profile in all_profiles:
        value = profile.get(key)
        if not value==None:
            all_table += "|"+value
        else:
            all_table += "|  "
    all_table += "|\n"
disclaimer = " This is an auto generated comparison from manually filled *.profiles for FEA software.\n\n"
with open('README.org', "w") as myfile:
    myfile.write(disclaimer+all_table)
