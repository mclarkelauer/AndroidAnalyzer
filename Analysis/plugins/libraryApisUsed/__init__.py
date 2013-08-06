__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "libraryApisUsed"
description = "Gets the used library apis"

result = []

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Library Apis Used"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Library Api Check")
    result = dependencies["internal"]
