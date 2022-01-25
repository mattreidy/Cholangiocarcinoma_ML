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

from os.path           import join


if __name__=='__main__':
    cancers = set()
    with open(join(r'..\Data_Files','all_data_raw.txt')) as f, \
         open('cancers.txt','w') as out:
        for line in f:
            fields = line.strip().split('\t')
            cancers.add(fields[3].replace('"',''))
        for cancer in sorted(cancers):
            out.write (f'{cancer}\n')
