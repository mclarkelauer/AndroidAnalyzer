__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "containsDalvikSystemCalls"
description = "Checks for Dalvik system calls"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Contains Dalvik System Calls"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Dalvik System Call Check")
    for d in dependencies["all"]:
        if d.startswith("dalvik"):
            result = True
    result = False


