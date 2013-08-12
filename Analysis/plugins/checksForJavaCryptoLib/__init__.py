__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "checksForJavaCryptoLib"
description = "Determines whether a Java crypto library is used"

result = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
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
