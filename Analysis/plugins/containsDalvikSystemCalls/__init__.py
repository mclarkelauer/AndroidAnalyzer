__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "containsDalvikSystemCalls"
description = "Checks for Dalvik system calls"

result = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
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



