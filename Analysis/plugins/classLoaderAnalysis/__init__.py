__author__ = 'Matt Clarke-Lauer'
__email__ = 'matt@clarkelauer.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log

name = "classLoaderAnalysis"
description = "Checks if class loaders are used"
enabled = False

result = False

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Uses Class Loaders"] = result
    return results

def run(classes, dependencies, sharedobjs):
    global result
    log.info("Analysis: Class Loader Check")
    for cl in classes:
        if classes[cl]['Loader']:
            result = True

