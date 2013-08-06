__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "unknownExternalDependencies"
description = "Gets Unknown External Dependencies"

result = []

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Unknown External Dependencies"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Unknown External Dependencies Check")
    result = dependencies["unknown"]
