__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "libraryApisUsed"
description = "Gets the used library apis"

result = []

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Library Apis Used"] = result
    return results

def run(classes, dependencies, sharedobjs):
    global result
    log.info("Analysis: Library Api Check")
    result = dependencies["internal"]
