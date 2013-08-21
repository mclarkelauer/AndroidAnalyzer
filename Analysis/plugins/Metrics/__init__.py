__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Example analysis
'''

name = "Class Metrics"
description = "Collect number of class metrics"
result = {}

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "add result of analysis to result dictionary"
    results["Class Metrics"]=result
    return results

def run(dependencies,classes):
    for c in classes:
        result[c] = classes[c]["Metrics"]


