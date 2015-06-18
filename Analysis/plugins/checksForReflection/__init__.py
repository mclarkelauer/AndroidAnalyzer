__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "checksForReflection"
description = "Determines whether reflection is used"
enabled = False

result = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Uses Reflection"] = result
    return results

def run(classes, dependencies, sharedobjs):
    global result
    log.info("Analysis: Reflection Check")
    for d in dependencies["internal"]:
        if d.startswith("java/lang/reflect"):
            result = True

