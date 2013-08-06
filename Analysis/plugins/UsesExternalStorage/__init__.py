__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
import analysisUtils

name = "UsesExternalStorage"
description = "Determines whether external storage is used"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Uses External Storage"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: External Storage Check")
    if analysisUtils.findInvocationSites(classes,"getExternalStorageDirectory").__len__ > 0:
        result = True
    result = False

