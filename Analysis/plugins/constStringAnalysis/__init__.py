__author__ = 'Matt Clarke-Lauer'
__email__ = 'mcl@ccs.neu.edu'
__credits__ = ['Matt Clarke-Lauer']
__date__ = 8 / 1 / 13

__version__ = '0.1'
__status__ = 'Development'

import log
from Analysis import analysisUtils

name = "constStringAnalysis"
description = "Gets Const Strings"

result = {}

def getName():
    return name

def getDescription():
    return description

def getResults(results):
    results["Const Strings"] = result
    return results

def run(dependencies,classes):
    global result
    log.info("Analysis: Const String URLs/IPs/uncategorized")
    constStrings = analysisUtils.getConstStrings(classes)
    urlStrings = []
    IPStrings = []
    uncategorizedStrings = []
    for s in constStrings:
        if analysisUtils.is_valid_url(s):
            urlStrings.append(s)
        elif analysisUtils.valid_ip(s):
            IPStrings.append(s)
        else:
            uncategorizedStrings.append(s)
    result = {"URLs":urlStrings,
             "IPs":IPStrings,
             "Uncategorized":uncategorizedStrings}
