# Copyright (C) 2022 Greenweaves Software Limited

# This is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>

'''
Extract master list of cancers from raw data.
'''
from os.path import join

def get_raw_data(path = r'..\Data_Files',
                file = 'all_data_raw.txt'):
    '''
    This generator iterates through the raw data file, skipping over the header,
    and stripping line terminators
    '''
    isHeader = True
    with open(join(path,file)) as f:
        for line in f:
            yield(isHeader,line.strip().split('\t'))
            isHeader = False

if __name__=='__main__':
    cancers = set()
    for isHeader,fields in get_raw_data():
        if isHeader: continue
        cancers.add(fields[3].replace('"',''))
    with open('cancers.txt','w') as out:
        for cancer in sorted(cancers):
            out.write (f'{cancer}\n')
