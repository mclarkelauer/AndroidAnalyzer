__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "classLoaderAnalysis"
description = "Checks if class loaders are used"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Uses Class Loaders"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Class Loader Check")
    for cl in classes:
        if classes[cl]['Loader']:
            result = True
    result = False

