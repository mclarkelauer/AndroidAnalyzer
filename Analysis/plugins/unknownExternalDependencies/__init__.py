__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "unknownExternalDependencies"
description = "Gets Unknown External Dependencies"
enabled = False


result = []

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Unknown External Dependencies"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Unknown External Dependencies Check")
    result = dependencies["unknown"]
