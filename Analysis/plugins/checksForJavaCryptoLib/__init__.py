__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "checksForJavaCryptoLib"
description = "Determines whether a Java crypto library is used"

result = "No Results"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Uses Java Crypto Library"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Java Crypto Libs")
    for d in dependencies["internal"]:
        if d.startswith("javax/crypto"):
            result = True
    result = False
