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
                    if ':' in line and not line[0] == '#':
                        key, value = line.split(':',1)
                        #Add only non-empty keys
                        if len(value.strip()) > 0:
                            profile[key.strip()+':'] = value.strip()
                            # print ("|"+value.strip()+"|")
            all_profiles.append(profile)

# Sort profiles order - first list better filled profiles
all_profiles.sort(key=lambda d: len(d), reverse=True)

all_keys = []
# Read main keys
with open('main-keys.txt') as f:
    for line in f:
        key = line.strip()
        if len(key)>0 and not key[0]=='#': 
            all_keys.append(key)
# Add all other possible keys
for profile in all_profiles:
    for key in profile.keys():
        if not key in all_keys:
            all_keys.append(key)
# Generate Org-mode table
header = "|Feature"
delimeter = "|--"
for profile in all_profiles:
    header += '|'+profile[all_keys[0]]
    delimeter += "+--"
header += "|"
delimeter += "|"

all_table = header + "\n" + delimeter + "\n"
for key in all_keys[1:]:
    if not key[-1]==':':
        all_table += "| *"+key+"* \n"
        continue
    all_table += "|"+key
    for profile in all_profiles:
        value = profile.get(key)
        if not value==None:
            all_table += "|"+value
        else:
            all_table += "|  "
    all_table += "|\n"
os.system("git rev-parse HEAD > hash.tmp")
hash=""
with open("hash.tmp") as f:
        for line in f:            
                hash += line.strip()
print(hash)
disclaimer = "\n** Overview\n This is an [[https://github.com/kostyfisik/FEA-compare][auto generated comparison]] from manually filled `*.profiles` for FEA software. It is also available in HTML format [[https://cdn.rawgit.com/kostyfisik/FEA-compare/"+hash+"/table.html][preview 1]] (fast and correct rendering of html table from previous commit), [[http://htmlpreview.github.io/?https://github.com/kostyfisik/FEA-compare/blob/master/table.html][preview 2]] (a bit slow, had problems with Firefox, usually current commit) with first row and *Feature* column being fixed for ease of table exploration. Profiles in table are sorted with the number of filled keys.\n\n** Profile format\n Profile is read line-by-line.  Any string before semicolon ':' is treated as a key, the other part till the end of the line as value. Lines without semicolon are ignored, comments should start with hash '#' in the begging of the line.  main-keys.txt file contains keys in order to be listed first, all other keys from all profiles are lister afterwards. Key are always carried with semicolon, table group names are not (for visual ease they are four spaces indented).\nUse generate-comparison.py to generate a table from profiles, you will need to install `org-ruby` gem to convert it into HTML format (use `sudo gem install org-ruby` in Ubuntu linux to install this gem). \n\n** Contribution\n Fill free to contribute! There is still a lot of codes, not compared it the table, e.g: MFEM, NgSolve, CalculiX and Salomé + Code_Saturne, ANSYS, NASTRAN, CFD-ACE+, COSMOSWORKS. Comsol(R) description is poor. \n\n"
with open('README.org', "w") as myfile:
    myfile.write(disclaimer+all_table)

#print(all_profiles)
import os

os.system("cat style.txt > table.tmp")

with open('tmp.org', "w") as myfile:
    myfile.write(all_table)
                        
# sudo gem install org-ruby
os.system("org-ruby --translate html    tmp.org >> table.tmp")

with open('tmp.org', "w") as myfile:
    myfile.write(disclaimer)

# sudo gem install org-ruby
os.system("org-ruby --translate html    tmp.org >> table.tmp")

os.system('echo "</body></html>" >> table.tmp')

count = 1
with open('table.html', 'w') as new_f:
    with open("table.tmp") as f:
        for line in f:            
            if '<table>' in line:
                line = '        <div class="outerbox">\n            <div class="innerbox">\n                <table class="bluetable" id="myDemoTable" cellpadding="0" cellspacing="0">\n         <thead>\n'
            if '<th>' in line:
                line += '\n</thead>\n<tbody>\n'
            if '</table>' in line:
                line = "</tbody>\n</table>\n</div></div>\n"
            new_f.write(line)

os.system('rm -f *.tmp')
os.system('rm -f tmp.org')

# Generate Mediawiki table (for Wikipedia)
header = '{| class="wikitable"\n|-\n! Feature\n'
for profile in all_profiles:
    header += '!'+profile[all_keys[0]]+'\n'
header += "|-"

all_table = header + "\n"
for key in all_keys[1:]:
    if not key[-1]==':':
        all_table += """| colspan="100500" | '''"""+key+"""''' \n|-\n"""
        continue
    all_table += "| "+key+"\n" 
    for profile in all_profiles:
        value = profile.get(key)
        value = str(value).replace("]["," ").replace("[[","[").replace("]]","]")
        if not value=="None":
            all_table += "| "+value+"\n"
        else:
            all_table += "|"+"\n"
    all_table += "|-\n"
all_table = all_table[:-2]+"}\n"
with open('tmp.wiki', "w") as myfile:
    myfile.write(all_table)
    
