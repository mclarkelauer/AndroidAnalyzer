__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Example analysis
'''

name = "EmptyAnalysisRoutine"
description = "Does Nothing"
result = "No Results"
enabled = True

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "add result of analysis to result dictionary"
    #results["Empty Analysis"] = result
    return results

def run(dependencies,classes):
    " run analysis routine "
    pass


