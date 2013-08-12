__author__ = 'Matt Clarke-Lauer'
__email__ = 'mclarkelauer@reversinglabs.com'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

'''
Storage Usage Analysis
----------------------
Matches method invocations with storage lookups
'''

import log
from Analysis import analysisUtils

name = "Storage Usage Analysis"
description = "Analysis on storage usage"

result = {}


def getName():
    "return analysis name"
    return name

def getDescription():
    "return analysis description"
    return description

def getResults(results):
    "return results"
    results["Storage Uses"] = result
    return results

def usesExternalStorage(classes):
    global result
    if analysisUtils.findInvocationSites(classes,"getExternalStorageDirectory").__len__ > 0 or \
       analysisUtils.findInvocationSites(classes,"getExternalStoragePublicDirectory").__len__ > 0 :
        result["External Storage"] = True

def usesDataDir(classes):
    global result
    if analysisUtils.findInvocationSites(classes,"getDataDirectory").__len__ > 0:
        result["Data Directory"] = True

def usesCache(classes):
    global result
    if analysisUtils.findInvocationSites(classes,"getDownloadCacheDirectory").__len__ > 0:
        result["Download/Cache Directory"] = True


def usesRoot(classes):
    global result
    if analysisUtils.findInvocationSites(classes,"getRootDirectory").__len__ > 0:
        result["Root"] = True

def run(dependencies,classes):
    global result
    log.info("Analysis: Storage Check")
    usesExternalStorage(classes)
    usesDataDir(classes)
    usesCache(classes)
    usesRoot(classes)


