__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

name = "EmptyAnalysisRoutine"
description = "Does Nothing"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Empty Analysis"] = result
    return results

def run(dependencies,classes):
    pass


