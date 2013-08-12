__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
from Analysis import analysisUtils

name = "checksForNetworkConnections"
description = "Determines whether network connection is checked"

result = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Checks for Network Connection"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Network Connection Check")
    if analysisUtils.findInvocationSites(classes,"getActiveNetworkInfo").__len__ > 0 or \
       analysisUtils.findInvocationSites(classes,"isConnectedOrConnecting").__len__ > 0:
        result = True


