__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 7 / 8 / 13

__version__ = '0.1'
__status__ = 'Development'

import pickle

libs = pickle.load(open("libs.p","rb"))
libs = list(set(libs))
libs.sort()
for l in libs:
    print l

