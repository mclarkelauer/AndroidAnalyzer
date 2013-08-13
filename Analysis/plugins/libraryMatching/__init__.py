__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
import libraryList

name = "libraryMatching"
description = "Gets packages in application"

result = []

# TODO: update library list and add more detailed string names

def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    results["Packages in Application"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Application Packages Check")
    libs = []
    for d in dependencies["all"]:
        for l in libraryList.libs:
            if d.startswith(l) and \
                not any(a['name'] == l for a in libs):
                libs.append({"name":l,
                             "type":libraryList.libs[l]})
    result = libs