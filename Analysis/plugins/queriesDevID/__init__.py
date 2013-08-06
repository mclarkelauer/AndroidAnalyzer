__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
import analysisUtils

name = "queriesDevID"
description = "Determines whether the device ID is queried"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Queries Device ID"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Device ID Query Check")
    if analysisUtils.findInvocationSites(classes,"getDeviceId").__len__ > 0:
        result = True
    result = False
