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

from os.path import     join
from listCancers import get_raw_data

class Cholangiocarcinoma:
    dictionary = {}
    CHOL       = 0
    EHCH       = CHOL + 1
    IHCH       = EHCH + 1

    @classmethod
    def add(cls,cholangiocarcinoma):
        Cholangiocarcinoma.dictionary[cholangiocarcinoma.name] = cholangiocarcinoma

    @classmethod
    def get(cls,key):
        if key in Cholangiocarcinoma.dictionary:
            return Cholangiocarcinoma.dictionary[key]
        else:
            return None

    @classmethod
    def build(cls):
        Cholangiocarcinoma('CHOL')
        Cholangiocarcinoma('Cholangiocarcinoma')
        Cholangiocarcinoma('Cholangio Extrahepatic',
                           specificity = 1,
                           group       = Cholangiocarcinoma.EHCH)
        Cholangiocarcinoma('Cholangio Intrahepatic',
                           specificity = 1,
                           group       = Cholangiocarcinoma.IHCH)
        Cholangiocarcinoma('EHCH',
                           specificity = 1,
                           group       = Cholangiocarcinoma.EHCH)
        Cholangiocarcinoma('Extrahepatic Cholangiocarcinoma',
                           specificity = 1,
                           group       = Cholangiocarcinoma.EHCH)
        Cholangiocarcinoma('Intrahepatic Cholangiocarcinoma',
                           specificity = 1,
                           group       = Cholangiocarcinoma.IHCH)
        Cholangiocarcinoma('Hepatocellular Carcinoma plus Intrahepatic Cholangiocarcinoma',
                           specificity = 2,
                           group       = Cholangiocarcinoma.IHCH)
        Cholangiocarcinoma('Perihilar Cholangiocarcinoma',
                           specificity = 2,
                           group       = Cholangiocarcinoma.EHCH)
        Cholangiocarcinoma('IHCH',
                           specificity = 1,
                           group       = Cholangiocarcinoma.IHCH)

    def __init__(self,name,specificity=0,group=CHOL):
        self.name        = name
        self.specificity = specificity
        self.group       = group
        Cholangiocarcinoma.add(self)

    def __str__(self):
        return self.name

class RecordAccumulator:
    def __init__(self):
        self.cancer_type = None

    def accumulate(self,fields):
        cholangiocarcinoma = Cholangiocarcinoma.get(fields[3])
        if cholangiocarcinoma == None: return
        if self.cancer_type == None:
            self.cancer_type = cholangiocarcinoma
        else:
            if cholangiocarcinoma.specificity>self.cancer_type.specificity:
                self.cancer_type = cholangiocarcinoma
            elif cholangiocarcinoma.specificity==self.cancer_type.specificity:
                if self.cancer_type.group != cholangiocarcinoma.group:
                    print (fields[0],self.cancer_type,cholangiocarcinoma)
    def consolidate(self):
        # if self.cancer_type != None:
            # print (self.cancer_type)
        self.cancer_type = None

if __name__=='__main__':
    Cholangiocarcinoma.build()
    accumulator = RecordAccumulator()
    record_id = None
    for isHeader,fields in get_raw_data():
        if isHeader:
            pass
        else:
            if record_id==fields[0]:
                accumulator.accumulate(fields)
            else:
                accumulator.consolidate()
                record_id   = fields[0]
                accumulator.accumulate(fields)

    accumulator.consolidate()


