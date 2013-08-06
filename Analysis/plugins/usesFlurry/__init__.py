__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "usesFlurry"
description = "Determines whether Flurry is used"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Uses Flurry"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Flurry Check")
    for d in dependencies["all"]:
        if "flurry" in d:
            result = True
    result = False
