__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
from Analysis import analysisUtils

name = "findStringEncryption"
description = "Checks if possible custom string decryption is used"
enabled = False

result = "Unknown"

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    global result
    #results["Uses possible string decryption"] = result
    return results

def run(classes, dependencies, sharedobjs):
    log.info("Analysis: String Decryption Check")
    methodParams = {'Returns':'Ljava/lang/String;','Parameters':'Ljava/lang/String;'}
    methods = analysisUtils.findFunctionsBySignature(classes,methodParams)
    for m in methods:
        analysisUtils.findInvocationSites(classes,m)

