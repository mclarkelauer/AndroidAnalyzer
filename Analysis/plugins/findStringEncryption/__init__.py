__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
from Analysis import analysisUtils

name = "findStringEncryption"
description = "Checks if possible string decryption is used"

result = "Unknown"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Uses possible string decryption"] = result
    return results

def run(dependencies,classes):
    log.info("Analysis: String Decryption Check")
    methodParams = {'Returns':'Ljava/lang/String;','Parameters':'Ljava/lang/String;'}
    methods = analysisUtils.findFunctionsBySignature(classes,methodParams)
    for m in methods:
        analysisUtils.findInvocationSites(classes,m)

