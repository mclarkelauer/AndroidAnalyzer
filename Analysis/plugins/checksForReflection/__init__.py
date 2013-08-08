__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "checksForReflection"
description = "Determines whether reflection is used"

result = False

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Uses Reflection"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Reflection Check")
    for d in dependencies["internal"]:
        if d.startswith("java/lang/reflect"):
            result = True

