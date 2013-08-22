from __future__ import division
import math

__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Example analysis
'''

name = "Calculate String Entropy"
description = "Calcualtes the average string entropy for a class and its methods"
result = {}

def hist(source):
    hist = {}; l = 0;
    for e in source:
        l += 1
        if e not in hist:
            hist[e] = 0
        hist[e] += 1
    return (l,hist)

def entropy(hist,l):
    elist = []
    for v in hist.values():
        c = v / l
        elist.append(-c * math.log(c ,2))
    return sum(elist)

"""
source = "1223334444"
(l,h) = hist(source);
print '.[Results].'
print 'Length',l
print 'Entropy:', entropy(h, l)
printHist(h)
"""
def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "add result of analysis to result dictionary"
    results["Entropy Analysis"] = result
    return results

def run(dependencies,classes):
    global result
    for c in classes:
        (l,h) = hist(c[1:].split('/')[-1])
        result[c] = {}
        result[c]["class"] = entropy(h,l)
        # Method name calculation and statistics


    pass


