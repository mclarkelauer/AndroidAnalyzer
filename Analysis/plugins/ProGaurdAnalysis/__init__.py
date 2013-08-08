__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 8 / 13

__version__ = '0.1'
__status__ = 'Development'

name = "ProGaurd Analysis"
description = "Heuristic Based ProGaurd Detection"

result = "False"

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    global result
    results["Uses ProGaurd Obfuscation"] = result
    return results

def run(dependencies,classes):
    global result
    for c in classes:
        for m in classes[c]['Methods']:
            print m["MethodName"]
            if m["MethodName"].startswith("a("):
                result = "True"
                break

