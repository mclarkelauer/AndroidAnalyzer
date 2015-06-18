__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 8 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Obfuscation Analysis Routines
-----------------------------
Detects proguard based obfuscations using name heuristics

Method : proguard does method obfuscations using a sequence of
strings starting at 'a'. If we see an 'a' method, it is either
or a lazy programmer who.
'''

import log
import math

name = "Obfuscation Analysis"
description = "Heuristic Based Obfuscation Detection"


result = {"Contains Obfuscation":False,
          "Obfuscator": []}

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "add result to dictionary"
    global result
    results["Obfuscation Analysis"] = result
    return results

def calcEntropy(s):
    "Calculates the Shannon entropy of a string"
    # get probability of chars in string
    prob = [ float(s.count(c)) / len(s) for c in dict.fromkeys(list(s)) ]
    # calculate the entropy
    entropy = - sum([ p * math.log(p) / math.log(2.0) for p in prob])
    return entropy

def detectProGuard(classes):
    " Search for proguard using method name heuristic"
    global result
    log.info("Analysis: Obfuscation Analysis")
    for c in classes:
        for m in classes[c]['Methods']:
            if m["MethodName"].startswith("a("):
                if "ProGuard" not in result["Obfuscator"]:
                    result["Obfuscator"].append("ProGuard")
                    result['Contains Obfuscation'] = True


def EntropyBasedDetection(classes):
    "Calculate average entropy of class and method names"
    global result
    log.info("Analysis: Obfuscation Analysis")
    methodNameEntropy = []
    classNameEntropy = []
    for c in classes:
        ent = calcEntropy(c)
        classNameEntropy.append(ent)
        for m in classes[c]['Methods']:
            ent = calcEntropy(m['MethodName'])
            methodNameEntropy.append(ent)
    methodAverage = reduce(lambda x, y: x + y, methodNameEntropy) / len(methodNameEntropy)
    classAverage = reduce(lambda x, y: x + y, classNameEntropy) / len(classNameEntropy)
    # TODO : Run on dexguard applications and determine numerical heuristic
    # TODO (Michael): we need a histogram instead of check for a/b/c



def run(classes, dependencies, sharedobjs):
    detectProGuard(classes)
    #EntropyBasedDetection(classes) #Entropy based detection is a work in progress

